require 'spec_helper'

describe Category do
	
	let(:category) { FactoryGirl.create(:category) }

	subject { category }
	it { should respond_to(:name) } 
	it { should respond_to(:subcategories) }

end


