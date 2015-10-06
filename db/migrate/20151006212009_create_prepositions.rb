class CreatePrepositions < ActiveRecord::Migration
  def change
    create_table :prepositions do |t|
      t.string :word, null: false
    end
  end
end
