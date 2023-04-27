require "minruby"

def sum(tree)
    if tree[0] == "lit"
        tree[1]
    else
        left = sum(tree[1])
        right = sum(tree[2])
        left + right
    end
end

# 計算式の文字列を読み込む
str = gets

# 計算式の文字列を計算の木に変換する
tree = minruby_parse(str)

answer = sum(tree)

p(answer)