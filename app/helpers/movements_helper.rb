module MovementsHelper
  def view_date(date)
    date.strftime("%d/%m/%Y")
  end
  def view_category(category_id)
    category = Category.find_by(id: category_id)
    category.description
  end
  def view_account(account_id)
    account = Account.find_by(id: account_id)
    account.description
  end
  def view_value(value)
    format("%.2f", value)
  end
end
