require 'spec_helper'

describe Newsletter do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Newsletter.create!(@valid_attributes)
  end
end
