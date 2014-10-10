require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        person = Person.create(first_name: "Bob")
        allow(person).to receive(:save).and_return(true)
        allow(Person).to receive(:new).
          with(first_name: "Bob").
          and_return(person)

        post :create, person: { first_name: "Bob" }

        expect(response).to redirect_to(person_path(person))
      end
    end

    context "when person is invalid" do
      it "redirects to #new" do
        person = double("person")
        allow(person).to receive(:save).and_return(false)
        allow(Person).to receive(:new).with(first_name: "").and_return(person)

        post :create, person: { first_name: "" }

        expect(response).to render_template(:new)
      end
    end
  end

  describe "#update" do
    context "with valid attributes" do
      it "redirects to #show" do
        person = Person.create(first_name: "Eliot")
        allow(person).to receive(:update).and_return(true)
        allow(Person).to receive(:find).
          with(person.to_param).
          and_return(person)

        patch :update, id: person.id, person: { first_name: "Thomas" }

        expect(response).to redirect_to(person_path(person))
      end
    end

    context "with invalid attributes" do
      it "redirects to #edit" do
        person = double("person", id: "1")
        allow(person).to receive(:update).and_return(false)
        allow(Person).to receive(:find).
          with(person.id).
          and_return(person)

        patch :update, id: person.id, person: { first_name: "" }

        expect(response).to render_template(:edit)
      end
    end
  end
end
