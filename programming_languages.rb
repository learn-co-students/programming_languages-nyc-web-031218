require 'pry'

def reformat_languages(languages)
  # your code here
  array=[]
  new_hash={}
  languages.collect do |style, language|
    language.collect do |name, attribute|
      if new_hash[name]==:javascipt 
        new_hash[name]={attribute: "interpreted", style: [:oo, :functional]}
      else 
        new_hash[name]={attribute: "interpreted", style: [:oo]}
      end 
    end
  end
  new_hash
  binding.pry
end
