require "spec_helper"

describe PpcreviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/ppcreviews").should route_to("ppcreviews#index")
    end

    it "routes to #new" do
      get("/ppcreviews/new").should route_to("ppcreviews#new")
    end

    it "routes to #show" do
      get("/ppcreviews/1").should route_to("ppcreviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ppcreviews/1/edit").should route_to("ppcreviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ppcreviews").should route_to("ppcreviews#create")
    end

    it "routes to #update" do
      put("/ppcreviews/1").should route_to("ppcreviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ppcreviews/1").should route_to("ppcreviews#destroy", :id => "1")
    end

  end
end
