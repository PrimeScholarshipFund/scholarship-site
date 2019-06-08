class AddDemographics < ActiveRecord::Migration[5.2]
  def change
    create_table :demographics do |t|
      t.string :gender
      t.string :age
      t.integer :level_of_education
      t.integer :lgbtq_status
      t.string :race, array: true, default: '{}'

      t.timestamps
    end
  end
end
