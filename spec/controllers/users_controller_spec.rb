


require 'rails_helper'

RSpec.describe API::V1::UsersController, type: :controller do


	describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end


    it "JSON body response contains expected attributes" do
      json_response = JSON.parse(response.body)
      end
     end

 end