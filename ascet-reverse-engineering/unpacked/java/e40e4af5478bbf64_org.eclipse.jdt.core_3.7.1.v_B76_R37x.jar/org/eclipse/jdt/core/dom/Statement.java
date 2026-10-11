/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public abstract class Statement
extends ASTNode {
    private String optionalLeadingComment = null;

    Statement(AST ast) {
        super(ast);
    }

    public String getLeadingComment() {
        return this.optionalLeadingComment;
    }

    public void setLeadingComment(String comment) {
        if (comment != null) {
            char[] source = comment.toCharArray();
            Scanner scanner = this.ast.scanner;
            scanner.resetTo(0, source.length);
            scanner.setSource(source);
            try {
                int token;
                boolean onlyOneComment = false;
                while ((token = scanner.getNextToken()) != 69) {
                    switch (token) {
                        case 1001: 
                        case 1002: 
                        case 1003: {
                            if (onlyOneComment) {
                                throw new IllegalArgumentException();
                            }
                            onlyOneComment = true;
                            break;
                        }
                        default: {
                            onlyOneComment = false;
                        }
                    }
                }
                if (!onlyOneComment) {
                    throw new IllegalArgumentException();
                }
            }
            catch (InvalidInputException invalidInputException) {
                throw new IllegalArgumentException();
            }
        }
        this.checkModifiable();
        this.optionalLeadingComment = comment;
    }

    void copyLeadingComment(Statement source) {
        this.setLeadingComment(source.getLeadingComment());
    }

    int memSize() {
        int size = 44 + Statement.stringSize(this.getLeadingComment());
        return size;
    }
}

