class AddCommentsAndApprovedToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :comments, :string
    add_column :requests, :approved, :boolean, default: false
  end
end
