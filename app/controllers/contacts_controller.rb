class ContactsController < ApplicationController
    def index
        contacts = Contact.all
        render json: contacts , except: [:created_at, :updated_at]
    end

    def create 
        contact = Contact.create(contact_params)
        render json: contact, status: :created
    end

    private 

    def contact_params
        params.permit(:name, :email)
    end
end
