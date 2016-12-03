require 'test_helper'

class ClientMailerTest < ActionMailer::TestCase
  test "new_client" do
    mail = ClientMailer.new_client
    assert_equal "New client", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
