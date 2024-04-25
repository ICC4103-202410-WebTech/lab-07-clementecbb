class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags
    has_many :posts
    validates :name, presence: { message: "this cant be blank/no puede estar en blanco" }, uniqueness: { message: "this is already used/ ya esta en uso" }
end