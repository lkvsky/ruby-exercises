def ftoc(f_degrees)
	c_degrees = (f_degrees - 32) * (5.0/9.0)
	return c_degrees.round(10)
end

def ctof(c_degrees)
	f_degrees = (c_degrees * (9.0/5.0)) + 32
	return f_degrees.round(10)
end