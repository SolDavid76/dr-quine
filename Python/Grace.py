# no macro ?, no main ?

payload = "# no macro ?, no main ?{1}{1}payload = {3}{0}{3}{1}{1}with open({3}Grace_kid.py{3}, {3}w{3}) as file:{1}{2}file.write(payload.format(payload, chr(10), chr(9), chr(34))){1}"

with open("Grace_kid.py", "w") as file:
	file.write(payload.format(payload, chr(10), chr(9), chr(34)))
