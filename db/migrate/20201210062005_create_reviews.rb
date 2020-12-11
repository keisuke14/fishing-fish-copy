class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :fishing_park, foreign_key: true
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
