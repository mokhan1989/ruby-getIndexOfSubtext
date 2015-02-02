#!/usr/bin/env ruby

  puts "Enter a sentence..."
  
  txt = gets.chomp
  
  puts "Now enter a matching subtext"
  
  subtxt = gets.chomp
  
  text = txt.downcase
  
  subtext = subtxt.downcase
  
  counter = 0
  
  total = 0
  
  sublength = subtext.length - 1
  
  print "Output: "
    for i in 0..text.length - 1
      temp = i
  
      if subtext == text[i]
          print temp, ","
          counter = counter + 1                 
      elsif subtext.length > 0
         total = sublength + i
          if subtext[0..sublength] == text[i..total]
          print i, ", "
          counter = counter + 1
          end
      end
    end   
    
    if counter == 0
      print "<no matches>"
    end
  





