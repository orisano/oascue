openapi.json: base.cue override.cue
	cue export $^ > $@

base.cue: openapi.cue
	cue export --out openapi $< > $@

.PHONY: preview
preview: init.js
	open preview.html

init.js: openapi.json
	echo "Redoc.init(" > $@
	cat $< >> $@
	echo ")" >> $@
