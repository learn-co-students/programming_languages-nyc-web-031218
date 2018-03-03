
def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |style, lang|
    arr = [style]
    lang.each do |l, type|
      hash[l] = type
    end
  end
  hash.each do |lan, sty|
    if (languages.values[0].keys & languages.values[1].keys).include?(lan)
      sty[:style] = [:oo, :functional]
    elsif languages.values[0].keys.include?(lan) && !languages.values[1].keys.include?(lan)
      sty[:style] = [:oo]
    else
      sty[:style] = [:functional]
    end
  end
end
  # hash.each do |l2, t2|
  #   t2[:style] = arr
  # end
#   hash.each do |lan, sty|
#     if languages.values.contains?
#   end
#   return hash
# end
