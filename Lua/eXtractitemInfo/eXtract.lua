LuaQ     @eXtract.lua           %      A@  @ $     $@  À  $    $À  @ $   $@ À $   $À @ $     @C A À À À  D @ @  @ À D @         dofile    itemInfo.lub    d_t_s_quotes    main    sortOutput    addUnidentified    addIdentified    addSlotClass    AddItemUnidentifiedDesc    AddItemIdentifiedDesc    AddFunction    file    io    open    ConverteditemInfo.lua    w    write    
-- >= 2017 clients require costume field.
-- Change it according to your need, default: 2017
-- Extracted using eXtractItemInfo/Dastgir
client_year = 2017

    close 	               
    @ @ A@  ^  K@ ÁÀ   ]  ^                gsub    "    \"     
                                       s     	           
        
)      À   AÀ FÀ @ À  Æ Á  À ÅA    @ ÜA¡  @þ À   ÁÁ FÂ @ À  Æ@Â  À Å    @ ÜA¡  @þÀÂ  C  I@Ã À   ÁÃ FÄ ÁÂ @        addUnidentified    unidentifiedDisplayName    unidentifiedResourceName    pairs    unidentifiedDescriptionName    AddItemUnidentifiedDesc    addIdentified    identifiedDisplayName    identifiedResourceName    identifiedDescriptionName    AddItemIdentifiedDesc    costume      addSlotClass 
   slotCount 	   ClassNum     )                                                                                                                                    ItemID     (      DESC     (      (for generator)          (for state)          (for control)          k 	         v 	         (for generator)          (for state)          (for control)          k          v                  !            @@   @À  A  À    A Á WA Á @A Á A@ý  @   	      file    write 	   tbl = {
       ð?    àÿï@   tbl     main    AddFunction                                                                      !         (for index)          (for limit)          (for step)          i               #   ,        Å   Ë@ÀA    ÁÁ    A  ÁB UÁÜ@        file    write    	[ $   ] = {
		unidentifiedDisplayName = " "   ",
		unidentifiedResourceName = " &   ",
		unidentifiedDescriptionName = {
        $   $   $   $   &   &   (   (   +   +   $   ,         a           b           c                -   6     

   Å   Ë@ÀA   ÁÁ    A UAÜ@        file    write !   		},
		identifiedDisplayName = "     ",
		identifiedResourceName = " $   ",
		identifiedDescriptionName = {
     
   .   .   0   0   2   2   5   5   .   6         a     	      b     	      c     	           7   @          A@  À Â  @  ÅB  Ü  A        file    write    		},
		slotCount =     ,
		ClassNum =     ,
		costume =  	   tostring    
	},
        8   8   :   :   ;   ;   <   <   <   <   ?   ?   8   @         a           b           c           d                B   D     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   C   C   C   C   C   C   C   C   C   D         a     	      b     	           F   H     
      @@  EÁ   \  @        file    write    			"    d_t_s_quotes    ",
     
   G   G   G   G   G   G   G   G   G   H         a     	      b     	           J   k            @@   @  AÀ           file    write    }

-- Extracted using eXtractItemInfo/Dastgir
function main()
	for ItemID, DESC in pairs(tbl) do
		if (client_year == 2017) then
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum, DESC.costume)
		else
			result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		end
		if not result then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
	end
	return true, "good"
end

       ð?       K   K   i   K   j   j   j   k           %                     
   !      ,   #   6   -   @   7   D   B   H   F   k   J   m   m   m   m   m   m   o   o   v   o   x   x   y   y   y   y           