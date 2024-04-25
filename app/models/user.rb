class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    validates :name, presence: { message: "should be present/debe estar presente" }
    validates :email, presence: { message: "should be present/debe estar presente" }, uniqueness: { message: "should be unique/debe ser único" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "should have a valid email format/debe tener un formato válido" }
    validates :password, presence: { message: "should be present/debe estar presente" }, length: { minimum: 6, message: "should have a minimum length of 6 characters/debe tener un mínimo de 6 caracteres" }
end
  