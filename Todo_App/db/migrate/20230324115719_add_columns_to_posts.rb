class AddColumnsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :status, :string
  end
end
