class Request < ActiveRecord::Base
  attr_accessible :budget, :date, :deliverable, :department, :description, :email, :name, :priority, :quantity, :time, :approved, :comments

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
	end


end
