class AddJobNumberToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :jobnumber, :integer
  end
end
