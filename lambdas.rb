# def something_proc(proc)
#   proc.call('Xita')
# end

# def something_lambda(lbd)
#   lbd.call('Xita')
# end

# proc = Proc.new { |nome| puts "Proc - meu nome é #{nome}" }
# # lbd = ->(nome){ puts "Lambda - meu nome é #{nome}"  }
# lbd = lambda do |nome|
#   puts "Lambda - meu nome é #{nome}" 
# end

# something_proc(proc)
# something_lambda(lbd)


# def a
#   proc = Proc.new do
#     puts 'iniciando proc'
#     return
#     puts 'encerrando Proc'
#   end

#   lmbd = lambda do
#     puts 'iniciando lambda'
#     return
#     puts 'encerrando lambda'
#   end


#   puts 'iniciando a'
#   # proc.call
#   lmbd.call
#   puts 'encerrando a'
# end

# def b
#   puts 'iniciando b'
#   a
#   puts 'encerrando b'
# end

# b

class Menu
  def initialize
    @options = {
      1 => ->(){ start }
    }
  end

  def start
    puts 'starting!!!!!!!!!!!!'
  end

  def choose
    puts 'ecolha uma opção'
    puts '1 - start'
    number = gets.chomp.to_i
    @options[number].call
  end
end

menu = Menu.new
menu.choose