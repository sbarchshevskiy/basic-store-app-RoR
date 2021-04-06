
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    user = User.new(email: "testing@test.com", password: "test", password_confirmation: "test")

    it "should have an email" do
      expect(user.email).not_to be_empty
    end

    it "should have a password" do
      expect(user.password).not_to be_empty
    end

    it "should have both confirm and original passwords mathcing" do
      expect(user.password).to eq("test")
    end

  end
end