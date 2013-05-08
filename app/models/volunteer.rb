class Volunteer < ActiveRecord::Base
  validates_presence_of  	:title,
							:address_1,
							:city,
							:country,
							:county,
							:date_of_birth,
							:email,
							:emergency_contact_name,
							:emergency_contact_phone_number,
							:emergency_contact_relationship,
							:first_name, 
							:last_name,
							:occupation,
							:phone_number_1,
							:phone_type_1,
							:state,
							:zip_code

  attr_accessible :address_1, :address_2, :application_form_received, :application_notes_gain, :application_notes_languages, :application_notes_passion, :application_notes_talents, :background_check, :city, :country, :county, :date_of_birth, :email, :emergency_contact_name, :emergency_contact_phone_number, :emergency_contact_relationship, :first_name, :interest_email_answered, :last_name, :letters_of_recommendation, :love_outreach, :notes, :occupation, :occupation_main_duties, :official_volunteer, :orientation_date, :orientation_location, :orientation_presenter, :phone_number_1, :phone_number_2, :phone_type_1, :phone_type_2, :state, :title, :waiver, :zip_code
end
