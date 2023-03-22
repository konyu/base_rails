# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_comment, mutation: Mutations::CreateComment
    field :create_post, mutation: Mutations::CreatePost
  end
end
