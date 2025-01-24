# def something(blk_1, blk_2)
#   blk_1.call
#   blk_2.call
# end

# bloco_a = Proc.new { puts 'block chamado' }
# bloco_b = Proc.new { |nome| puts "outro block chamado por #{nome}" }

# something(bloco_a, bloco_b)

# def something(&block)
#   binding.irb
#   block.call
# end

# something { puts 'batata'}


def a
  proc = Proc.new do
    puts 'iniciando proc'
    return
    puts 'encerrando Proc'
  end
  puts 'iniciando a'
  proc.call
  puts 'encerrando a'
end

def b
  puts 'iniciando b'
  a
  puts 'encerrando b'
end

b