require 'spec_helper'

describe "SubcategoryPages" do
  
  subject { page }

	let(:city) { FactoryGirl.create(:city) }
	let(:other_city) { FactoryGirl.create(:city) }
  let(:subcategory) { FactoryGirl.create(:subcategory) }
  let(:other_subcategory) { FactoryGirl.create(:subcategory) }
  
  before do 
    20.times    { post = FactoryGirl.create(:post, 
    											city: city, subcategory: subcategory) } 
    20.times    { post = FactoryGirl.create(:post, 
    											city: other_city, subcategory: subcategory) } 
    20.times    { post = FactoryGirl.create(:post, 
    											city: city, subcategory: other_subcategory) } 
  end

  describe "show" do
    before { visit city_subcategory_path(city, subcategory) }
    it "should list each post in city and subcategory" do
      subcategory.posts.where(city: city, subcategory: subcategory)
      	.each do |post|
        expect(page).to have_content(post.title)
      end
    end
    it "should not list posts outside city" do
      subcategory.posts.where(city: other_city, subcategory: subcategory)
      	.each do |post|
        expect(page).not_to have_content(post.title)
      end
    end
    it "should not list posts outside subcategory" do
      subcategory.posts.where(city: city, subcategory: other_subcategory)
      	.each do |post|
        expect(page).not_to have_content(post.title)
      end
    end
  end
end
