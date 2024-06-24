vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/antlr4-testrig-runner
	
	REF 589843e834509fd80625b4ce5a87c6e349cc7e55
	
	SHA512 8796a6cb9a4ab63158018c9920e21676960381cdd6ac5e0dbf69724fb284fa0634ada8e899f11305549084e33ce6be2a687477013041f200c53b5962d082d34a
	
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
 