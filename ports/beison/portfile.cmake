vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/beison
	
	# THIS is the head of the Beison git repo
	REF dbe51578d79449a7d601dd7881f689f198fba1e6
	
	# THIS is (I think??) a hash of the expected content.
	# Docs say start with 0 and replace it with value from
	# the build error message when it complains...
	SHA512 0
	
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
