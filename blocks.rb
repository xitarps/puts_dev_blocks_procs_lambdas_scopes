# class Array
#   def custom_map(&bloco)
#     result = []
#     self.each do |number|
#       result << bloco.call(number) if block_given?
#     end
#     result
#   end
# end

# arr = [1, 2, 3]


# p arr.map { |i| i * 2 }
# # [2, 4, 6]

# p arr.each { |i| i * 2 }
# # [1, 2, 3]

# p arr.custom_map { |i|  i * 2 }
# # [2, 4, 6]


class Render
  def self.call
    puts '<html>'
    puts '<body>'
    yield if block_given?
    puts '</body>'
    puts '</html>'
  end
end

class View
  def self.index
    puts '<h1>Título</h1>'
  end

  def self.home
    puts '<h1>Homepage</h1>'
  end
end

Render.call { View.home }