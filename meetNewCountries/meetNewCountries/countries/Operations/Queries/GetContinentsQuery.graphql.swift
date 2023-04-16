// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension Countries {
  class GetContinentsQuery: GraphQLQuery {
    public static let operationName: String = "getContinents"
    public static let document: ApolloAPI.DocumentType = .notPersisted(
      definition: .init(
        #"""
        query getContinents {
          continents {
            __typename
            code
            name
          }
        }
        """#
      ))

    public init() {}

    public struct Data: Countries.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Query }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("continents", [Continent?]?.self),
      ] }

      public var continents: [Continent?]? { __data["continents"] }

      /// Continent
      ///
      /// Parent Type: `Continent`
      public struct Continent: Countries.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Continent }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("code", String?.self),
          .field("name", String?.self),
        ] }

        public var code: String? { __data["code"] }
        public var name: String? { __data["name"] }
      }
    }
  }

}