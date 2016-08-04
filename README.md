# Codility solutions

One Paragraph of project description goes here

## Inverse String Ruby 100%
```ruby
def solution(s)
  
  array = s.split("")
  array_reversed = array.reverse
  array_reversed.join("")
  
end
```


## Tree Height Ruby 100%
```ruby
def solution(tree)

	if !tree.l && !tree.r
		return 0
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
```

## Tree Height Swift 100%
```swift
import types

public func solution(tree: Tree?) -> Int {
    
    if (tree!.l == nil) && (tree!.r == nil) {
        return 0
    } else {
        return traverse_path (tree!, length: 0)
    }
    
}

public func traverse_path (tree: Tree, length: Int) -> Int {
    
    if tree.l == nil && tree.r == nil {
        
        return length
    
    } else {
        
        var length_l = 0
        var length_r = 0
        
        if (tree.l != nil) {
            length_l = traverse_path(tree.l!, length: length + 1)
        }
        
        if (tree.r != nil) {
            length_r =  traverse_path(tree.r!, length: length + 1)
        }
        
        return length_l > length_r ? length_l : length_r
        
    }
    
}
```