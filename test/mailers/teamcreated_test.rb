require 'test_helper'

class TeamcreatedTest < ActionMailer::TestCase
  test "mockstock" do
    mail = Teamcreated.mockstock
    assert_equal "Mockstock", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
