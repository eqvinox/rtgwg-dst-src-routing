DRAFTS=
DRAFTS+=draft-ietf-rtgwg-dst-src-routing-revive.xml


.PHONY: love clean
love: $(patsubst %.xml,%.txt,$(DRAFTS))
clean:
	rm -f $(patsubst %.xml,%.txt,$(DRAFTS))
	rm -f $(patsubst %.xml,%.html,$(DRAFTS))

%.txt: %.xml
	xml2rfc --text -o $@ $^
%.html: %.xml
	xml2rfc --html -o $@ $^
%.pdf: %.xml
	xml2rfc --pdf -o $@ $^

