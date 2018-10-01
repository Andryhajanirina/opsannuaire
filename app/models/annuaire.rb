class Annuaire < ApplicationRecord
	belongs_to :user
	validates :num_dept, presence: true
	validates :nom_dpt, presence: true
	validates :commune, presence: true
	validates :email, presence: true
end
