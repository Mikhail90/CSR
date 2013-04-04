require 'spec_helper'

describe "requests/index" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
        :name => "Name",
        :email => "Email",
        :department => "Department",
        :time => "Time",
        :budget => 1,
        :quantity => 2,
        :priority => "Priority",
        :deliverable => "Deliverable",
        :description => "MyText"
      ),
      stub_model(Request,
        :name => "Name",
        :email => "Email",
        :department => "Department",
        :time => "Time",
        :budget => 1,
        :quantity => 2,
        :priority => "Priority",
        :deliverable => "Deliverable",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
    assert_select "tr>td", :text => "Deliverable".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
