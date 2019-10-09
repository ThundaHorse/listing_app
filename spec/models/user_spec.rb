require 'rails_helper' 
require 'simplecov'
SimpleCov.start

RSpec.describe User, type: :model do 
  describe "Verifies a user has an email" do 
    it "should not save a user without an email" do 
      user = User.new
      user.email = '' 
      user.valid?
      user.errors[:email].should_not include("")
    end 
  end 

  describe "Verifies a user has a first name, last name, phone number, and email" do
    it "should save a user with a first name, last name, phone number, and email" do
      user = User.new 
      user.first_name = 'Test' 
      user.last_name = 'Test'
      user.email = 'test@test.com'
      user.phone_number = '000-000-0000' 
      user.save 

      expect(user).to eq(user)
    end 
  end 
end 


