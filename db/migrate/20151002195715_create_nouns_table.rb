class CreateNounsTable < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.string :word, null: false
    end
  end
end
