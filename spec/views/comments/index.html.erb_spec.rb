# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/index', type: :view do
  before(:each) do
    assign(:comments, [
             Comment.create!(
               name: 'Name',
               post: nil
             ),
             Comment.create!(
               name: 'Name',
               post: nil
             )
           ])
  end

  it 'renders a list of comments' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
