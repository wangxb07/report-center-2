class ProductOuterMappingsController < ApplicationController
  before_filter :authenticate_user!
  # GET /product_outer_mappings
  # GET /product_outer_mappings.json
  def index
    @product_outer_mappings = ProductOuterMapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @product_outer_mappings }
    end
  end

  # GET /product_outer_mappings/1
  # GET /product_outer_mappings/1.json
  def show
    @product_outer_mapping = ProductOuterMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product_outer_mapping }
    end
  end

  # GET /product_outer_mappings/new
  # GET /product_outer_mappings/new.json
  def new
    @product_outer_mapping = ProductOuterMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product_outer_mapping }
    end
  end

  # GET /product_outer_mappings/1/edit
  def edit
    @product_outer_mapping = ProductOuterMapping.find(params[:id])
  end

  # POST /product_outer_mappings
  # POST /product_outer_mappings.json
  def create
    @product_outer_mapping = ProductOuterMapping.new(params[:product_outer_mapping])

    respond_to do |format|
      if @product_outer_mapping.save
        format.html { redirect_to @product_outer_mapping, :notice => 'Product outer mapping was successfully created.' }
        format.json { render :json => @product_outer_mapping, :status => :created, :location => @product_outer_mapping }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product_outer_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_outer_mappings/1
  # PUT /product_outer_mappings/1.json
  def update
    @product_outer_mapping = ProductOuterMapping.find(params[:id])

    respond_to do |format|
      if @product_outer_mapping.update_attributes(params[:product_outer_mapping])
        format.html { redirect_to @product_outer_mapping, :notice => 'Product outer mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product_outer_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_outer_mappings/1
  # DELETE /product_outer_mappings/1.json
  def destroy
    @product_outer_mapping = ProductOuterMapping.find(params[:id])
    @product_outer_mapping.destroy

    respond_to do |format|
      format.html { redirect_to product_outer_mappings_url }
      format.json { head :no_content }
    end
  end
end
