# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :comments, [CommentType], null: true

    def comments
      Loaders::AssociationLoader.for(Post, :comments).load(object)
    end
  end
end
