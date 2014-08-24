class VolunteerMailer < ActionMailer::Base
  default from: "donotreply@traffick911.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.volunteer_mailer.new_volunteer.subject
  #
  def new_volunteer(volunteer)
    @volunteer = volunteer 

    mail to: "volunteer@traffick911.com", cc: "paul.simpsonparry@freelandassociates.com", subject: "New Volunteer Website Signup"
    # mail to: "paulsimpsonparry@gmail.com", cc: "paul.simpsonparry@freelandassociates.com", subject: "New Volunteer Website Signup"
  end
end
