# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/show', type: :view do
  before(:each) do
    assign(:comment, Comment.create!(
                       name: 'Name',
                       post: nil
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
