#!/bin/bash

ticket=101
case $ticket in
23)
echo "You got the first prize";;
101)
echo  "You got the second prize";;
503)
echo  "You got the third prize";;
*)
echo "Sorry, try for the next time"
exit 0;;
esac
