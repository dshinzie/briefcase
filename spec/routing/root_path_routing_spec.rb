require "rails_helper"

RSpec.describe "Route for Root Path", :type => :routing do
  it "route / to the root redirects to the alumni path" do
    expect(:get => "/").to be_routable
    expect(:get => "/alumni").to route_to(:controller => "alumni", :action => "index")
  end
end