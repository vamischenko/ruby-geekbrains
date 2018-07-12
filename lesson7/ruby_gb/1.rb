hsh = { red: 'красный', orange: 'оранжевый', yellow: 'желтый',
        green: 'зеленый', blue: 'голубой', indigo: 'синий',
        violet: 'фиолетовый' }.map { |k, v| [v, k.to_s] }.to_h

puts hsh
