class MantenedorasController < ApplicationController
  # GET /mantenedoras
  # GET /mantenedoras.json
  def index
    @mantenedoras = Mantenedora.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mantenedoras }
    end
  end

  # GET /mantenedoras/1
  # GET /mantenedoras/1.json
  def show
    @mantenedora = Mantenedora.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mantenedora }
    end
  end

  # GET /mantenedoras/new
  # GET /mantenedoras/new.json
  def new
    @mantenedora = Mantenedora.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mantenedora }
    end
  end

  # GET /mantenedoras/1/edit
  def edit
    @mantenedora = Mantenedora.find(params[:id])
  end

  # POST /mantenedoras
  # POST /mantenedoras.json
  def create
    @mantenedora = Mantenedora.new(params[:mantenedora])

    respond_to do |format|
      if @mantenedora.save
        format.html { redirect_to @mantenedora, :notice => 'Mantenedora was successfully created.' }
        format.json { render :json => @mantenedora, :status => :created, :location => @mantenedora }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mantenedora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mantenedoras/1
  # PUT /mantenedoras/1.json
  def update
    @mantenedora = Mantenedora.find(params[:id])

    respond_to do |format|
      if @mantenedora.update_attributes(params[:mantenedora])
        format.html { redirect_to @mantenedora, :notice => 'Mantenedora was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mantenedora.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mantenedoras/1
  # DELETE /mantenedoras/1.json
  def destroy
    @mantenedora = Mantenedora.find(params[:id])
    @mantenedora.destroy

    respond_to do |format|
      format.html { redirect_to mantenedoras_url }
      format.json { head :no_content }
    end
  end
end
