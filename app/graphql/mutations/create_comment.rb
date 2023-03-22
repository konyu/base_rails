# frozen_string_literal: true

module Mutations
  class CreateComment < BaseMutation
    field :comment, Types::CommentType, null: false
    argument :name, String, required: true
    argument :post_id, Integer, required: true

    def resolve(**args)
      comment = Comment.create!(args)

      {
        comment:
      }
    end
  end
end
