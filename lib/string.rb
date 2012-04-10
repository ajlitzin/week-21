class String
alias_method :old_empty?, :empty?
  def empty?(*splatargs)
    if splatargs.length > 0
      #puts "hey we overwrote it"
      gsub(/\s+/,"").length == 0
    else # use original empty
      #puts "hey original"
      old_empty? 
    end
  end

end
