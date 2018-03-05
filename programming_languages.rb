def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_list|
    language_list.each do |language, attribute|
      attribute.each do |type, type_style|
        
        if language == :javascript
          new_hash[language] = {:type => type_style, :style => [:oo, :functional]}
        else 
          new_hash[language] = {:type => type_style, :style => [style]}
        end
        
      end
    end
  end
  
  new_hash
end


