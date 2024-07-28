class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :personal_email ,presence: true , uniqueness: true
  validates :district, :zone , :province , :temporary_address , :permanent_address , :country , presence:true 

  def name 
    "#{first_name} #{middle_name} #{last_name}".strip
  end
  def full_address
    "#{district} #{zone} #{province}".strip
  end
end
