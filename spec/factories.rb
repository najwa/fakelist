FactoryGirl.define do
	factory :city do
		sequence(:name) { |n| "City #{n}" }
	end

	factory :category do
		sequence(:name) { |n| "Category #{n}" }
	end

	factory :subcategory do
		sequence(:name) { |n| "Subcategory #{n}" }
		association :category
	end

end