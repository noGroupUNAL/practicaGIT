

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "message attributes must not be empty" do
  	message = Message.new
  	assert message.invalid?
  	assert message.errors[:tittle].any?
  	assert message.errors[:description].any?
  end
  test "message is not valid without a unique tittle" do
  	message = Message.new(tittle:messages(:one).tittle,
  		description:messages(:one).description)
  	assert message.invalid?
  	assert_equal ["has already been taken"], message.errors[:tittle]
  end
  test "message is not valid if the description is too short" do
  	message = Message.new(tittle:"This is a tittle", description: "too short")
  	assert message.invalid?
  	assert message.errors[:description].any?
  end
end