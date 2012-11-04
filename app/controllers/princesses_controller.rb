class PrincessesController < ApplicationController
  # GET /princesses
  # GET /princesses.json
  def index
    @princesses = Princess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @princesses }
    end
  end

  # GET /princesses/1
  # GET /princesses/1.json
  def show
    @princess = Princess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @princess }
    end
  end

  # GET /princesses/new
  # GET /princesses/new.json
  def new
    @princess = Princess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @princess }
    end
  end

  # GET /princesses/1/edit
  def edit
    @princess = Princess.find(params[:id])
  end

  # POST /princesses
  # POST /princesses.json
  def create
    @princess = Princess.new(params[:princess])

    respond_to do |format|
      if @princess.save
        format.html { redirect_to @princess, notice: 'Princess was successfully created.' }
        format.json { render json: @princess, status: :created, location: @princess }
      else
        format.html { render action: "new" }
        format.json { render json: @princess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /princesses/1
  # PUT /princesses/1.json
  def update
    @princess = Princess.find(params[:id])

    respond_to do |format|
      if @princess.update_attributes(params[:princess])
        format.html { redirect_to @princess, notice: 'Princess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @princess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /princesses/1
  # DELETE /princesses/1.json
  def destroy
    @princess = Princess.find(params[:id])
    @princess.destroy

    respond_to do |format|
      format.html { redirect_to princesses_url }
      format.json { head :no_content }
    end
  end
end
