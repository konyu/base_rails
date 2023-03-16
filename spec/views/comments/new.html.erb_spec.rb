# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/new', type: :view do
  before(:each) do
    assign(:comment, Comment.new(
                       name: 'MyString',
                       post: nil
                     ))
  end

  it 'renders new comment form' do
    render

    assert_select 'form[action=?][method=?]', comments_path, 'post' do
      assert_select 'input[name=?]', 'comment[name]'

      assert_select 'input[name=?]', 'comment[post_id]'
    end
  end
end
