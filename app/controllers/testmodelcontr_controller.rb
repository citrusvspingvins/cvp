# coding: utf-8
class TestmodelcontrController < ApplicationController
  def new
  	 @autors = ["уберт алёна", "антон лаптев"]
     @title = "Результаты голосования"
  	@n = Testmodel.new(:name => "World War 2", :noname => "1939-1945")
  	@n.save

  end

  def vote
  	 @autors = ["уберт алёна", "антон лаптев"]
     @title = "Результаты голосования"
    if params[:target]=="ping"
  	 c=0
     @choice = "пингвинов"
    else
  	 c=1
     @choice = "цитрусы"
    end
  	res1 = Testmodel.new
    @result = IO.read('app/assets/vote.txt').split(' ')
    File.open('app/assets/vote.txt', 'w') {|f| f.write(@result.join(' ')) }
  	@result = res1.vote(c)
    if (@result[1].to_i > @result[0].to_i and c==1) or (@result[0].to_i > @result[1].to_i and c==0)
      @text = "Сегодня Вы сделали правильный выбор!"
    else 
      @text = "Ну что же, ничего страшного, просто вы - неудачник."
    end
  end

end
