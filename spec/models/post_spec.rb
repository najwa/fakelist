require 'spec_helper'

describe Post do
	
	let(:post) { FactoryGirl.create(:post) }

	subject { post }
	it { should respond_to(:city) } 
	it { should respond_to(:subcategory) }
	it { should respond_to(:title) }
	it { should respond_to(:price) }
	it { should respond_to(:body) }
	it { should respond_to(:location) }
	it { should respond_to(:email) }

end


