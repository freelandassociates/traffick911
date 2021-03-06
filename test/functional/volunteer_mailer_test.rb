require 'test_helper'

class VolunteerMailerTest < ActionMailer::TestCase
  test "new_volunteer" do
    mail = VolunteerMailer.new_volunteer
    assert_equal "New volunteer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
