class Regi < ApplicationRecord
  has_many :filings
  has_many :charts
  has_many :patients
  has_many :filings, dependent: :destroy
  has_many :patients, dependent: :destroy
  has_many :charts, dependent: :destroy
  validates :last_name, :first_name, :gender, presence: true

   def self.ransackable_attributes(auth_object = nil)
   ["created_at", "dob", "first_name", "gender", "id", "id_value", "init", "last_name", "updated_at"]
   end

   def self.ransackable_associations(auth_object = nil)
      ["charts", "filings", "patients"]
   end

  GENDER_OPTIONS = [
    ['Select', ''],
    ['Male', 'Male'],
    ['Female', 'Female'],
    ['Other', 'Other']
  ]


end