require 'spec_helper'

describe Subcategory do
	
	let(:subcategory) { FactoryGirl.create(:subcategory) }

	subject { subcategory }
	it { should respond_to(:name) } 
	it { should respond_to(:category) }

end


