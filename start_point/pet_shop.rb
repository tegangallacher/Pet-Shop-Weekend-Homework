def pet_shop_name(shop_name)
  return shop_name[:name] 
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(money, cash)
  money[:admin][:total_cash] = money[:admin][:total_cash] + cash
end


def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, ammount_sold)
sold[:admin][:pets_sold] = sold[:admin][:pets_sold] + ammount_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, type_of_breed)

number_of_breeds = []

  for pet_shop in pet_shop[:pets]
    if (pet_shop[:breed] == type_of_breed)
       number_of_breeds << pet_shop
    end
  end
return number_of_breeds
end

def find_pet_by_name(pet_shop, name)
  for pet_name in pet_shop[:pets]
    if (pet_name[:name] == name)
      return pet_name
    end
  end
   return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet_name in pet_shop[:pets]
    if (pet_name[:name] == name)
      pet_shop[:pets].delete(pet_name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  for number_of_pets in @customers
    if (number_of_pets == customer)
    return customer[:pets].length
    end
  end
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

















