def reformat_languages(languages)
 result = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      if !result.keys.include?(lang)
        result[lang] = type_hash
        result[lang][:style] = [style]
      else
        result[lang][:style] << style
      end
    end
  end
  result
end