class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    # people_params is a hash of first_name, last_name and age
    @person = Person.create(people_params)

    redirect_to @person # Do not alter this line
  end

  def update
    # people_params is a hash of first_name, last_name and age
    # First you'll want to find the person, then update their attributes
    @person = Person.find(params[:id])
    @person.update_attributes(people_params)

    redirect_to @person # Do not alter this line
  end

  def destroy
    # First you'll want to find the person
    # Then delete them
    Person.find(params[:id]).delete

    redirect_to Person # Do not alter this line
  end

  private

  # Do not alter this method
  def people_params
    params.require(:person).permit(:first_name, :last_name, :age)
  end
end
