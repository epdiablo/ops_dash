require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post :create, campaign: { advertiser: @campaign.advertiser, agency: @campaign.agency, assets: @campaign.assets, enddate: @campaign.enddate, geo: @campaign.geo, io: @campaign.io, mobile: @campaign.mobile, name: @campaign.name, notes: @campaign.notes, revenue: @campaign.revenue, startdate: @campaign.startdate, tablet: @campaign.tablet, teamsold: @campaign.teamsold, theoremtracking: @campaign.theoremtracking, thirdparty: @campaign.thirdparty, thirdpartylogin: @campaign.thirdpartylogin, video: @campaign.video, web: @campaign.web }
    end

    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should show campaign" do
    get :show, id: @campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campaign
    assert_response :success
  end

  test "should update campaign" do
    put :update, id: @campaign, campaign: { advertiser: @campaign.advertiser, agency: @campaign.agency, assets: @campaign.assets, enddate: @campaign.enddate, geo: @campaign.geo, io: @campaign.io, mobile: @campaign.mobile, name: @campaign.name, notes: @campaign.notes, revenue: @campaign.revenue, startdate: @campaign.startdate, tablet: @campaign.tablet, teamsold: @campaign.teamsold, theoremtracking: @campaign.theoremtracking, thirdparty: @campaign.thirdparty, thirdpartylogin: @campaign.thirdpartylogin, video: @campaign.video, web: @campaign.web }
    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete :destroy, id: @campaign
    end

    assert_redirected_to campaigns_path
  end
end
