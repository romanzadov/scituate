class GuestsController < ApplicationController
  layout 'statics'

  # GET /guests
  # GET /guests.xml
  def index
     @guests = Guest.all(:order => "created_at DESC")

	@w3 = 0
	@t1 = 0
	@t2 = 0
	@t3 = 0
	@f1 = 0
	@f2 = 0
	@f3 = 0
	@s1 = 0
	@s2 = 0
	@s3 = 0
	@s4 = 0

	@vw3 = 0
	@vt1 = 0
	@vt2 = 0
	@vt3 = 0
	@vf1 = 0
	@vf2 = 0
	@vf3 = 0
	@vs1 = 0
	@vs2 = 0
	@vs3 = 0
	@vs4 = 0

	@fw3 = 0
	@ft1 = 0
	@ft2 = 0
	@ft3 = 0
	@ff1 = 0
	@ff2 = 0
	@ff3 = 0
	@fs1 = 0
	@fs2 = 0
	@fs3 = 0
	@fs4 = 0
	
	@guests.each do |g|
		if g.w3 == true
		@w3 = @w3 + 1
			if g.veg == true
			@vw3 = @vw3+1
			end
		end
		if g.t1 == true
		@t1 = @t1 + 1
			if g.veg == true
			@vt1 = @vt1+1
			end
		end
		if g.t2 == true
		@t2 = @t2 + 1
			if g.veg == true
			@vt2 = @vt2+1
			end
		end
		if g.t3 == true
		@t3 = @t3 + 1
			if g.veg == true
			@vt3 = @vt3+1
			end
		end
		if g.f1 == true
		@f1 = @f1 + 1
			if g.veg == true
			@vf1 = @vf1+1
			end
		end
		if g.f2 == true
		@f2 = @f2 + 1
			if g.veg == true
			@vf2 = @vf2+1
			end
		end
		if g.f3 == true
		@f3 = @f3 + 1
			if g.veg == true
			@vf3 = @vf3+1
			end
		end
		if g.s1 == true 
                @s1 = @s1 + 1
			if g.veg == true
			@vs1 = @vs1+1
			end
		end
		if g.s2 == true
		@s2 = @s2 + 1
			if g.veg == true
			@vs2 = @vs2+1
			end
		end
		if g.s3 == true
		@s3 = @s3 + 1
			if g.veg == true
			@vs3 = @vs3+1
			end
		end
		if g.s4 == true
		@s4 = @s4 + 1
			if g.veg == true
			@vs4 = @vs4+1
			end
		end
		if g.fw3 == true
		@fw3 = @fw3 + 1
		end
		if g.ft1 == true
		@ft1 = @ft1 + 1
		end
		if g.ft2 == true
		@ft2 = @ft2 + 1
		end
		if g.ft3 == true
		@ft3 = @ft3 + 1
		end
		if g.ff1 == true
		@ff1 = @ff1 + 1
		end
		if g.ff2 == true
		@ff2 = @ff2 + 1
		end
		if g.ff3 == true
		@ff3 = @ff3 + 1
		end
		if g.fs1 == true
		@fs1 = @fs1 + 1
		end
		if g.fs2 == true
		@fs2 = @fs2 + 1
		end
		if g.fs3 == true
		@fs3 = @fs3 + 1
		end
		if g.fs4 == true
		@fs4 = @fs4 + 1
		end
	end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @guests }
    end
  end

  # GET /guests/1
  # GET /guests/1.xml
  def show
    @guest = Guest.find(params[:id])

    respond_to do |format|
      format.html {redirect_to :action => @guests }
      format.xml  { render :xml => @guest }
    end
  end

  # GET /guests/new
  # GET /guests/new.xml
  def new
    @guest = Guest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @guest }
    end
  end

  # GET /guests/1/edit
  def edit
    @guest = Guest.find(params[:id])
  end

  # POST /guests
  # POST /guests.xml
  def create
    @guest = Guest.new(params[:guest])

    respond_to do |format|
      if @guest.save
        flash[:notice] = 'Guest was successfully created.'
        format.html { redirect_to(@guest) }
        format.xml  { render :xml => @guest, :status => :created, :location => @guest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @guest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /guests/1
  # PUT /guests/1.xml
  def update
    @guest = Guest.find(params[:id])

    respond_to do |format|
      if @guest.update_attributes(params[:guest])
        flash[:notice] = 'Guest was successfully updated.'
        format.html { redirect_to(@guest) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @guest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /guests/1
  # DELETE /guests/1.xml
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    respond_to do |format|
      format.html { redirect_to(guests_url) }
      format.xml  { head :ok }
    end
  end
end