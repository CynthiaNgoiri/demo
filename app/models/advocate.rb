class Advocate < ApplicationRecord
    has_secure_password
    has_many :disputes
    belongs_to :field
    has_many :clients, through: :disputes

    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true, uniqueness: true
    validates :years_of_practice, presence: true, numericality: {less_than: 20, greater_than: 3}
    validates :pin_number, presence: true, uniqueness: true
    validates :field_id, presence: true

end
