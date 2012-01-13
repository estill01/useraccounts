require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "activation_needed" do
    mail = UserMailer.activation_needed
    assert_equal "Activation needed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "activation_success" do
    mail = UserMailer.activation_success
    assert_equal "Activation success", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "reset_password" do
    mail = UserMailer.reset_password
    assert_equal "Reset password", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
