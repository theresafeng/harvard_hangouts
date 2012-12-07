class HangoutsController < ApplicationController
  
  # ensure only users can access hangouts
  before_filter :authenticate_user!
  
  # GET /hangouts
  # GET /hangouts.json
  def index
    @hangouts = Hangout.order("start_date_time DESC").page(params[:page]).per(10)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hangouts }
    end
  end

  # GET /hangouts/1
  # GET /hangouts/1.jsonhangout
  def show
    @hangout = Hangout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hangout }
    end
  end

  # GET /hangouts/new
  # GET /hangouts/new.json
  def new
    @hangout = Hangout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hangout }
    end
  end

  # GET /hangouts/1/edit
  def edit
    @hangout = Hangout.find(params[:id])
  end

  # HANGOUT /hangouts
  # HANGOUT /hangouts.json
  def create
    @hangout = Hangout.new(params[:hangout])
    @hangout.user = current_user

    respond_to do |format|
      if @hangout.save
        format.html { redirect_to @hangout, notice: 'Hangout was successfully created.' }
        format.json { render json: @hangout, status: :created, location: @hangout }
      else
        format.html { render action: "new" }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hangouts/1
  # PUT /hangouts/1.json
  def update
    @hangout = Hangout.find(params[:id])

    respond_to do |format|
      if @hangout.update_attributes(params[:hangout])
        format.html { redirect_to @hangout, notice: 'Hangout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hangouts/1
  # DELETE /hangouts/1.json
  def destroy
    @hangout = Hangout.find(params[:id])
    @hangout.destroy

    respond_to do |format|
      format.html { redirect_to hangouts_url }
      format.json { head :no_content }
    end
  end
end
