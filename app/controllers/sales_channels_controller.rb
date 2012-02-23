class SalesChannelsController < ApplicationController
  before_filter :authenticate_user!

  # GET /sales_channels
  # GET /sales_channels.json
  def index
    @sales_channels = SalesChannel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sales_channels }
    end
  end

  # GET /sales_channels/1
  # GET /sales_channels/1.json
  def show
    @sales_channel = SalesChannel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sales_channel }
    end
  end

  # GET /sales_channels/new
  # GET /sales_channels/new.json
  def new
    @sales_channel = SalesChannel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sales_channel }
    end
  end

  # GET /sales_channels/1/edit
  def edit
    @sales_channel = SalesChannel.find(params[:id])
  end

  # POST /sales_channels
  # POST /sales_channels.json
  def create
    @sales_channel = SalesChannel.new(params[:sales_channel])

    respond_to do |format|
      if @sales_channel.save
        format.html { redirect_to @sales_channel, :notice => 'Sales channel was successfully created.' }
        format.json { render :json => @sales_channel, :status => :created, :location => @sales_channel }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sales_channel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sales_channels/1
  # PUT /sales_channels/1.json
  def update
    @sales_channel = SalesChannel.find(params[:id])

    respond_to do |format|
      if @sales_channel.update_attributes(params[:sales_channel])
        format.html { redirect_to @sales_channel, :notice => 'Sales channel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sales_channel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_channels/1
  # DELETE /sales_channels/1.json
  def destroy
    @sales_channel = SalesChannel.find(params[:id])
    @sales_channel.destroy

    respond_to do |format|
      format.html { redirect_to sales_channels_url }
      format.json { head :no_content }
    end
  end
end
