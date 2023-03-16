# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#sample' do
    it 'first test' do
      debugger # VSCodeのデバッガでは止まらない
      expect(Post.new.sample).to eq('SAMPLE') # VSCodeのブレークポイントで止まる
      binding.b # VSCodeのデバッガでも止まる
    end
  end
end
