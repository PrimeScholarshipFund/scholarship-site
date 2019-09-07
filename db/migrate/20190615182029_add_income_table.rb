class AddIncomeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.integer :adjusted_gross_income
      t.string :filing_status
      t.integer :dependents
      t.boolean :government_assistance
      t.string :government_assistance_notes
      t.boolean :employed_during_bootcamp
      t.string :employed_during_bootcamp_notes
      t.boolean :supported_by_other
      t.string :supported_by_other_notes

      t.timestamps
    end
  end
end
