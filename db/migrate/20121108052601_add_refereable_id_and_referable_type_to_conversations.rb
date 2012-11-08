class AddRefereableIdAndReferableTypeToConversations < ActiveRecord::Migration
  def change
    add_column :conversations, :referable_id, :integer
    add_column :conversations, :referable_type, :string
    add_index  :conversations, [:referable_type, :referable_id]
  end
end
