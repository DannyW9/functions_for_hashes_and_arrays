def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] += sold
end

def stock_count(shop)
  shop[:pets].length()
end

def pets_by_breed(shop, breed)
  pet_type = [] # Create empty array
  for type in shop[:pets] # Loop through the hashes of pets
   if type[:breed] == breed # Search eash hash for the key :breed that has the value breed
    pet_type.push(type) # push each hash into the empty array if it meets the criteria
  end
  end
  return pet_type # return the now not-empty array, which will be counted during the test
end
