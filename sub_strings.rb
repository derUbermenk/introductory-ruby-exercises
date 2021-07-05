def substrings(string, dictionary)

    string.downcase!
    result_arr = {}

    dictionary.each {
        |substring|
        num_occurence = string.scan(substring).length
        (result_arr[substring] = num_occurence) unless (num_occurence == 0)
    }

    result_arr
end
