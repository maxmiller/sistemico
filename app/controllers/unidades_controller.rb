class UnidadesController < ApplicationController
  # GET /unidades
  # GET /unidades.json
  def index
    @unidades = Unidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @unidades }
    end
  end

  # GET /unidades/1
  # GET /unidades/1.json
  def show
    @unidade = Unidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @unidade }
    end
  end

  # GET /unidades/new
  # GET /unidades/new.json
  def new
    @unidade = Unidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @unidade }
    end
  end

  # GET /unidades/1/edit
  def edit
    @unidade = Unidade.find(params[:id])
  end

  # POST /unidades
  # POST /unidades.json
  def create
    @unidade = Unidade.new(params[:unidade])

    respond_to do |format|
      if @unidade.save
        format.html { redirect_to @unidade, :notice => 'Unidade was successfully created.' }
        format.json { render :json => @unidade, :status => :created, :location => @unidade }
      else
        format.html { render :action => "new" }
        format.json { render :json => @unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unidades/1
  # PUT /unidades/1.json
  def update
    @unidade = Unidade.find(params[:id])

    respond_to do |format|
      if @unidade.update_attributes(params[:unidade])
        format.html { redirect_to @unidade, :notice => 'Unidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    @unidade = Unidade.find(params[:id])
    @unidade.destroy

    respond_to do |format|
      format.html { redirect_to unidades_url }
      format.json { head :no_content }
    end
  end
end
