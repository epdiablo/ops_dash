class CampaignsController < ApplicationController
  # GET /campaigns
  # GET /campaigns.json
  helper_method :getAO, :trselect
  def index
    
    @campaigns = Campaign.all
    @camplivearray = []
    @campuparray = []
    @campoverarray =[]
    @campaigns.each do |i|
      if i.startdate.to_time.strftime("%m/%d/%Y").to_date <= Time.now.to_date && i.enddate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date
        @camplivearray << i.id
      elsif i.startdate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date 
        @campuparray << i.id
      else
        @campoverarray << i.id
      end
    end
    @camplive = Campaign.where(:id => @camplivearray)
    @campup = Campaign.where(:id => @campuparray)
    @campover = Campaign.where(:id => @campoverarray)
    @temparray = [@camplive, @campup]
    



    


    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaigns }
    end
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaign }
    end
  end

  # GET /campaigns/new
  # GET /campaigns/new.json
  def new
    @campaign = Campaign.new
    @aousers = User.where(:role => "AO")
    @amusers = User.where(:role => "AM")

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campaign }
    end
  end

  # GET /campaigns/1/edit
  def edit
    @campaign = Campaign.find(params[:id])
    @aousers = User.where(:role => "AO")
    @amusers = User.where(:role => "AM")
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(params[:campaign])

    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
        format.json { render json: @campaign, status: :created, location: @campaign }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaigns/1
  # PUT /campaigns/1.json
  def update
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      if @campaign.update_attributes(params[:campaign])
        format.html { redirect_to @campaign, notice: 'Campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    respond_to do |format|
      format.html { redirect_to campaigns_url }
      format.json { head :no_content }
    end
  end

  def mycampaigns

    if current_user.role = "AO"
      @campaigns = Campaign.where(:trafficker => current_user.id)
    elsif current_user.role = "AM"
      @campaigns = Campaign.where(:manager => current_user.id)
    else
      @campaigns = Campaign.all
    end
    @camplivearray = []
    @campuparray = []
    @campaigns.each do |i|
      if i.startdate.to_time.strftime("%m/%d/%Y").to_date <= Time.now.to_date && i.enddate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date
        @camplivearray << i.id
      elsif i.startdate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date
        @campuparray << i.id
      end
    end
    @camplive = Campaign.where(:id => @camplivearray)
    @campup = Campaign.where(:id => @campuparray)
    @temparray = [@camplive, @campup]

  end
  def closed
    @campaigns = Campaign.all
    @camplivearray = []
    @campuparray = []
    @campoverarray = []
    @campaigns.each do |i|
      if i.startdate.to_time.strftime("%m/%d/%Y").to_date <= Time.now.to_date && i.enddate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date
        @camplivearray << i.id
      elsif i.startdate.to_time.strftime("%m/%d/%Y").to_date > Time.now.to_date 
        @campuparray << i.id
      else
        @campoverarray << i.id
      end
    end
    @camplive = Campaign.where(:id => @camplivearray)
    @campup = Campaign.where(:id => @campuparray)
    @campover = Campaign.where(:id => @campoverarray)
    @temparray = [@camplive, @campup]
  end

  def getAO
    @users = User.find_by_id(1)
    return @users
  end
  def trselct(a,b)
    if a == "Pending" && b == "up"
      return '<tr class="error">'
    elsif a == "Ready" && b == "up"
      return '<tr class="success">'
    end
  end

end
