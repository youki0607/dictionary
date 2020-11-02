class CreateIndices < ActiveRecord::Migration[6.0]
  def change
    create_table :indices do |t|
      t.string :name
      t.text   :explanation
      t.string :image
      t.timestamps
    end
  end
end
