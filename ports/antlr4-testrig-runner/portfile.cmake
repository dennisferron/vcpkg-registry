vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/antlr4-testrig-runner
	
	REF be962d03c90766fba3ac1b018d246bcbcd9dff42
	
	SHA512 d25c29c877a6dcacdd5e6f04f956431feb6eaae1d0049988c444f79893161e904a1bf52c0f8ae1c2d80188d7f49dd6a19da4d3f3ab20c8217d9c5f96d74867b4
	
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
 