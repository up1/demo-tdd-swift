# Demo :: TDD with Swift

* TDD cycle
* Testing with Error cases
* UI Testing :: Hide keybord in test case


## Testing with Error cases

```
class MyRange {
    var input: String
    init(input: String) throws {
        self.input = input
        if !startWithInclude() {
            throw MyRange.InputError.emptyStartText
        }
    }
    ... 
   
}

extension MyRange {
    enum InputError: Error{
        case emptyStartText
    }
}
```

Test case with Error
```
func testErrorWithOutStart() {
    var thrownError: Error?
    XCTAssertThrowsError(try MyRange(input: "1,5]")) {
        thrownError = $0
    }
    XCTAssertTrue(
        thrownError is MyRange.InputError,
        "Unexpected error type: \(type(of: thrownError))"
    )
    XCTAssertEqual(thrownError as? MyRange.InputError, .emptyStartText)
}
```
