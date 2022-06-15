class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.text :description
      t.date :start_date
      t.date :exp_date
      t.references :company_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
