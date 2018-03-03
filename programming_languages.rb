
def reformat_languages(p_languages)
  new_hash = {}
  p_languages.each do |style, languages|
    languages.each do |language, type|

      if new_hash.include?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = {type: type[:type], style: []}
        new_hash[language][:style] << style
      end

    end
  end
  new_hash
end

#hash1[:style][:language][:type]
#hash2[:language]{type, style}
