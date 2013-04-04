class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :department
      t.date :date
      t.string :time
      t.integer :budget
      t.integer :quantity
      t.string :priority
      t.string :deliverable
      t.text :description

      t.timestamps
    end
  end
end
