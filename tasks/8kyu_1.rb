=begin

Description:
Remove all exclamation marks from the end of sentence.

Examples
remove("Hi!") === "Hi"
remove("Hi!!!") === "Hi"
remove("!Hi") === "!Hi"
remove("!Hi!") === "!Hi"
remove("Hi! Hi!") === "Hi! Hi"
remove("Hi") === "Hi"    
=end


def remove_exclamation_marks(s)
    while s[-1] == "!"  # while last char is '!' 
      s.chomp!("!")     # delete ! from the end in-place
      end
    s                   # return result string
  end


