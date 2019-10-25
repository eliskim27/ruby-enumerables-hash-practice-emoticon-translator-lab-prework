# require modules here
require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)                  #emoticons is hash of arrays
  new_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |key,value|
    new_hash["get_meaning"][value[1]] = key
                #get_meaning hash is jap emotes keys pointing to eng emotes values
    new_hash["get_emoticon"][value[0]] = emoticons[key][1]
                #get_emoticon hash is eng emotes keys pointing to jap emotes values
  end
  new_hash
end


def get_japanese_emoticon(file, emoticon)
  load_library(file)
  jap_emotes = {}
  
  jap_emotes << new_hash["get_emoticon"][emoticon]
  
  end
  jap_emotes
end

def get_english_meaning
  # code goes here
end











