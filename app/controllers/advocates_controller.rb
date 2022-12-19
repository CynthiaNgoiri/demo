class AdvocatesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found


    def index
    
        lawyer = Advocate.all
        render json: lawyer, status: :ok

        
        
    end

    def show
        lawyer = Advocate.find_by(id: params[:id])
        render json: lawyer, status: :ok
        
    end

    def create
        lawyer = Advocate.create!(advocate_params)
        render json: lawyer, status: :created

        byebug
    end

    private

    def advocate_params
        params.permit(:name, :phone, :field_id, :years_of_practice, :pin_number, :email, :password, :password_confirmation)
        
    end

    def render_record_invalid(e)
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_record_not_found(e)
        render json: {errors: e.record.errors.full_messages}, status: :not_found
    end


    

end
