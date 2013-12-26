TARGETNAME = Supaplex
DOSBOX_VERSION = dosbox-0.74-custom
all:
	$(MAKE) -C ${DOSBOX_VERSION}
	rm -f -R DmgFolder/${TARGETNAME}.app
	mkdir DmgFolder/${TARGETNAME}.app
	mkdir DmgFolder/${TARGETNAME}.app/Contents
	cp -R AppBundle/* DmgFolder/${TARGETNAME}.app/Contents/
	cp Images/${TARGETNAME}.icns DmgFolder/${TARGETNAME}.app/Contents/Resources/${TARGETNAME}.icns
	mkdir DmgFolder/${TARGETNAME}.app/Contents/MacOS
	cp ${DOSBOX_VERSION}/src/dosbox DmgFolder/${TARGETNAME}.app/Contents/MacOS/${TARGETNAME}

dmg:
	rm -f ${TARGETNAME}.dmg
	hdiutil create -fs HFS+ -srcfolder DmgFolder -volname ${TARGETNAME} tmp.dmg
	hdiutil convert -format UDBZ -o ${TARGETNAME}.dmg tmp.dmg
	rm -f tmp.dmg

clean:
	$(MAKE) clean -C ${DOSBOX_VERSION}
	rm -f -R DmgFolder/${TARGETNAME}.app
	rm -f ${TARGETNAME}.dmg
