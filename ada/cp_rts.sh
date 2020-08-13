RTS_SRC=/home/schol-r-lea/Deployments/cross-dev-utils/gcc/gcc/ada/libgnat/

for f in "ada.ads" "a-unccon.ads" "a-uncdea.ads" "gnat.ads" "g-souinf.ads" \
                   "interfac.ads" "s-atacco.adb" "s-atacco.ads" "s-maccod.ads" "s-stoele.adb" \
                   "s-stoele.ads"
do
  cp "$RTS_SRC/$f" rts/src/
  ln -s `pwd`/rts/src/$f `pwd`/rts/boards/i386/adainclude/$f
done
