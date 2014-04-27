require 'spec_helper'

describe "user_posts/index" do
  before(:each) do
    assign(:user_posts, [
      stub_model(UserPost,
        :post => "Post",
        :time => "Time"
      ),
      stub_model(UserPost,
        :post => "Post",
        :time => "Time"
      )
    ])
  end

  it "renders a list of user_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end
