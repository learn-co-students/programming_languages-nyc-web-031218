require 'pry'

def reformat_languages(languages)
  # your code here
  array=[]
  new_hash={}
  languages.each do |style, language|
    language.each do |name, attribute|
      # binding.pry
      if !new_hash.keys.include?(name)
        new_hash[name]= attribute
        new_hash[name][:style]=[style]
        # binding.pry
      else
        new_hash[name][:style] << style
      # binding.pry
      end
    end
  end
  new_hash
  # binding.pry
end
