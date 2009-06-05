NAME=imageresize
TARGET=${NAME}.py

REV=`svn info . | grep Revision: | cut -d' ' -f2`
ZIP=${NAME}-r${REV}.zip

docs:
	./${TARGET} -h | rst2html --initial-header-level=3 >README.html
	./${TARGET} -h | sed 's/^-*//g' >README.txt

clean:
	rm -rf ${ZIP}
	rm -f README.html
	rm -f README.txt

install:
	cp ${TARGET} ~/bin

zip: clean
	svn update
	zip ${ZIP} ${TARGET}


.PHONY: install zip clean docs

