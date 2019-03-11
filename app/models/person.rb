class Person < ApplicationRecord
  validates :name, presence: true, on: :save
  validates :eye_color, length: {maximum: 25}, allow_blank: true
  validates :hair_color, length: {maximum: 25}, allow_blank: true
  validates :gender, presence: true
  validates :age, numericality: {only_integer: true}
  validates :alive, presence: true, on: :save

  def self.by_name
    order(:name)
  end

  def name_age
    "#{self.name} is #{self.age} years old"
  end

end
