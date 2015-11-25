docker run -i -t --rm -v $(pwd):/opt/swagger-codegen -v $(pwd)/../api-repo-sandbox/swagger20/:/opt/swagger-codegen/swagger20/ joshgubler/swagger-codegen sh -c "$1"
