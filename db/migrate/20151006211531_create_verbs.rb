class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.string :word, null: false
    end
  end
end
