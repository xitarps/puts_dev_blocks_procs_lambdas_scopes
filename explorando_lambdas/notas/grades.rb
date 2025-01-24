notas = {
  atividades: {
    semana_01: {real: 0   , 	original: 0},
    semana_02: {real: 1   , 	original: 1},
    semana_03: {real: 2.9 , 	original: 3},
    semana_04: {real: 3   , 	original: 3},
    semana_05: {real: 2   , 	original: 2},
    semana_06: {real: 1.93,  	original: 2},
    semana_07: {real: 2.79,  	original: 3},
    semana_08: {real: 3.26,  	original: 4},
    semana_09: {real: 5   , 	original: 5},
    semana_10: {real: 2.65, 	original: 3},
    semana_11: {real: 2.95, 	original: 3},
    semana_12: {real: 2.45,   original: 3},
    semana_13: {real: 1.5 ,   original: 3}
  },
  softskill: 20.00,
  projeto:   25.97
}

atividades = notas[:atividades].values

valor_maximo_das_atividades = 35
values_from_key = ->(key) { ->(hash){ hash[key] } }
valor_total_dos_exercicios = atividades.map(&values_from_key[:original]).compact.sum
valor_total_das_notas = atividades.map(&values_from_key[:real]).compact.sum
apenas_atividades_com_valor = atividades.select{ |i| i[:real] != nil || i[:original] != nil }

puts "pontos atribuidos para as atividades: #{valor_total_dos_exercicios}"
puts "pontos restantes: #{valor_maximo_das_atividades - valor_total_dos_exercicios}"
puts "============================================================================="
puts "notas das atividades corrigidas #{valor_total_das_notas} de #{apenas_atividades_com_valor.map{ |i| i[:original]}.compact.sum}"
puts "nota de softskills #{ notas[:softskill] }"
puts "nota do projeto final #{ notas[:projeto] }"
puts "============================================================================="
puts "nota total: #{ valor_total_das_notas + notas[:softskill] + notas[:projeto]}"
