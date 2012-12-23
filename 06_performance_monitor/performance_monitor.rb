def measure(num=1)
	t1 = Time.now
	num.times do
		yield
	end
	t2 = Time.now
	(t2 - t1) / num
end