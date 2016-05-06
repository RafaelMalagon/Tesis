class AddCompanyIdToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :company, index: true, foreign_key: true
  end
end
