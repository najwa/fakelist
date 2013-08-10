require 'spec_helper'

describe "City pages" do

  subject { page }

  describe "index" do
    before { 20.times { FactoryGirl.create(:city) } } 
    before { visit cities_path }

    it "should list each city" do
      City.all.each do |city|
        expect(page).to have_content(city.name)
      end
    end
  end
end