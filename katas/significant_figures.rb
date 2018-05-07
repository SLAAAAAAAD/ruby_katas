# the number of significant figures is how many digits there are in a number, not including any leading or trailing zeros:
# 003,231,004,300 has 8 significant figures
# 44.005430000 has 6 significant figures

# given a number of float or fixnum (integer) type,
# round it to the nearest digit for a given number of significant figures
# examples:
#   43,037 rounded to 4 significant figures is 43040
#   0.0043037 rounded to 4 significant figures is 0.004304

# for this exercise,
# if the resulting rounded number has trailing zeros within its significant figures,
# you do not need to keep track of them:
# examples:
#   43097 rounded to 4 significant figures is 43100. you do not need to indicate the the first zero is significant
#   0.043097 rounded to 4 significant figures is 0.04310, but you do not need to worry about whether the last zero is there or not

# round up if the next digit is a five

def round(number, sigfigs)
  # your awesome code here
end