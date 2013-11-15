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
      post :create, campaign: { advertiser: @campaign.advertiser, agency: @campaign.agency, assets: @campaign.assets, enddate: @campaign.enddate, io: @campaign.io, keydates: @campaign.keydates, mobile: @campaign.mobile, name: @campaign.name, ops_notes: @campaign.ops_notes, paused: @campaign.paused, revenue: @campaign.revenue, sales_notes: @campaign.sales_notes, startdate: @campaign.startdate, tablet: @campaign.tablet, targeting: @campaign.targeting, team_sold: @campaign.team_sold, thirdparty: @campaign.thirdparty, video: @campaign.video, web: @campaign.web }
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
    put :update, id: @campaign, campaign: { advertiser: @campaign.advertiser, agency: @campaign.agency, assets: @campaign.assets, enddate: @campaign.enddate, io: @campaign.io, keydates: @campaign.keydates, mobile: @campaign.mobile, name: @campaign.name, ops_notes: @campaign.ops_notes, paused: @campaign.paused, revenue: @campaign.revenue, sales_notes: @campaign.sales_notes, startdate: @campaign.startdate, tablet: @campaign.tablet, targeting: @campaign.targeting, team_sold: @campaign.team_sold, thirdparty: @campaign.thirdparty, video: @campaign.video, web: @campaign.web }
    assert_redirected_to campaign_path(assigns(:campaign))
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete :destroy, id: @campaign
    end

    assert_redirected_to campaigns_path
  end
end
