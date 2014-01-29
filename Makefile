all:	draft.txt 

draft.txt:	*.pdc template.xml
	pandoc2rfc *.pdc

draft.xml:	*.pdc template.xml
	pandoc2rfc -X *.pdc

draft.html:	*.pdc template.xml
	pandoc2rfc -H *.pdc

.PHONY: clean
clean:
	rm -f draft.txt draft.xml
