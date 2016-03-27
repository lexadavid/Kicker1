require "rails_helper"

describe PagesController do

  describe "GET rules" do
    it "has a 200 status code" do
      get :rules
      expect(response.status).to eq(200)
    end
  end

  describe "GET welcome" do
    it "has a 200 status code" do
      get :welcome
      expect(response.status).to eq(200)
    end
  end

  describe "GET best" do
    it "has a 200 status code" do
      get :best_performers
      expect(response.status).to eq(200)
    end
  end

end