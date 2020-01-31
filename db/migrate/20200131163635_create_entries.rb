class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.date :date
      t.text :body
      t.text :notes

      t.timestamps
    end
  end
end
