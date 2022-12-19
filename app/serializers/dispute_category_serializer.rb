class DisputeCategorySerializer < ActiveModel::Serializer
  attributes :id, :category_name, :category_description
  has_many :dispute_types, except: :dispute_category_id
  has_many :advocates
  
end
