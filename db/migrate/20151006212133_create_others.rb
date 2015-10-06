class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :word, null: false
    end
  end
end
