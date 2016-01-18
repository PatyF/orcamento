module BudgetsHelper
  def view_date(date)
    date.strftime("%m/%Y")
  end

  def view_value(value)
    format("%.2f", value)
  end
  
end
