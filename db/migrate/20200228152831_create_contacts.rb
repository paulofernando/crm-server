class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :case_role
      t.string :email
      t.references :case, null: false, foreign_key: true

      t.timestamps
    end
  end
end