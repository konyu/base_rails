# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments

  def sample
    p 'SAMPLE'
  end
end
