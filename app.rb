=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 만들기 예시
def miyeon_length   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
  # => 3
  # => 8
end

#메소드 주석 (여기부터 메소드를 작성하세요.)
def cheers
  puts "beers! yeah!"
end
#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

def downcase #1. 문자를 소문자로 만들어 주는 메소드
 a = "SEUNGHA"
 puts a.downcase
#=>seungh
 end 

def upcase #2. 문자열을 대문자로 만들어주는 메소드
a = "seungha"
puts a.seungha
#=>SEUNGHA
end

def count #3. 문자열을 세어주는 메소드
a="seungha"
puts seungha.count
#=>6
end

def unshift #4. 배열의 처음에 원소를 추가해주는 메소드
arr = [1,2,3,4,5]
puts arr.unshift(0)
#=>0,1,2,3,4,5
end

def push #5.배열의 마지막에 원소를 추가해주는 메소드
arr = [1,2,3,4,5]
puts arr.push(6)
#=>1,2,3,4,5,6
end

def insert #6. 배열의 n번 위치에 원소를 추가해주는 메소드
arr = [1,2,3,4,5]
puts arr.insert(3, 'seungha')
#=>[1,2,3,'seungha',4,5]
end

def at #7. 인덱스로 원하는 색인에 접근할 수 있게 해주는 메소드
arr = [2,3,4,5]
puts arr.at(3)
#=>5
end

def first #8. 배열의 처음으로 접근할 수 있게 해주는 메소드
arr = ['승하','현경','미연','선홍']
puts arr.first
#=>승하
end

def last #9. 배열의 마지막으로 접근할 수 있도록 해주는 메소드
arr = ['승하','현경','미연','선홍']
puts arr.last
#=>선홍
end

def drop #10. n번쨰까지 원소를 drop한 후 반환하는 메소드
arr = [1,2,3,4,5,6,7,8,9]
puts arr.drop(4)
#=>5,6,7,8,9
end

def reverse #11. 문자열을 반대로 바꾸는 메소드
arr = "seungha"
puts arr.reverse 
#=> ahgnues
end

def capitalize #12. 문자열의 첫 글자를 대문자로 나머지는 소문자로 바꾸어 주는 메소드
a = "seungha"
puts a.capitalize
# => Seungha
end

def gsub #13. 특정문자를 찾아 다른 문자로 바꾸고 싶을 때 사용한다. 
a = "likelion"
puts a.gsub(/i/,"a")
#=>lakelaon
end

def split #14. 문자열을 띄어쓰기 전후로 분리해서 배열을 만들어주는 메소드
a = "Hello Seungha!"
puts a.split 
#=>"Hello""Seungha!"
end

def pop #15. 뒤에서부터 인자에 해당하는 수만큼 나타내주는 메소드
arr = ["pizza","chicken","coffee","icecream","chocolate"]
puts arr.pop(2)
#=> "icecream""chocolate"
end

def shift #16. 앞에서부터 인자에 해당하는 수만큼 나타내주는 메소드
arr = ["pizza","chickn","coffee","icecream","chocolate"]
puts arr.shift(2)
#=> "pizza" "chicken"
end

def sort #17.앞에서부터 순서대로 배열해주는 메소드
arr = [3,4,5,2,1]
puts arr.sort
#=> 1,2,3,4,5
end

def select #18.{}에 조건을 추가해서 걸러내주는 메소드
grade = { 
	a: 100,
	b: 90,
	c: 80,
	d: 70
	}
puts grade.select {|name,grade| grade<90}
#=>{:c=>80, :d=>70}
end

def each_key #19. 해쉬에서 키만 뽑아내는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}
var_hash.each_key {|key| puts key}
#=>"key1", "key2", "key3","key4","key5","key6"
end

def each_value #20. 해쉬에서 값만 뽑아내는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}
var_hash.each_value {|value| puts value}	
#=>1,2,"likelion","konkuk","true","false"
end

def delete #21. 해시의 키를 통해 키-쌍값을 제거하는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

var_hash.delete(:key4)
puts var_hash
#=>{:key1=>1, :key2=>2, :key3=>"likelion", :key5=>true, :key6=>false}
end

def upto #22. 하나씩 더하면서 반복을 진행하는 메소드
1.upto(10) {|i| print i,""}
end
#=>12345678910

def downto #23. 하나씩 빼면서 반복을 진행하는 메소드
10.downto(1) {|i| print i,""}
#=>10987654321
end

def respond_to #24. 메소드를 사용할 수 있는지 논리값을 반환하여 알려줌
print [2,3,4] .respond_to?(:push)
print [3,4,5] .respond_to?(:to_sym)
#=>true,false
end

def collect #25. 배열 전체 요소에 코드를 적용시키는 메소드
a = ["승하","현경","선홍","미연"]
puts a.collect { |x|x + "cheer up!" }
#=>"승하cheer up!","현경cheer up!","선홍cheer up!","미연cheer up!"
end

def map #26. 배열 전체 요소에 코드를 적용시키는 메소드
a = ["a","b","c","d","e"]
puts a.map.with_index {|x,i| x*i}
#=>"","b","cc","ddd","eeee"
end

def floor #27. 해당 숫자보다 작은 정수중에서 가장 큰 정수를 반환하는 메소드
a = 3.253456
b = 3.875466
puts a.floor
puts b.floor
#=>3,3
end

def size #28.해당 열의 크기를 알기 위한 메소드
a = "likelion"
puts a.size
#8
end

def join #29.배열의 값들을 하나의 문자열로 출력하는 메소드
a = ["seung","ha"]
puts a.join
#=>"seungha"
end

def chomp #30. 문장의 맨 끝 단어를 지우는 메소드
a = "Kim Seung Ha Like Lion"
puts a.chomp "Lion"
#=>Kim Seung Ha Like
end

def chop #31. 문장의 맨 끝 글자를 지우는 메소드 
a = "Kim Seung Ha"
puts a.chop
#=>Kim Seung H
end

def each_char #32. 글자 사이사이 공백이나 같은 글자를 삽입하는 메소드 
a = "seungha"
a.each_char {|c| print c, ' '}
a.each_char {|c| print c, '2'}
#=>s e u n g h a
#=>s2e2u2n2g2h2a2
end

def concat #33.문자열에 특정 문자열을 추가해주는 메소드
a = "Like"
puts a.concat " lion"
puts a.concat " is very fun!"
#=>Like lion
#=>Like lion is very fun!
end

def start_with? #34.문자열이 특정 단어로 시작하는지 알려주는 메소드
a = "like lion"
puts a.start_with?("like")
puts a.start_with?("lion")
#=>true
#=>false
end

def clear #35.전체 내용을 삭제해주는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}
puts var_hash.clear
#=>{}
end

def values #36.키값에 대응하는 값을 출력하는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}
puts var_hash.values
#=>1,2,"likelion","konkuk",true,false
end

def value #37.키 값의 존재유무를 확인하여 trud/false값을 출력하는 메소드
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

puts var_hash.value?(1)
puts var_hash.value?(3)
#=>true, false
end

def keys #38.각 해쉬의 키값을 출력하는 메소드
var_hash = {
 key1: 1,
 key2: 2,
 key3: "likelion",
 key4: "konkuk",
 key5: true,
 key6: false
}
puts var_hash.keys
#=>"key1","key2","key2","key3","key4","key5",:"key6"
end

def round #39. 반올림 해주는 메소드
a = 123.345
b = 123.789

puts a.round
puts b.round
#=>123,124
end

def << #40. 새로운 문자열을 합해주는 메소드
a ="Hello"
puts a<<" world"
#=>"Hello world"
end

def empty #41. 문자열이 빈 문자열인지 아닌지를 판별하는 메서드 
a = "Hello"
b = ""
puts a.empty?
puts b.empty?
#=>false,true
end

def swapcase #42. 대문자는 소문자로 소문자는 대문자로 바꾸어 주는 메소드
a = "sEUNG hA"
puts a.swapcase
#=>Seung Ha
end

def casecmp #43. 해당 문자열과 동일할 경우 :0 / 포함할 경우 :1 / 다른 경우 :-1을 리턴하는 메소드
a ="Like lion"
puts a.casecmp("Like")
puts a.casecmp("seungha")
#=>1,-1
end

def partition #44 .파라미터로 전달되는 문자열을 기준으로 파티션을 나누는 메소드
a = "kimseungha"
puts a.partition("s")
#=>"Kim","s","eungha"
end

def merge #45. s_hash를 기준으로 K_hash의 key value를 합침, 중복되는 것이 있으면 s_hash 의 value로 저장
s_hash = {a:1, b:2}
k_hash = {a:1, b:2, c:3}
puts s_hash.merge(k_hash)
#=>{a=>1 , b=>2, c=>3}
end

def slice
a = [1,2,3,4,5] #46.정해진 범위에 해당하는 배열 요소를 가져오는 메소드
puts a.slice(2..4)
#=>3,4,5
end

def map #47. 배열 요소를 하나씩 빼내어 일정의 수식에 의해 연산을 한 후 다시 배열을 만드는 메서드 
a = [3,4,5,7,9] 
puts a.map{|a|a**2}
#=>9,16,25,49,81
end

def reject #48. 해당되지 않는 값을 추려주는 메소드
a = [1,2,3,4,5]
puts a.reject{|a|a>3}
#=>1,2,3
end

def collect #49. 배열의 요소를 하나씩 꺼내어 일정의 연산을 한 후 배열을 만들어 주는 메소드
a = [1,2,3,4,5]
puts a.collect{|a|a*2}
#=>2,4,6,8,10
end

def sample #50, 배열 요소 중 랜덤으로 지정한 갯수를 뽑아 하나의 배열로 만들어 주는 메서드
a = [1,2,3,4,5]
puts a.sample(3)
#=>3,5,2
end

def index #51. index의 파라미터로 전달되는 문자열이 해당 문자열에서 몇번째부터 시작되는지 리턴받는 메서드, 
a = "seungha"
puts a.index("eu")
#=>1
end

def prepend #52. 해당 문자열 앞에 파라미터로 전달되는 ("likelion")을 붙임
a = "seungha"
puts a.prepend(" likelion")
#=>"lilelion seungha"
end

def sub #53.해당 문자열에서 파라미터 중 ("l")에 해당되는 값을 파라미터("k")의 값으로 변경시켜 주는 메소드
a = "likelion"
puts a.sub("l","k")
#=>"kikelion"
end

def lstrip #54. 해당 문자열의 시작과 끝에 있는 빈공간을 제거해주는 메서드 
a = "     seung ha   "
puts a.lstrip
#=>"seung ha"
end

def ljust #54.해당 문자열을 정해진 길이로 만들기 위해 특정 문자열을 붙이는 메서드
a = "seungha"
puts a.ljust(20,"1234")
#=>seungha1234123412341
end

def uniq #55. 배열 요소 중 중복되는 것이 있으면 중복 요소를 하나로 모은 뒤 나머지는 다 삭제하고 리턴하는 메소드
a = [1,1,2,2,2,3,3,3,4,4,5,5,2]
puts a.uniq
#=>1,2,3,4,5
end

def cycle #56.  n번 배열 요소를 각각 일정 반복하는 메소드
a = [1,2,3,4,5]
a.cycle(2) {|a| puts a}
#=>1,2,3,4,5,1,2,3,4,5
end

def shuffle #57. 결과값 랜덤, 배열 요소 순서를 뒤섞는 메소드
a = [1,2,3,4,5]
puts a.shuffle
#=>35124
end

def take #58. 배열 첫번째 요소부터 n개까지만 뽑아 배열을 만드는 메소드
a = [1,2,3,4,5]
puts a.take(2)
#=>1,2
end

def take_while #59. 배열 요소 중 일정의 연산에 해당하는 배열 요소 index에 맞는 요소만 꺼내와 배열을 만드는 메소드 
a = [1,2,3,4,5]
puts a.take_while {|i|i<3}
#=>1,2
end

def invert #60.해시에 저장되어 있는 key-value관계를 뒤집음, 해시 전체에만 사용 가능 
var_hash = {
 key1: 1,
 key2: 2,
 key3: "likelion",
 key4: "konkuk"}
 puts var_hash.invert
 #=> {1=>:key1, 2=>:key2, "likelion"=>:key3, "konkuk"=>:key4}
end

def replace #61.해쉬에 저장된 모든 key-value 쌍을 지우로replace()메서드의 파라미터로 전달하는 해시를 저장하는 메소드 
var_hash = {
 key1: 1,
 key2: 2,
 key3: "likelion",
 key4: "konkuk"}
 puts var_hash.replace({a:100})
 #=>{a=>100}
end




puts "==================================="
puts "=========메소드 사전만들기========="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end
