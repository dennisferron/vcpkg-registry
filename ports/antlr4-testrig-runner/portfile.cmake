vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/antlr4-testrig-runner
	
	REF 83bc43c9a0e69022fb44184f935649c0ea852246
	
	SHA512 7938c4c7d65ad7adc73c631c5d0d4754241fba1320549a5960f4d44e0b45f391cea8ac201b75da08e7aa5cfd8809fa78f080405cb0a236d994f643105ab06e2a
	
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
 