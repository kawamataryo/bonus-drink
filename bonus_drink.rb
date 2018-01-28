class BonusDrink
  def self.total_count_for(amount)
    if amount >= 3
      total = amount
      bonus, amari = amount.divmod(3)
      total += bonus
      while bonus + amari >= 3
        bonus, amari = (bonus + amari).divmod(3)
        total += bonus
      end
      total
    else
      amount
    end
  end
end
