namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_cities
  end
    
  def make_cities
    10.times do |n|
      name  = Faker::Address.city
      City.create!(name: name)
    end
  end

  def make_categories
    5.times do |n|
      name  = "Category #{n}"
      Category.create!(name: name)
    end
  end
end