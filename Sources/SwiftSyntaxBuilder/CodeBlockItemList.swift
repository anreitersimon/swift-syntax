//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

extension CodeBlockItemListBuilder {

    public static func buildExpression(_ expression: CodeBlockItemList) -> Component {
        return expression.elements
    }
}

extension CodeBlockItemList {

    public init(combining lists: [ExpressibleAsCodeBlockItemList]) {
        self.elements = lists.flatMap {
            $0.createCodeBlockItemList().elements
        }
    }

}



extension MemberDeclListBuilder {

    public static func buildExpression(_ expression: MemberDeclList) -> Component {
        return expression.elements
    }
}

extension MemberDeclList {

    public init(combining lists: [ExpressibleAsMemberDeclList]) {
        self.elements = lists.flatMap {
            $0.createMemberDeclListItem().elements
        }
    }

}
