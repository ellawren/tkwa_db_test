require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'projects'" do
    it "should be successful" do
      get 'projects'
      response.should be_success
    end
  end

  describe "GET 'contacts'" do
    it "should be successful" do
      get 'contacts'
      response.should be_success
    end
  end

  describe "GET 'patterns'" do
    it "should be successful" do
      get 'patterns'
      response.should be_success
    end
  end

  describe "GET 'timesheets'" do
    it "should be successful" do
      get 'timesheets'
      response.should be_success
    end
  end

end
