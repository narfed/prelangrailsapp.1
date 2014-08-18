require 'rails_helper'

RSpec.describe "Registrants", :type => :request do
  describe "GET /registrants" do
    it "works! (now write some real specs)" do
      get registrants_path
      expect(response.status).to be(200)
    end
  end
end
