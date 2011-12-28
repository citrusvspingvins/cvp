# coding: utf-8
class CitpingController < ApplicationController
   
  def index
  @autors = ["уберт алёна", "антон лаптев"]
  @title = "Цитрусы против пингвинов. Судьба мира в твоих руках."
  @image = "Шапка index`a"
  @logo = "logo.jpg"
  end

  def about
  @autors = ["гришаня миллерштрауэн"]
  @logo = "logo.jpg"
  end

  def vote
   @logo = "logo.jpg"
   @title = "Результат голосования"
   @autors = ["уберт алёна", "антон лаптев"]
   @result = IO.read('app/assets/vote.txt').split(' ')
  end

  def vote1
   @logo = "logo.jpg"
   @title = "Результат голосования"
   @autors = ["уберт алёна", "антон лаптев"]
   @result = IO.read('app/assets/vote.txt').split(' ')
   @result[0] = @result[0].to_i()+1
   File.open('app/assets/vote.txt', 'w') {|f| f.write(@result.join(' ')) }

   end

  def vote2
   @logo = "logo.jpg"
   @title = "Результат голосования"
   @autors = ["уберт алёна", "антон лаптев"]
   @result = IO.read('app/assets/vote.txt').split(' ')
   @result[1] = @result[1].to_i()+1
   File.open('app/assets/vote.txt', 'w') {|f| f.write(@result.join(' ')) }

   end

end
