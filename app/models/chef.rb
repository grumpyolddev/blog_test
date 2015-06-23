class Chef < ActiveRecord::Base
  has_many :recipes
  
  before_save {self.email = self.email.downcase }
  validates :name, presence: true, length: {minimum: 3, maximum: 40} 
  validates :email, presence: true, length: {minimum: 3, maximum: 105}, uniqueness:{case_sensitive: true}, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}  
  
end