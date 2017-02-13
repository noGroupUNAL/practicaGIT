class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :tittle
      t.text :description

      t.timestamps
    end
  end
end
