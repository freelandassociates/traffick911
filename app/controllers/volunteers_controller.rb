class VolunteersController < ApplicationController
  
  load_and_authorize_resource

  # GET /volunteers
  # GET /volunteers.json
  def index
    # @volunteers = Volunteer.all
    @volunteers = Volunteer.order(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteers }
      format.csv { send_data @volunteers.to_csv }
      format.xls 
    end
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
    # @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/new
  # GET /volunteers/new.json
  def new
    # @volunteer = Volunteer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/1/edit
  def edit
    # @volunteer = Volunteer.find(params[:id])
  end

  # POST /volunteers
  # POST /volunteers.json
  def create
    # @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully created.' }
        format.json { render json: @volunteer, status: :created, location: @volunteer }
      else
        format.html { render action: "new" }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volunteers/1
  # PUT /volunteers/1.json
  def update
    # @volunteer = Volunteer.find(params[:id])

    respond_to do |format|
      if @volunteer.update_attributes(params[:volunteer])
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    # @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy

    respond_to do |format|
      format.html { redirect_to volunteers_url }
      format.json { head :no_content }
    end
  end

  def website_application
    @volunteer = Volunteer.new
    @volunteer.country ="United States"

    respond_to do |format|
      format.html # website_application.html.erb
      format.json { render json: @volunteer }
    end
  end

  def create_website_application
    @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      if @volunteer.save
        # Send email notification..
        VolunteerMailer.new_volunteer(@volunteer).deliver
        # format.html { redirect_to @volunteer, notice: 'Volunteer was successfully created.' }
        format.html { redirect_to '/home/welcome_new_volunteer' }
        format.json { render json: @volunteer, status: :created, location: @volunteer }
      else
        format.html { render 'volunteers/website_application' }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

end
