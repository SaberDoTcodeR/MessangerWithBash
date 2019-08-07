# MessangerWithBash
a private messanger in bash with netcat

how to use ::

start server with this command:
ncat -l -k  4444 -e b.sh

start a client with this command:
ncat localhost 4444

write this to send your msg:
msg yourmessage

write this to get your msg:
give me my messages

write this to logout:
exit
