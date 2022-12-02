arr = Array.new(5){100}
metka = []
arr.each_with_index do |name, index|
  if name > 0
    metka << index
  end
end

p metka
