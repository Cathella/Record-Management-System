class Invoice < ApplicationRecord
  belongs_to :project

  STATUS_CLASS = {
    :draft => "badge badge-secondary",
    :sent => "badge badge-primary",
    :paid => "badge badge-success"
  }

  def subtotal
    item_qty * item_price 
  end

  def discount_calculated
    subtotal * (self.discount / 100.0)
  end

  def tax_calculated
    (subtotal - discount_calculated) * (self.tax / 100.0)
  end

  def total
    subtotal - discount_calculated + tax_calculated
  end

  def status_class
    STATUS_CLASS[self.status.to_sym]
  end
end
