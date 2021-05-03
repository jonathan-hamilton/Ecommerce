require 'rails_helper'

RSpec.describe "Erdiagrams", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/erdiagram/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/erdiagram/create"
      expect(response).to have_http_status(:success)
    end
  end

end
