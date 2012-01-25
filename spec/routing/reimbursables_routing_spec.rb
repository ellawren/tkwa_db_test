require "spec_helper"

describe ReimbursablesController do
  describe "routing" do

    it "routes to #index" do
      get("/reimbursables").should route_to("reimbursables#index")
    end

    it "routes to #new" do
      get("/reimbursables/new").should route_to("reimbursables#new")
    end

    it "routes to #show" do
      get("/reimbursables/1").should route_to("reimbursables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reimbursables/1/edit").should route_to("reimbursables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reimbursables").should route_to("reimbursables#create")
    end

    it "routes to #update" do
      put("/reimbursables/1").should route_to("reimbursables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reimbursables/1").should route_to("reimbursables#destroy", :id => "1")
    end

  end
end
