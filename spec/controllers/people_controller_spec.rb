require 'rails_helper'

RSpec.describe PeopleController do
  describe "GET index" do
    it "assigns @people" do
      person = Person.create
      get :index
      expect(assigns(:people)).to eq([person])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
