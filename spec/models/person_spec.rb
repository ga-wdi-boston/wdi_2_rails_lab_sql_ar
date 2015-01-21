require 'rails_helper'

RSpec.describe Person, type: :model do
  describe '#create' do
    it 'creates a new person, saving them to the DB' do
      person = Person.create
      expect(person).to be_a Person
      expect(person.persisted?).to be true
    end
  end

  describe '#new' do
    it 'creates a new person without saving to DB' do
      person = Person.new
      expect(person).to be_a Person
      expect(person.persisted?).to be false
    end
  end
end
