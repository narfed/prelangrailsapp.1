require 'rails_helper'

RSpec.describe "ProgramSegments", :type => :request do
  describe "GET /program_segments" do
    it "works! (now write some real specs)" do
      get program_segments_path
      expect(response.status).to be(200)
    end
  end
end
