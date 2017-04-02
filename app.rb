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
	#마실 것을 출력하는 메소드
	puts "What do you want to drink?"
	drink = gets.chomp;
	puts "#{drink}! yeah!"
end

def Hello
	#이름 붙여서 인사해주는 메소드
  name = gets.chomp
  puts "Hello, #{name}"
end

def putKey
	#숫자 네 개를 입력하면 각자 번호를 매겨주는 메소드

	arr = [];

	puts "Enter 4 integers: "
	for i in 0..4
 		arr[i] = gets.chomp
 	end

	hash = Hash.new

	for i in 1..4
	    hash[i] = arr[i - 1]
	end

	puts hash

end

def hand_shake
	#몇 명인지 입력하면 몇번 악수하는지 알아내는 메소드
	puts "How many people in there?(puts integers)"

	n = gets.chomp;

	for i in 1..(n-1)
		sum += i
	end

	puts "There will be " + i + " times hand-shaking."
end

def WhoIsMafia
	#랜덤으로 마피아를 지정해서 고른 사람이 마피아인지 알아내는 메소드
	arr = [];

	for i in 0..4
		arr[i] = rand(10);
	end

	puts "You are the police."
	puts "There is 5 persons."
	puts "Say #(integers) of person who you want to check."

	number = gets.chomp;

	if arr[number] <= 2
		puts "Mafia"
	else
		puts "Citizen"
	end
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
