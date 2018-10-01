class AddUserRefToAnnuaires < ActiveRecord::Migration[5.2]
  def change
    add_reference :annuaires, :user, foreign_key: true
  end
end
