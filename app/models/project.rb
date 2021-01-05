class Project < ApplicationRecord
  belongs_to :client
  has_many :invoices

  def completed
    @project.status == "Completed"
  end
end
