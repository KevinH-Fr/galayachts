class Bailleur < ApplicationRecord
    has_many :produits

    belongs_to :user

    has_one_attached :profilepic

    validates :nom, presence: true

end
