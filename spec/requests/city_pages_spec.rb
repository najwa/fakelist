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

  describe "show" do
    let(:city)  { FactoryGirl.create(:city) }
    before do 
      10.times    { FactoryGirl.create(:subcategory) } 
      visit city_path(city)
    end

    it { should have_title(city.name) }
    it { should have_content(city.name) }    

    it "should list each category" do
      Category.all.each do |category|
        expect(page).to have_content(category.name)
      end
    end

    it "should list each subcategory" do
      Subcategory.all.each do |subcategory|
        expect(page).to have_content(subcategory.name)
      end
    end
  end

end