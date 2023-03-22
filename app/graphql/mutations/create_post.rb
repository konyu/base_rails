# frozen_string_literal: true

module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: true
    argument :name, String, required: true

    def resolve(**args)
      post = Post.create!(args)

      {
        post:
      }
    end
  end
end
