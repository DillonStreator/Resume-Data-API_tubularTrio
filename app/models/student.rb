class Student < ApplicationRecord
  has_many :experiences
  has_many :capstones
  has_many :skills
  has_many :educations
  has_many :student_skills
end
