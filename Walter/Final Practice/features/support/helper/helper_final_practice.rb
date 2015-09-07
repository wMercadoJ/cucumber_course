$greets_by_user = []

module Final_practice
  
  def Final_practice.get_list_items
      @item_list= Hash.new 
      @item_list = { "Item1" => 123, "Item2" => 456, "Item3" => 789, "Item4" => 999}

      return @item_list
  end

  def Final_practice.is_item_in_list(item)      
      return @item_list.has_key?("#{item}")    
      
  end
  
end