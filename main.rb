p "Hello, I'm a temperature converter."
converter = ""

loop do
  p "Which one would you like to convert? (Celsius/Fahrenheit)"
  converter = gets.chomp.downcase

  if converter == "celsius" || converter == "fahrenheit" || converter == "c" || converter == "f"
    break
  else
    p "Please enter a valid input."
  end
end

if converter == "celsius" || converter == "c"
  p "Enter the temperature in Celsius:"
  celsius = gets.chomp.to_f
  fahrenheit = (celsius * 9/5) + 32
  fahrenheit = fahrenheit.round(2)
  p "#{celsius}°C is #{fahrenheit}°F"
else
  p "Enter the temperature in Fahrenheit:"
  fahrenheit = gets.chomp.to_f
  celsius = (fahrenheit - 32) * 5/9
  celsius = celsius.round(2)
  p "#{fahrenheit}°F is #{celsius}°C"
end
