// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol Countries_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == Countries.SchemaMetadata {}

public protocol Countries_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == Countries.SchemaMetadata {}

public protocol Countries_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == Countries.SchemaMetadata {}

public protocol Countries_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == Countries.SchemaMetadata {}

public extension Countries {
  typealias ID = String

  typealias SelectionSet = Countries_SelectionSet

  typealias InlineFragment = Countries_InlineFragment

  typealias MutableSelectionSet = Countries_MutableSelectionSet

  typealias MutableInlineFragment = Countries_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Query": return Countries.Objects.Query
      case "Continent": return Countries.Objects.Continent
      case "Country": return Countries.Objects.Country
      case "Language": return Countries.Objects.Language
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}