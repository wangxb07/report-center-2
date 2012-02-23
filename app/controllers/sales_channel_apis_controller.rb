class SalesChannelApisController < ApplicationController
  before_filter :authenticate_user!

  # GET /sales_channel_apis
  # GET /sales_channel_apis.json
  def index
    @sales_channel_apis = SalesChannelApi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sales_channel_apis }
    end
  end

  # GET /sales_channel_apis/1
  # GET /sales_channel_apis/1.json
  def show
    @sales_channel_api = SalesChannelApi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sales_channel_api }
    end
  end

  # GET /sales_channel_apis/new
  # GET /sales_channel_apis/new.json
  def new
    @sales_channel = SalesChannel.find(params[:sales_channel_id])
    # @sales_channel_api = @sales_channel.sales_channel_apis.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sales_channel_api }
    end
  end

  # GET /sales_channel_apis/1/edit
  def edit
    @sales_channel_api = SalesChannelApi.find(params[:id])
  end

  # POST /sales_channel_apis
  # POST /sales_channel_apis.json
  def create
    @sales_channel_api = SalesChannelApi.new(params[:sales_channel_api])

    respond_to do |format|
      if @sales_channel_api.save
        format.html { redirect_to @sales_channel_api, :notice => 'Sales channel api was successfully created.' }
        format.json { render :json => @sales_channel_api, :status => :created, :location => @sales_channel_api }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sales_channel_api.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sales_channel_apis/1
  # PUT /sales_channel_apis/1.json
  def update
    @sales_channel_api = SalesChannelApi.find(params[:id])

    respond_to do |format|
      if @sales_channel_api.update_attributes(params[:sales_channel_api])
        format.html { redirect_to @sales_channel_api, :notice => 'Sales channel api was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sales_channel_api.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_channel_apis/1
  # DELETE /sales_channel_apis/1.json
  def destroy
    @sales_channel_api = SalesChannelApi.find(params[:id])
    @sales_channel_api.destroy

    respond_to do |format|
      format.html { redirect_to sales_channel_apis_url }
      format.json { head :no_content }
    end
  end
end
