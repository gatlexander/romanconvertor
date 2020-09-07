def converter(numeral)
	if (numeral == 'M')
        return 1000
	end
    if (numeral == 'D')
        return 500
	end
    if (numeral == 'C')
        return 100
	end
    if (numeral == 'L')
        return 50
	end
    if (numeral == 'X')
        return 10
	end
    if (numeral == 'V')
        return 5
	end
    if (numeral == 'I')
        return 1
	end
end


def fromRoman(romanNumber)

	allowed = ['M','D','C','L','X','V','I']

    i=0
    arabicNumber=0
 
	romanNumber.each_char { |c|
		unless allowed.include?(c)
		
		raise TypeError.new "Please enter a valid roman numeral"
		end
		
	}


		while (i < romanNumber.length)
			num1 = converter(romanNumber[i])

			if (i + 1 < (romanNumber.length))

				num2 = converter(romanNumber[i+1])

				if (num1 >= num2)

					arabicNumber += num1
					i += 1
				else
					arabicNumber += (num2 - num1)
					i += 2
				end
			else
				arabicNumber += num1
				i += 1
			end
		
		return arabicNumber
		raise NotImplementedError
	end
end



def toRoman(arabicNumber)
    
	values =  { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC',
           50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }

    romanNumber = ''
	
	if (arabicNumber < 1 || arabicNumber > 3999)
		raise RangeError.new "Please enter a number between from 1 - 3999"
	else
		while (arabicNumber > 0)
			for i, r in values
				while (arabicNumber >= i)
					romanNumber += r
					arabicNumber -= i
				end
			end
		return romanNumber
		raise NotImplementedError
		end
	end
end