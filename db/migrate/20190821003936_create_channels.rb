class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.references :workspace
      t.string :name

      t.timestamps
    end
  end
end
