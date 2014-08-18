require 'rails_helper'

RSpec.describe "ProgramModels", :type => :request do
  describe "GET /program_models" do
    it "works! (now write some real specs)" do
      get program_models_path
      expect(response.status).to be(200)
    end
  end
end
