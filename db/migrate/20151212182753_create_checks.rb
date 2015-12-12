class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :text_a
      t.string :text_b
      t.boolean :is_an_anagram

      t.timestamps null: false
    end
  end
end
