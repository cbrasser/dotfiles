import subprocess
import fileinput
proc = subprocess.Popen(["calcurse", "-n"],stdout=subprocess.PIPE)

for line in iter(proc.stdout.readline,''):
   print (line.rstrip())
