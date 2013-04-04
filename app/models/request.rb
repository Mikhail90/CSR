class Request < ActiveRecord::Base
  attr_accessible :budget, :date, :deliverable, :department, :description, :email, :name, :priority, :quantity, :time, :approved, :comments
end
