datos = ARGV
datos.to_s

if datos.length != 3
    puts 'Recuerde escribir el precio, el número de usuarios y los gastos después de ruby escape.rb'
else
    price = datos[0].to_f
    users = datos[1].to_f
    spend = datos[2].to_f

    utilities_without_taxes = price * users - spend

    if utilities_without_taxes > 0
        utilities_with_taxes = utilities_without_taxes - ((utilities_without_taxes/100) * 35)
        puts utilities_with_taxes
    else
        puts utilities_without_taxes
    end

end
