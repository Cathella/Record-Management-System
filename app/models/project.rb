class Project < ApplicationRecord
  belongs_to :client
  has_many :invoices

  has_one_attached :image, :dependent => :destroy
  # has_many_attached :images

  def completed
    # @project.status == "Completed"
  end
end
