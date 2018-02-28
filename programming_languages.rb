require 'pry'
def reformat_languages(languages)
  # your code here
  result = {}
  languages.each do |types, lang|
    lang.each do |l, type|
      result[l] = result[l].nil? ? type : result[l]
      arr = result[l][:style].nil? ? [] : result[l][:style]
      arr << types
      result[l][:style] = arr
    end
  end
  result

end

# result[:javascript][:style].nil? ? [] : result[l][:style]
