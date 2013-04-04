require 'spec_helper'

describe "requests/show" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :name => "Name",
      :email => "Email",
      :department => "Department",
      :time => "Time",
      :budget => 1,
      :quantity => 2,
      :priority => "Priority",
      :deliverable => "Deliverable",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Department/)
    rendered.should match(/Time/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Priority/)
    rendered.should match(/Deliverable/)
    rendered.should match(/MyText/)
  end
end
