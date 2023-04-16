// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension Countries {
  class GetInfoByCountryQuery: GraphQLQuery {
    public static let operationName: String = "getInfoByCountry"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query getInfoByCountry($code: String) {
          country(code: $code) {
            __typename
            emoji
            languages {
              __typename
              name
            }
            name
            native
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
        .field("country", Country?.self, arguments: ["code": .variable("code")]),
      ] }

      public var country: Country? { __data["country"] }

      /// Country
      ///
      /// Parent Type: `Country`
      public struct Country: Countries.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Country }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("emoji", String?.self),
          .field("languages", [Language?]?.self),
          .field("name", String?.self),
          .field("native", String?.self),
        ] }

        public var emoji: String? { __data["emoji"] }
        public var languages: [Language?]? { __data["languages"] }
        public var name: String? { __data["name"] }
        public var native: String? { __data["native"] }

        /// Country.Language
        ///
        /// Parent Type: `Language`
        public struct Language: Countries.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Language }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
          ] }

          public var name: String? { __data["name"] }
        }
      }
    }
  }

}