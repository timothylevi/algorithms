def silly_years(year)
  years = []

  until years.length == 10
    digits = year.to_s

    first_two, middle_two, last_two =
      digits[0..1], digits[1..2], digits[2..-1]

    [first_two, middle_two, last_two].map(&:to_i)

    years << year if (first_two + last_two) == middle_two

    year += 1
  end

  years
end