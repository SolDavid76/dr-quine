import os

payload = "import os{1}{1}payload = {3}{0}{3}{1}{1}n = {4}{1}if (n < 0):{1}{2}exit(0){1}with open({3}Sully_{3} + str(n) + {3}.py{3}, {3}w{3}) as file:{1}{2}file.write(payload.format(payload, chr(10), chr(9), chr(34), n-1)){1}os.system({3}python Sully_{3} + str(n) + {3}.py{3}){1}"

n = 5
if (n < 0):
	exit(0)
with open("Sully_" + str(n) + ".py", "w") as file:
	file.write(payload.format(payload, chr(10), chr(9), chr(34), n-1))
os.system("python Sully_" + str(n) + ".py")
