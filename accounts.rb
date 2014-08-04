class Person
  attr_accessor :name, :cash_on_you
  attr_writer :name, :cash_on_you

  def initialize(name, cash_on_you)
    @name = name
    @cash_on_you = cash_on_you
    puts "Hi, #{name}. You have $#{cash_on_you}"
  end
  

  def name
    @name
  end

  def cash_on_you
    @cash_on_you
  end

end

#---------------CLASS_SEPERATING_LINE----------------

class Bank
  attr_accessor :bank_name, :name
  attr_writer :account, :amount
  attr_reader :amount
  
  def initialize(bank_name)
    @bank_name = bank_name
    puts "#{bank_name} bank has just been created!"
    @account = []
  end

  def open_account(account)
    @account.push(account)
    puts "#{account.name}, thanks for opening an account at #{self.bank_name}"
  end

  def bank_name
    @bank_name
  end

  def deposit
  end

  def withdraw()
  end


  def transfer()
  end

end

#----------------------------OUTPUT_BELOW------------------------------------------

#accounts_below 
woodforest = Bank.new("Woodforest")
wells_fargo = Bank.new("Well's Fargo")

me = Person.new("Brandon", 700)
aaron = Person.new("Aaron", 1200)

woodforest.open_account(me)
woodforest.open_account(aaron)

wells_fargo.open_account(me)
wells_fargo.open_account(aaron)





