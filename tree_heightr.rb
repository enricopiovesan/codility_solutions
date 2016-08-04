def solution(tree)
  
	if !tree.l && !tree.r
		return -1
	else
		return traverse_path(tree, 0)
	end
	
end
	
def traverse_path(tree, length)
	
	return length if(!tree.l && ! tree.r)
	
	length_l,length_r = 0
		
	if(tree.l)
		length_l = traverse_path(tree.l, length + 1)
	end
	
	if(tree.r)
		length_r =  traverse_path(tree.r, length + 1)
	end
		
	return length_l > length_r ? length_l : length_r
	
end