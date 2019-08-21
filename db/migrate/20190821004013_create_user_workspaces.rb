class CreateUserWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workspaces do |t|
      t.references :user
      t.references :workspace

      t.timestamps
    end
  end
end
