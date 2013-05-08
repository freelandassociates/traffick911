class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :county
      t.string :state
      t.string :country
      t.string :zip_code
      t.date :date_of_birth
      t.string :phone_number_1
      t.string :phone_type_1
      t.string :phone_number_2
      t.string :phone_type_2
      t.string :email
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_phone_number
      t.string :occupation
      t.text :occupation_main_duties
      t.text :application_notes_talents
      t.text :application_notes_languages
      t.text :application_notes_passion
      t.text :application_notes_gain
      t.string :love_outreach
      t.date :official_volunteer
      t.date :interest_email_answered
      t.date :orientation_date
      t.string :orientation_location
      t.string :orientation_presenter
      t.date :application_form_received
      t.date :background_check
      t.string :letters_of_recommendation
      t.string :waiver
      t.text :notes

      t.timestamps
    end
  end
end
