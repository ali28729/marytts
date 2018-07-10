mkdir hmm/hmm0
head -3 hmm/hmm-dummy/htk > hmm/hmm0/hmmdefs
for s in `cat etc/htk.phone.list`
do
echo "~h \"$s\"" >> hmm/hmm0/hmmdefs
/usr/bin/awk '/BEGINHMM/,/ENDHMM/ { print $0 }' hmm/hmm-dummy/htk >> hmm/hmm0/hmmdefs
done

