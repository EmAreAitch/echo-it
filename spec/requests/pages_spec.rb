require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /shipping" do
    it "returns http success" do
      get "/pages/shipping"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /return" do
    it "returns http success" do
      get "/pages/return"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /privacy" do
    it "returns http success" do
      get "/pages/privacy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about_us" do
    it "returns http success" do
      get "/pages/about_us"
      expect(response).to have_http_status(:success)
    end
  end

end
