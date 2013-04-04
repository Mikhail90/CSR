require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :name => "MyString",
      :email => "MyString",
      :department => "MyString",
      :time => "MyString",
      :budget => 1,
      :quantity => 1,
      :priority => "MyString",
      :deliverable => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requests_path(@request), :method => "post" do
      assert_select "input#request_name", :name => "request[name]"
      assert_select "input#request_email", :name => "request[email]"
      assert_select "input#request_department", :name => "request[department]"
      assert_select "input#request_time", :name => "request[time]"
      assert_select "input#request_budget", :name => "request[budget]"
      assert_select "input#request_quantity", :name => "request[quantity]"
      assert_select "input#request_priority", :name => "request[priority]"
      assert_select "input#request_deliverable", :name => "request[deliverable]"
      assert_select "textarea#request_description", :name => "request[description]"
    end
  end
end
