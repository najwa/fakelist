require 'spec_helper'

describe City do
	
	let(:city) { FactoryGirl.create(:city) }

	subject { city }
	it { should respond_to(:name) } 
	
end


