class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :timeoutable

  enum :roles, { Admin: 1, Manager: 5 , Patient: 0}

  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :patient
  end
  
  USER_ROLE = 
  [
    ['Patient', 'Patient'],
    ['Manager', 'Manager'],
    ['Admin', 'Admin'],
  ]
  
end
