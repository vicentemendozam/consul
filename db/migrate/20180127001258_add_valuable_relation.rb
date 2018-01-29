class AddValuableRelation < ActiveRecord::Migration
  def change
    add_column :comments, :valuable_id, :integer
    add_column :comments, :valuable_type, :string

    add_index :comments, [:valuable_id, :valuable_type]
  end
end
