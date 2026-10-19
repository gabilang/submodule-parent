import ballerina/http;

// Minimal service for verifying git submodule checkout in the build. The
// submodule at lib/ is not compiled; its checked-out commit shows in the
// checkout step's log.
service /hello on new http:Listener(9090) {
    resource function get greeting() returns string {
        return "Hello from submodule-parent";
    }
}
