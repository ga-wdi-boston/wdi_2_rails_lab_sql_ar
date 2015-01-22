require 'byebug'
class PeopleController < ApplicationController
  def index
    # Assign all instances of people to @people
    @people = Person.all
  end

  def show
    # Assign a person with a specific id from the parameters to @person
    # Remember the id can come from params[:id]
    @person = Person.find(params[:id])

  end

  def create
    # Create a new person based on the incoming POST data
    # Assign this new person to @person
    # which you can access with people_params
    # people_params is a hash of first_name, last_name and age
    @person = Person.create(people_params)
    redirect_to @person # Do not alter this line
  end

  def update
    # Update the attributes of a single person from the PUT action
    # people_params is a hash of first_name, last_name and age
    # First you'll want to find the person, assign them to @person
    # then update their attributes
    @person = Person.find(params[:id])
    @person.update!(people_params)

    redirect_to @person # Do not alter this line
  end

  def destroy
    # Delete a person record from the DELETE action
    # First you'll want to find the person
    # Then delete them
    @person = Person.find(params[:id])
    @person.delete
    redirect_to Person # Do not alter this line
  end

  private

  # Do not alter this method
  def people_params
    params.require(:person).permit(:first_name, :last_name, :age)
  end
end
