class Testmodel < ActiveRecord::Base
	def kill
		res = "Vse ubiti."
		return res
	end

	def vote(target)
		@result = IO.read('app/assets/vote.txt').split(' ')
        @result[target] = @result[target].to_i()+1
        File.open('app/assets/vote.txt', 'w') {|f| f.write(@result.join(' ')) }
        return @result
    end
end
