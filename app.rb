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

def sangdae_length #배열이나 문자열의 길이를 측정하는 메소드 
  a = [3,5,7]
  b = "sangdae"
  puts a.length
  puts b.length
end
# => 3
# => 7

def sangdae_reverse #문자열을 뒤집고 싶을때 사용 
  a = "sangdae"
  puts a.reverse
end
# =>

def sangdae_upcase #문자열을 대문자로 
  a = "sangdae"
  puts a.upcase
end

def sangdae_downcase #문자열을 소문자로 
  a = "SANGDAE"
  puts a.downcase
end

def sangdae_capitalize #첫 단어만 대문자로 
  a = "sangdae"
  puts a.capitalize
end

def sangdae_include #해당 단어 포함 여부
  a = "sangdae"
  puts a.include? "a"
  puts a.include? "f"
end

def sangdae_gsub #문자열 속 해당 단어 변환
  a = "sangdae"
  puts a.gsub(/a/, "u")
end

def sangdae_split #문자열 나누기
  a = "sang dae"
  b = "sangdae"
  puts a.split 
  puts b.split
end

place1 = "삼청동" #여기도 왜 안될까요...ㅠㅠ
place2 = "명동"
place3 = "인사동"
def date_place (place)
  puts place
end
date_place(place1) 
date_place(place2) 
date_place(place3) 

def who_loves_sangdae #왜 안될까요...ㅠㅠ 
  return "yougeine"
end
who_loves_sangdae

def love_sangdae
  puts "yougeine"
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
