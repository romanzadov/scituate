class StaticsController < ApplicationController
 layout 'statics'

  # GET /statics
  # GET /statics.xml
  def index
    @statics = Static.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @statics }
    end
  end

  # GET /statics/1
  # GET /statics/1.xml
  def show
    @static = Static.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @static }
    end
  end

  # GET /statics/new
  # GET /statics/new.xml
  def new
    @static = Static.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @static }
    end
  end

  # GET /statics/1/edit
  def edit
    @static = Static.find(params[:id])
  end

  # POST /statics
  # POST /statics.xml
  def create
    @static = Static.new(params[:static])

    respond_to do |format|
      if @static.save
        flash[:notice] = 'Static was successfully created.'
        format.html { redirect_to(@static) }
        format.xml  { render :xml => @static, :status => :created, :location => @static }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @static.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /statics/1
  # PUT /statics/1.xml
  def update
    @static = Static.find(params[:id])

    respond_to do |format|
      if @static.update_attributes(params[:static])
        flash[:notice] = 'Static was successfully updated.'
        format.html { redirect_to(@static) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @static.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /statics/1
  # DELETE /statics/1.xml
  def destroy
    @static = Static.find(params[:id])
    @static.destroy

    respond_to do |format|
      format.html { redirect_to(statics_url) }
      format.xml  { head :ok }
    end
  end
end
