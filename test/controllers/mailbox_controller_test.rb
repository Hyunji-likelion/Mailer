require 'test_helper'

class MailboxControllerTest < ActionController::TestCase
  test "should get new_mail" do
    get :new_mail
    assert_response :success
  end

  test "should get send_mail" do
    get :send_mail
    assert_response :success
  end

end
