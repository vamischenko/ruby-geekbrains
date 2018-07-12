puts %w[first second third].each_with_index.map { |k, i| [k.to_sym, k.delete('aeiouch').capitalize + "(#{i + 1})"] }.to_h
