def pet_shop_name(shop)
  return shop[:name]
end

#2
def total_cash(shop)
  return shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

#4
def pets_sold(shop)
  shop[:admin][:pets_sold]
end

#5
def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] += sold
end

#6
def stock_count(shop)
  shop[:pets].length()
end

#7
def pets_by_breed(shop, breed)
  pet_type = [] # Create empty array
  for type in shop[:pets] # Loop through the hashes of pets
   if type[:breed] == breed # Search eash hash for the key :breed that has the value breed
    pet_type.push(type) # push each hash into the empty array if it meets the criteria
  end
  end
  return pet_type # return the now not-empty array, which will be counted during the test
end

#8
def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# 9
def remove_pet_by_name(shop, name)
  for removed in shop[:pets]
    if removed[:name] == name
      shop[:pets].delete(removed)
    end
  end
end

# 10
def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

# 11
def customer_cash(customer)
  customer[:cash]
end

# 12
def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end
