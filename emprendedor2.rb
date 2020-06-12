datos = ARGV
datos.to_s

if datos.length != 5
    puts 'Recuerde escribir el precio, el número de usuarios, el número de usuarios premiun, el número de usuarios gratuitos y los gastos después de ruby escape.rb'
else
    price = datos[0].to_f
    users = datos[1].to_f
    premium_users = datos[2].to_f
    spend = datos[4].to_f
    

    utilities_without_taxes = price * users - spend + (price * premium_users * 2)

    if utilities_without_taxes > 0
        utilities_with_taxes = utilities_without_taxes - ((utilities_without_taxes/100) * 35)
        puts utilities_with_taxes
    else
        puts utilities_without_taxes
    end

end
