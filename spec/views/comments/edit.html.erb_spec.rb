# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/edit', type: :view do
  let(:comment) do
    Comment.create!(
      name: 'MyString',
      post: nil
    )
  end

  before(:each) do
    assign(:comment, comment)
  end

  it 'renders the edit comment form' do
    render

    assert_select 'form[action=?][method=?]', comment_path(comment), 'post' do
      assert_select 'input[name=?]', 'comment[name]'

      assert_select 'input[name=?]', 'comment[post_id]'
    end
  end
end
