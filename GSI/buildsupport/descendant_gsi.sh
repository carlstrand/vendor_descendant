jobs=$(nproc --all)
treble_target=treble_arm64_agS-userdebug

export USE_CCACHE=1
export CCACHE_COMPRESS=1

buildVariant() {
	lunch $1
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp installclean
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp -j$jobs systemimage
	make WITHOUT_CHECK_API=true BUILD_NUMBER=$rom_fp vndk-test-sepolicy
}

if [[ $1 == "--no-sync" ]];then
   bash "apply-patch.sh" patches
   source build/envsetup.sh

   buildVariant $treble_target
fi

if [[ $1 == "--sync" ]];then
   repo sync -f --force-sync --no-clone-bundle -j$jobs
   bash "apply-patch.sh" patches
   source build/envsetup.sh

   buildVariant $treble_target
fi

if [[ -z "$1" ]];then
   repo sync -f --force-sync --no-clone-bundle -j$jobs
   bash "apply-patch.sh" patches
   source build/envsetup.sh

   buildVariant $treble_target
fi
