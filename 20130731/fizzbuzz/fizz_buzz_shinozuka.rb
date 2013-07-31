# coding: utf-8

# 最初のプレイヤーは「1」と数字を発言する。次のプレイヤーは直前のプレイヤーの次の数字を発言していく。
# ただし、3で割り切れる場合は 「Fizz」, 5で割り切れる場合は 「Buzz」, 両者で割り切れる場合は 「Fizz Buzz」を数の代わりに発言しなければならない

print "数値を入力してください:"

num = gets.chop
unless num =~ /\D/
  (1..num.to_i).each do |i|
    str = []
    str << "Fizz" if i % 3 == 0
    str << "Buzz" if i % 5 == 0
    str << i if str.empty?
    puts str.join(' ')
  end
else
  puts "数値以外は入力しないでください"
end
