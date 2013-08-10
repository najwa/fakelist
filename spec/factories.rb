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

	factory :post do
		sequence(:title) { |n| "Post #{n}" }
		price 400
		body "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		location "400 Ruby Ave."
		sequence(:email) { |n| "person_#{n}@example.org" }
		association :subcategory
		association :city
	end

end