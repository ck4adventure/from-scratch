class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :author, null: false
      t.string :website
      t.string :title
      t.timestamps
    end

    add_index :sources, :author
    add_index :sources, :title
  end
end
