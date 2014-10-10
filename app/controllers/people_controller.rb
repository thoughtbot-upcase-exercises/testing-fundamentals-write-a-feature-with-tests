class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_attributes)
    if @person.save
      redirect_to @person, notice: "Person created."
    else
      render :new
    end
  end

  def show
    @person = person
  end

  def edit
    @person = person
  end

  def update
    @person = person

    if @person.update(person_attributes)
      redirect_to @person, notice: "Person updated."
    else
      render :edit
    end
  end

  private

  def person_attributes
    params.require(:person).permit(:first_name)
  end

  def person
    @_person ||= Person.find(params[:id])
  end
end
