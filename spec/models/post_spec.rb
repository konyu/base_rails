require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "#sample" do
    it "first test" do
      expect(Post.new.sample).to eq("SAMPLE")
    end
  end
end
