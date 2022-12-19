class FieldsController < ApplicationController
    def index
        f = Field.all
        render json: f, status: :ok
        
    end

    def create
        f = Field.create!(field_name: params[:field_name] )
        render json: f, status: :created
        
    end
end
