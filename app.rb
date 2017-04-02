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
def upcase
  shin = "critical"
  puts shin.upcase  #문자열을 대문자로 바꾸어줌.
  #CRITICAL
end

def downcase
  shin = "CRITICAL"
  puts shin.downcase #문자열을 소문자로 바꾸어줌.
  #critical
end

def length
  shin = "critical"
  puts shin.length #문자열의 길이를 알려준다.
  #8
end

def reverse
  shin = "critical"
  puts shin.reverse #문자열을 뒤집어준다.
  #lacitirc
end

def capitalize
  shin = "critical"
  puts shin.capitalize #대문자를 만들어준다.
  #Critical
end

def include?
  shin = "critical"
  puts shin.include? "c" #""안에 문자를 포함하는지 아닌지를 boolean값으로 알려준다.
  #true

end

def gsub
  shin = "critical"
  puts shin.gsub(/r/,"c") #//안에있는 문자가 shin안에 있다면 ""문자로 바꾸어준다.
  #ccitical
end

def spilt
  shin = "cri tial"
  puts shin.spilt #문자를 띄어쓰기 전후로 분리하여 배열로 만들어준다.
  #'cri'tical'
end

def select
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.select{|x|x==i} #shin에서 select조건에 맞는 것을 출력함.
  #"i","i"
end

def reject
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.reject{|x|x==i} #shin에서 reject조건에 맞는 것은 출력하지 않음.
  #"c","r","t","c","a","l"
end

def push
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.push["h","i","t"] #shin에 h,i,t을 추가해줌.
  #["c","r","i","t","i","c","a","l","h","i","t"]
end

def detect
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.detect{|x|x=="i"} #shin에서 detect 조건에 맞는 것을 찾아줌.
  #"i","i"
end

def shift
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.shift(r) #shin에서 처음부터 r까지의 값을 삭제함.
  #["i","t","i","c","a","l"]
end

def unshift
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.unshift(k) #shin의 처음에 k를 추가함.
  #["k","c","r","i","t","i","c","a","l"]
end

def shuffle
  shin = ["c","r","i","t","i","c","a","l"]
  puts shin.shuffle #shin의 순서를 랜덤하게 섞어줌.
  #[random하게 섞임]
end

def collect
  shin = [3,6,9]
  puts shin.collect{|x|x+=2} #shin안에 있는 각각의 요소를 콜랙트의 조건에따라 편집하여준다.
  #[5,8,11]
end

def times
  shin = "critical"
  puts 3.times "#{critical}" #shin을 x.times 의 x회 반복시킴.
  #"critical""critical""critical"
end

def max
  shin = [1...100]
  puts shin.max #shin안의 최댓값을 찾아줌.
  #99
end

def min
  shin = [1...100]
  puts shin.min #shin안의 최솟값을 찾아줌.
  #2
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
