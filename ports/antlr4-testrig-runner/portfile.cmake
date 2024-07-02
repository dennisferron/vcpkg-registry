vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO dennisferron/antlr4-testrig-runner
	
	REF 7fa3759bd390847ec2eed21392806436db5bfe3e
	
	SHA512 a22b9f91aa63a5cfeba893bfe06bf102326cff7aa8e6c5ceab928d1e671f6ab1337638940cc1fd7d9add7909d7cfd3b95898713aa1ed19656fe131fd2646b02d
	
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
 