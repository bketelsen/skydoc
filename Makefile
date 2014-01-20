all:	draft.txt 

draft.txt:	*.pdc template.xml
	pandoc2rfc *.pdc

draft.xml:	*.pdc template.xml
	pandoc2rfc -X *.pdc

.PHONY: clean
clean:
	rm -f draft.txt draft.xml
