class CreateWashTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :wash_types do |t|
      t.string :code
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
