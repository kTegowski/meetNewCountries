// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension Countries {
  class GetCountriesByContinentQuery: GraphQLQuery {
    public static let operationName: String = "getCountriesByContinent"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query getCountriesByContinent($code: String) {
          continent(code: $code) {
            __typename
            countries {
              __typename
              name
              code
            }
          }
        }
        """#
      ))

    public var code: GraphQLNullable<String>

    public init(code: GraphQLNullable<String>) {
      self.code = code
    }

    public var __variables: Variables? { ["code": code] }

    public struct Data: Countries.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("continent", Continent?.self, arguments: ["code": .variable("code")]),
      ] }

      public var continent: Continent? { __data["continent"] }

      /// Continent
      ///
      /// Parent Type: `Continent`
      public struct Continent: Countries.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Continent }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("countries", [Country?]?.self),
        ] }

        public var countries: [Country?]? { __data["countries"] }

        /// Continent.Country
        ///
        /// Parent Type: `Country`
        public struct Country: Countries.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Country }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
            .field("code", String?.self),
          ] }

          public var name: String? { __data["name"] }
          public var code: String? { __data["code"] }
        }
      }
    }
  }

}