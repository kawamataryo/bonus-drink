class BonusDrink
  def self.total_count_for(amount)
    if amount >= 3
      sum = amount
      bonus, amari = amount.divmod(3)
      sum += bonus
      while bonus + amari >= 3
        bonus, amari = (bonus + amari).divmod(3)
        sum += bonus
      end
      sum
    else
      amount
    end
  end
end
