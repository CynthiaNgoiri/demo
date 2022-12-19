class AdvocateSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :field_specialization, :years_of_practice, :pin_number

  def field_specialization
    "#{self.object.field.field_name}"
  end
end

