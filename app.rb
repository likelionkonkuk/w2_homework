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
def cheers #맥주 좋아요 예이~~
  puts "beers! yeah!"
end

def jihoon_select #참이되는 모든 요소를 컬렉션으로 리턴하는 메소드
  singer = ["아이유", "AOA", "씨스타", "IOI", "여자친구"]
  puts singer.select{|item| item.length <= 3}
  # "아이유", "AOA", "씨스타", "IOI"
end

def jihoon_new #배열에 새로운 값을 추가하는 메소드
  a = []
  puts a.new {"hello world!"
  }
  # a 배열에 "hello world!"가 추가된다.
end

def jihoon_reject #select와 반대로 참인결과를 제외한 컬렉션을 리턴하는 메소드
  singer = ["아이유", "AOA", "씨스타", "IOI", "여자친구"]
  puts singer.reject{|item| item.length <= 3}
  # "여자친구"
end

def jihoon_find #넘겨진 블럭을 평가해서 첫번째로 참이나온 결과를 찾는 메소드
  singer = ["아이유", "AOA", "씨스타", "IOI", "여자친구"]
  puts singer.find{|item| item.length <= 3}
  # "아이유"  
end

def jihoon_find_all #넘겨진 블럭을 평가해서 참이나온 결과를 모두 찾는 메소드
  singer = ["아이유", "AOA", "씨스타", "IOI", "여자친구"]
  puts singer.find_all{|item| item.length <= 3}
  # "아이유", "AOA", "씨스타", "IOI"
end

def jihoon_to_f #객체를 실수화 하는 메소드
  a = 5
  puts a.to_f
  # 5.0
end

def jihoon_to_s #객체를 문자열화 하는 메소드
  a = 2
  b = "5"
  puts a.to_s + b
  # 25
end

def jihoon_to_i #객체를 정수화 하는 메소드
  a = 2
  b = "5"
  puts a * b.to_i
  # 10 
end

def jihoon_collect #배열안에 있는 모든 요소들을 대상으로 블록 안의 수식을 적용하는 메소드
  num = [1,2,3]
  puts num.collect { |num| num ** 2}
  # [1, 4, 9]가 출력될 것이다.
end

def jihoon_times #해당 문자열이나 숫자를 x회 반복하는 메소드
    string = "Snake in my boot!"
    puts 5.times "#{string}"
end

def jihoon_gets #엔터키를 누르기 전까지 키보드로 입력한 내용을 보내주는 메소드
  puts "이름을 입력해주세요"
  name = gets
  puts "안녕 #{name}아!"  
end

def jihoon_chomp #문자열 맨 뒤에 붙어있는 엔터키를 무시하도록 만드는 메소드
  puts "이름을 입력해주세요"
  name = gets.chomp
  puts "안녕 #{name}아! 이번엔 엔터를 빼고 나오지?"   
end

def jihoon_reverse #문자열을 거꾸로 뒤집어주는 메소드
  word = "revese me"
  puts word.revese
  #"em esever"
  #한글은 3번 바꾸게 되면 깨져나온다고 한다. 한글이 2바이트란걸 몰라서 그렇기 때문
end

def jihoon_upcase #소문자를 대문자로 바꾸어주는 메소드
  word = "hello"
  puts word.upcase
  #"HELLO"
end

def jihoon_downcase #대문자를 소문자로 바꾸어주는 메소드
  word = "HELLO"
  puts word.downcase
  #"hello"  
end

def jihoon_capitalize #문자열 맨 앞부분만 대문자로 바꾸어주는 메소드
  word = "jihoon"
  puts word.capitalize
  #"Jihoon"  
end

def jihoon_swapcase #문자열의 대소문자를 반대로 바꿔주는 메소드
  word = "PiCKaCHU"
  puts word.swapcase
  #"pIckAchu"  
end

def jihoon_count #리시버 컬렉션의 요소수를 알려주는 메소드
  num = (1..100)
  puts num.count
  # 100
end

def jihoon_grep #주어진 패턴에 매칭되는 결과를 알려주는 메소드
  people = ["미연", "민우", "다혜", "지훈", "명상", "지연", "현경", "승하", "선홍", "상대"]
  puts people.grep(/지/)
  # "지훈", "지연""
end

def jihoon_include? #인자로 넘긴 객체가 리시버 객체에 있는지 확인하는 메소드
  num = (1..100)
  puts num.include? 77
  # true
end

def jihoon_none? #모든 요소에 대해 블럭을 평가했을때 참이 하나도 없으면 참이되는 메소드
  num = (1..100)
  puts num.none? 0
  # true
  # 사실은 위의 예제보다는 다른게 나을 수 있다는 생각 회원가입시 휴대폰번호 확인시 length를 이용해 참거짓 판단하는게 더 좋아보임
end

def jihoon_one? #리시버 컬렉션의 평가결과가 단 하나만 참인지 확인하는 메소드
  puts ["hello", "world"].one?
  #false
  puts [nil, false, "world"].one?
  #true
end

def jihoon_all? #리시버 컬렉션의 모든 요소가 블럭을 평가했을 때 참을 리턴하는지 결과를 확인하는 메소드
  singer = ["exo", "여자친구", "AOA", "빅뱅"]
  puts singer.all? {|item|.class == string}
  #true
end

def jihoon_zip #여러 컬렉션을 교차에서 조합해주는 메소드
  a = [1, 2, 3]
  b = [4, 5, 6]
  puts a.zip(b)
  # [[1, 4], [2, 5], [3, 6]]
  # 한개 이상의 컬렉션을 추가할 수도 있음
  # 조합되는 갯수는 리시버 컬렉션을 기준으로 정해짐
end

def jihoon_group_by #블럭을 평가한 겨로가가 같은 값들을 해시로 묶어 리턴하는 메소드
  num = [1..10]
  puts num.group_by {|i| i % 2}
  # {1 => [1, 3, 5, 7, 9] 0 => [2, 4, 6, 8, 10]}
  # 리턴값이 해시임!!!
end

def jihoon_partition #특정 조건으로 리시버 컬렉션을 분할하는 메소드
  num = [1..10]
  puts num.partition{|i| num.prime? i}
  # [[2, 3, 5, 7,], [1, 4, 6, 8, 10]]
end

def jihoon_minmax #최소값과 최대값을 배열로 리턴
  num = [1..100]
  puts num.minmax
  # [1, 100]
end

def jihoon_max #최대값을 리턴
  num = [1..100]
  puts num.max
  # 100
  # 블럭을 넘겨 사용할 수 있음
end

def jihoon_min #최소값을 리턴
  num = [1..100]
  puts num.min
  # 1
  # 블럭을 넘겨 사용할 수 있음
end

def jihoon_cycle #리시버를 특정 횟수만큼 반복하는 메소드
  num = [1,2,3]
  puts num.cicle(2)
  # 1, 2, 3 1, 2, 3
end

def jihoon_each #열거자 메소드
  num = [1, 2, 3, 4]
  num.each{|i| puts i}
  # 1 2 3 4
end

def jihoon_gsub #해당하는 문자를 다른 문자로 바꾸어준다
  word = "abracadabra"
  puts word.gsub(/a/, "d")
  # dbradcdddbrd
end

def jihoon_map #collect와 같음
  num = [1,2,3]
  puts num.collect { |num| num ** 2}
  # [1, 4, 9]가 출력될 것이다.
  # 다만 each와 다른점은 each는 각요소를 한번씩 평가하지 컬렉션을 변경한 값을 리턴하진 않음
  # map은 리시버와 평가 결과가 달라짐
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
