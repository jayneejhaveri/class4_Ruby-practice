# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#number of transactions 
total_transactions = blockchain.size 
puts total_transactions

#number of users 

x = 0
bens_wallet = 0
brians_wallet = 0
evans_wallet = 0
anthonys_wallet = 0

loop do 

  x = x + 1
  if x > total_transactions
    break
  end

  if blockchain[x]["to_user"] == "ben"
   bens_wallet = bens_wallet+ blockchain[x]["amount"]
  elseif blockchain[x]["to_user"] == "brian"
   brians_wallet = brians_wallet+ blockchain[x]["amount"]
  elseif blockchain[x]["to_user"] == "evan"
   evans_wallet = evans_wallet + blockchain[x]["amount"]
  else blockchain[x]["to_user"] == "anthony"
   anthonys_wallet = anthonys_wallet + blockchain[x]["amount"]
  end

  
end