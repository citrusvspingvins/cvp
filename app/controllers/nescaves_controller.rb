class NescavesController < ApplicationController
  # GET /nescaves
  # GET /nescaves.json
  def index
    @nescaves = Nescafe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nescaves }
    end
  end

  def lol
      nescaves = Nescafe.find(1)
      @res = nescaves.kill
      @nesc = Nescafe.new
      @nesc.name = "World War 2"
      @nesc.email = "1939-1945"
  end

  # GET /nescaves/1
  # GET /nescaves/1.json
  def show
    @nescafe = Nescafe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nescafe }
    end
  end

  # GET /nescaves/new
  # GET /nescaves/new.json
  def new
    @nescafe = Nescafe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nescafe }
    end
  end

  # GET /nescaves/1/edit
  def edit
    @nescafe = Nescafe.find(params[:id])
  end

  # POST /nescaves
  # POST /nescaves.json
  def create
    @nescafe = Nescafe.new(params[:nescafe])

    respond_to do |format|
      if @nescafe.save
        format.html { redirect_to @nescafe, notice: 'Nescafe was successfully created.' }
        format.json { render json: @nescafe, status: :created, location: @nescafe }
      else
        format.html { render action: "new" }
        format.json { render json: @nescafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nescaves/1
  # PUT /nescaves/1.json
  def update
    @nescafe = Nescafe.find(params[:id])

    respond_to do |format|
      if @nescafe.update_attributes(params[:nescafe])
        format.html { redirect_to @nescafe, notice: 'Nescafe was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nescafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nescaves/1
  # DELETE /nescaves/1.json
  def destroy
    @nescafe = Nescafe.find(params[:id])
    @nescafe.destroy

    respond_to do |format|
      format.html { redirect_to nescaves_url }
      format.json { head :ok }
    end
  end
end
