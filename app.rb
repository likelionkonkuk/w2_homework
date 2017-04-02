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

def _length
  hong = "seonhong" #문자열의 길이를 알고 싶을 때 사용한다.
  puts hong.length
  # => 8
end

def _reverse
  hong = "seonhong"
  puts hong.reverse # 문자열을 뒤집고 싶을 때 사용한다.
  # => gnohnoes
end

def _upcase
  hong = "seonhong"
  puts hong.upcase # 문자열을 대문자로 바꾸어준다.
  #=> SEONHONG
end

def _downcase
  hong = "SEONHONG"
  puts hong.downcase # 문자열을 소문자로 바꾸어준다.
  #=> seonhong
end

def _capitalize
  hong = "seonhong"
  puts hong.capitalize # 첫 글자를 대문자로 나머지 글자는 소문자로 바꿔준다.
  #=> Seonhong
end

def _include?
  hong = "seonhong"
  puts hong.include? "d" #해당 문자를 포함하는지를 아닌지를 boolean 값으로 알려준다.
  #=> false
end

def _gsub
  hong = "seonhong"
  puts hong.gsub(/e/,"a") #해당 문자를 다른 문자로 바꿔준다.
  #=> saonhong
end

def _split
  hong = "seon hong"
  puts hong.split # 문자열을 띄어쓰기 전후로 분리해서 배열을 만들어준다.
  #=> seon
  #=> hong
end

def _index
  hong = [1,2,3,4,5]
  puts hong[1] #인덱스 값을 불러주면 해당 위치에 있는 요소를 불러줌
  #=> 2
end

def _push
  hong = [1,2,3,4,5]
  puts hong.push(6) #배열에 요소 추가하기
  #=> 1,2,3,4,5,6
end

def _unshift
  hong = [1,2,3,4,5]
  puts hong.unshift(0) # 배열의 시작부분에 요소 추가하기
  #=> 0,1,2,3,4,5
end

def _shift
  hong = [1,2,3,4,5]
  puts hong.shift(4) # 배열의 요소 삭제하기 앞에서부터 값에 해당하는 것 까지 삭제함 따라서 5가 삭제됌
  #=> 1,2,3,4
end

def _pop
  hong = [1,2,3,4,5]
  puts hong.pop(3) #뒤에서 인자에 해당하는 수만큼 제거
  #=> 3,4,5
end

def _sort
  hong = [1,305,23,4,6]
  puts hong.sort!# 정렬하기, 변수에 메소드를 적용할 경우 그 변경된 값은 사본에 저장되지만 !를 써줄 경우 변경된 값이 원본에 저장된다.
  #=> 1,4,6,23,305
end

=begin
def _hash

  my_hash = { :key1=>value1,
              :key2=>value2,
              :key3=>value3
            }
  my_hash_Hash.new
  my_hash["key4"] = value4
  my_hash["key5"] = value5
  my_hash["key6"] = value6
  puts my_hash
end
=end

def _select
  hong = {a:100, b: 90, c:80, d:0}
  puts hong.select{|name,hong| hong < 90} #해쉬 안에 있는 값에 조건을 줘서 걸러낼 수 있다.

  #=>{:80, :d=0}
end

def _key
  hong = {a:100, b: 90, c:80, d:0}
  hong.each_key{|key| puts key} # 키값만 뽑아내기
  #=> a,b,c,d
end

def _value
  hong = {a:100, b: 90, c:80, d:0}
  hong.each_value{|key| puts key} # 값만 뽑아내기
  #=> 100,90,80,0
end

def _delete
  hong = {a:100, b: 90, c:80, d:0}
  puts hong.delete(:a) #이러면 100만 나옴 해시를 통해 키-값쌍을 제거하기
  puts hong
  #=> {:b=>90, :c=>80, :d=>0}
end

def _upto
  puts 1.upto(10){|i| print i," "} #하나씩 더해서 출력하기
  #=> 1 2 3 4 5 6 7 8 9 10 1
end

def _downto
  puts 10.downto(1){|i| print i, " "} # 하나씩 빼면서 출력하기
  #=> 10 9 8 7 6 5 4 3 2 1 10
end

=begin
def _respond_to? #메소드의 사용 여부를 논리값으로 반환
  [1,2,3,4,5,6,7,8,9,0]._respond_to?(:push)
  [1,2,3,4,5,6,7,8,9,0]._respond_to?(:to_sym)
  #=>
  #=>
end

=end

def _collect
  hong = ["1","2","3","4","5"] #배열의 전체 요소에 코드를 적용시킬 때 사용한다.
  puts hong.collect{|x| x + "!"}
  #=> 1! 2! 3! 4! 5!
end

def _map
  hong = ["1","2","3","4","5"]
  puts hong.map.with_index{|x,i| x *i} # _collect와 같다
  #=>    2 33 444 5555
end

=begin
def _floor
  hong =(8.234).floor(8) # 해당 숫자보다 작은 정수중에서 가장 큰 정수를 반환하며 인자와 함께 넘겨줄 경우 소수점자리까지 적용된다.
  puts hong
end
=end

def _object
  puts "seonhong".is_a? Symbol
  puts "seonhong".is_a? String
  puts "seonhong".is_a? Integer

#=> false
#=> true
#=> false

end



#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~





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
