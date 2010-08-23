class SrvrsController < ApplicationController
  # GET /srvrs
  # GET /srvrs.xml
  def index
    @srvrs = Srvr.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @srvrs }
    end
  end

  # GET /srvrs/1
  # GET /srvrs/1.xml
  def show
    @srvr = Srvr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @srvr }
    end
  end

  # GET /srvrs/new
  # GET /srvrs/new.xml
  def new
    @srvr = Srvr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @srvr }
    end
  end

  # GET /srvrs/1/edit
  def edit
    @srvr = Srvr.find(params[:id])
  end

  # POST /srvrs
  # POST /srvrs.xml
  def create
    @srvr = Srvr.new(params[:srvr])

    respond_to do |format|
      if @srvr.save
        flash[:notice] = 'Srvr was successfully created.'
        format.html { redirect_to(@srvr) }
        format.xml  { render :xml => @srvr, :status => :created, :location => @srvr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @srvr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /srvrs/1
  # PUT /srvrs/1.xml
  def update
    @srvr = Srvr.find(params[:id])

    respond_to do |format|
      if @srvr.update_attributes(params[:srvr])
        flash[:notice] = 'Srvr was successfully updated.'
        format.html { redirect_to(@srvr) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @srvr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /srvrs/1
  # DELETE /srvrs/1.xml
  def destroy
    @srvr = Srvr.find(params[:id])
    @srvr.destroy

    respond_to do |format|
      format.html { redirect_to(srvrs_url) }
      format.xml  { head :ok }
    end
  end
end
