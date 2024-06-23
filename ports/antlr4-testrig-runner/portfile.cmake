vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/antlr4-testrig-runner
	
	REF c62af244d970cb788ca764f1eee5fbf14d4e1ff3
	
	SHA512 96c90d76a52099913f640e8492057e9751048ebd8a92c405cbc28dcf5134dee54c41f13c5857e45f4c025da160890d3a1c003f9653ef7de7579317ac1fb08063
	
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
 