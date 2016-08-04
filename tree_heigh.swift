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
