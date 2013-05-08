require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { address_1: @volunteer.address_1, address_2: @volunteer.address_2, application_form_received: @volunteer.application_form_received, application_notes_gain: @volunteer.application_notes_gain, application_notes_languages: @volunteer.application_notes_languages, application_notes_passion: @volunteer.application_notes_passion, application_notes_talents: @volunteer.application_notes_talents, background_check: @volunteer.background_check, city: @volunteer.city, country: @volunteer.country, county: @volunteer.county, date_of_birth: @volunteer.date_of_birth, email: @volunteer.email, emergency_contact_name: @volunteer.emergency_contact_name, emergency_contact_phone_number: @volunteer.emergency_contact_phone_number, emergency_contact_relationship: @volunteer.emergency_contact_relationship, first_name: @volunteer.first_name, interest_email_answered: @volunteer.interest_email_answered, last_name: @volunteer.last_name, letters_of_recommendation: @volunteer.letters_of_recommendation, love_outreach: @volunteer.love_outreach, notes: @volunteer.notes, occupation: @volunteer.occupation, occupation_main_duties: @volunteer.occupation_main_duties, official_volunteer: @volunteer.official_volunteer, orientation_date: @volunteer.orientation_date, orientation_location: @volunteer.orientation_location, orientation_presenter: @volunteer.orientation_presenter, phone_number_1: @volunteer.phone_number_1, phone_number_2: @volunteer.phone_number_2, phone_type_1: @volunteer.phone_type_1, phone_type_2: @volunteer.phone_type_2, state: @volunteer.state, title: @volunteer.title, waiver: @volunteer.waiver, zip_code: @volunteer.zip_code }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    put :update, id: @volunteer, volunteer: { address_1: @volunteer.address_1, address_2: @volunteer.address_2, application_form_received: @volunteer.application_form_received, application_notes_gain: @volunteer.application_notes_gain, application_notes_languages: @volunteer.application_notes_languages, application_notes_passion: @volunteer.application_notes_passion, application_notes_talents: @volunteer.application_notes_talents, background_check: @volunteer.background_check, city: @volunteer.city, country: @volunteer.country, county: @volunteer.county, date_of_birth: @volunteer.date_of_birth, email: @volunteer.email, emergency_contact_name: @volunteer.emergency_contact_name, emergency_contact_phone_number: @volunteer.emergency_contact_phone_number, emergency_contact_relationship: @volunteer.emergency_contact_relationship, first_name: @volunteer.first_name, interest_email_answered: @volunteer.interest_email_answered, last_name: @volunteer.last_name, letters_of_recommendation: @volunteer.letters_of_recommendation, love_outreach: @volunteer.love_outreach, notes: @volunteer.notes, occupation: @volunteer.occupation, occupation_main_duties: @volunteer.occupation_main_duties, official_volunteer: @volunteer.official_volunteer, orientation_date: @volunteer.orientation_date, orientation_location: @volunteer.orientation_location, orientation_presenter: @volunteer.orientation_presenter, phone_number_1: @volunteer.phone_number_1, phone_number_2: @volunteer.phone_number_2, phone_type_1: @volunteer.phone_type_1, phone_type_2: @volunteer.phone_type_2, state: @volunteer.state, title: @volunteer.title, waiver: @volunteer.waiver, zip_code: @volunteer.zip_code }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end
