class AddSpecificationToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :specification, :integer
  end
end
