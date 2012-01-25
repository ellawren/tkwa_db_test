require "spec_helper"

describe ConsultantsController do
  describe "routing" do

    it "routes to #index" do
      get("/consultants").should route_to("consultants#index")
    end

    it "routes to #new" do
      get("/consultants/new").should route_to("consultants#new")
    end

    it "routes to #show" do
      get("/consultants/1").should route_to("consultants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consultants/1/edit").should route_to("consultants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consultants").should route_to("consultants#create")
    end

    it "routes to #update" do
      put("/consultants/1").should route_to("consultants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consultants/1").should route_to("consultants#destroy", :id => "1")
    end

  end
end
