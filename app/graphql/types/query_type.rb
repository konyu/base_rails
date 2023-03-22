# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # QueryTypeに直書きする場合
    # field :posts, [Types::PostType], null: false
    # def posts
    #   Post.all
    # end
    # resolverクラスで定義する場合
    field :posts, resolver: Resolvers::PostConnectionResolver
  end
end
