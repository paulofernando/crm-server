class CreateCourtCases < ActiveRecord::Migration[6.0]
  def change
    create_table :court_cases do |t|
      t.string :title
      t.string :description
      t.decimal :value
      t.datetime :court_date

      t.timestamps
    end
  end
end
