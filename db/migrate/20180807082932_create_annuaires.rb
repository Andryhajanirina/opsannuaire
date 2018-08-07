class CreateAnnuaires < ActiveRecord::Migration[5.2]
  def change
    create_table :annuaires do |t|
      t.integer :num_dept
      t.string :nom_dpt
      t.string :commune
      t.string :email

      t.timestamps
    end
  end
end
