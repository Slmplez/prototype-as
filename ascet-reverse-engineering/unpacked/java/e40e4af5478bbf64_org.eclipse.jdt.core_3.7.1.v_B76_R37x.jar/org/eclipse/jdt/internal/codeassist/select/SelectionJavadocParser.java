/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.codeassist.select.SelectionJavadoc;
import org.eclipse.jdt.internal.codeassist.select.SelectionParser;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;

public class SelectionJavadocParser
extends JavadocParser {
    int selectionStart;
    int selectionEnd;
    ASTNode selectedNode;
    public boolean inheritDocTagSelected;

    public SelectionJavadocParser(SelectionParser sourceParser) {
        super(sourceParser);
        this.shouldReportProblems = false;
        this.reportProblems = false;
        this.kind = 260;
        this.inheritDocTagSelected = false;
    }

    public boolean checkDeprecation(int commentPtr) {
        this.selectionStart = ((SelectionParser)this.sourceParser).selectionStart;
        this.selectionEnd = ((SelectionParser)this.sourceParser).selectionEnd;
        this.javadocStart = this.sourceParser.scanner.commentStarts[commentPtr];
        this.javadocEnd = this.sourceParser.scanner.commentStops[commentPtr];
        if (this.javadocStart <= this.selectionStart && this.selectionEnd <= this.javadocEnd) {
            if (SelectionEngine.DEBUG) {
                System.out.println("SELECTION in Javadoc:");
            }
            super.checkDeprecation(commentPtr);
        } else {
            this.docComment = null;
        }
        return false;
    }

    protected boolean commentParse() {
        this.docComment = new SelectionJavadoc(this.javadocStart, this.javadocEnd);
        return super.commentParse();
    }

    protected Object createArgumentReference(char[] name, int dim, boolean isVarargs, Object typeRef, long[] dimPositions, long argNamePos) throws InvalidInputException {
        Expression expression = (Expression)super.createArgumentReference(name, dim, isVarargs, typeRef, dimPositions, argNamePos);
        int start = ((TypeReference)typeRef).sourceStart;
        int end = ((TypeReference)typeRef).sourceEnd;
        if (start <= this.selectionStart && this.selectionEnd <= end) {
            this.selectedNode = expression;
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected argument=" + this.selectedNode);
            }
        }
        return expression;
    }

    protected Object createFieldReference(Object receiver) throws InvalidInputException {
        int start = (int)(this.identifierPositionStack[0] >>> 32);
        int end = (int)this.identifierPositionStack[0];
        if (start <= this.selectionStart && this.selectionEnd <= end) {
            this.selectedNode = (ASTNode)super.createFieldReference(receiver);
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected field=" + this.selectedNode);
            }
        }
        return null;
    }

    protected Object createMethodReference(Object receiver, List arguments) throws InvalidInputException {
        int memberPtr = this.identifierLengthStack[0] - 1;
        int start = (int)(this.identifierPositionStack[memberPtr] >>> 32);
        int end = (int)this.identifierPositionStack[memberPtr];
        if (start <= this.selectionStart && this.selectionEnd <= end) {
            this.selectedNode = (ASTNode)super.createMethodReference(receiver, arguments);
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected method=" + this.selectedNode);
            }
        }
        return null;
    }

    protected Object createTypeReference(int primitiveToken) {
        TypeReference typeRef = (TypeReference)super.createTypeReference(primitiveToken);
        if (typeRef.sourceStart <= this.selectionStart && this.selectionEnd <= typeRef.sourceEnd) {
            if (typeRef instanceof JavadocQualifiedTypeReference) {
                JavadocQualifiedTypeReference qualifiedTypeRef = (JavadocQualifiedTypeReference)typeRef;
                int size = qualifiedTypeRef.tokens.length - 1;
                int i = 0;
                while (i < size) {
                    int start = (int)(qualifiedTypeRef.sourcePositions[i] >>> 32);
                    int end = (int)qualifiedTypeRef.sourcePositions[i];
                    if (start <= this.selectionStart && this.selectionEnd <= end) {
                        int pos = i + 1;
                        char[][] tokens = new char[pos][];
                        int ptr = this.identifierPtr - size;
                        System.arraycopy(this.identifierStack, ptr, tokens, 0, pos);
                        long[] positions = new long[pos];
                        System.arraycopy(this.identifierPositionStack, ptr, positions, 0, pos);
                        this.selectedNode = new JavadocQualifiedTypeReference(tokens, positions, this.tagSourceStart, this.tagSourceEnd);
                        this.abort = true;
                        if (SelectionEngine.DEBUG) {
                            System.out.println("\tselected partial qualified type=" + this.selectedNode);
                        }
                        return typeRef;
                    }
                    ++i;
                }
            }
            this.selectedNode = typeRef;
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected type=" + this.selectedNode);
            }
        }
        return typeRef;
    }

    protected boolean pushParamName(boolean isTypeParam) {
        if (super.pushParamName(isTypeParam)) {
            Expression expression = (Expression)this.astStack[this.astPtr--];
            if (expression.sourceStart <= this.selectionStart && this.selectionEnd <= expression.sourceEnd) {
                this.selectedNode = expression;
                this.abort = true;
                if (SelectionEngine.DEBUG) {
                    System.out.println("\tselected param=" + this.selectedNode);
                }
            }
        }
        return false;
    }

    protected void updateDocComment() {
        if (this.selectedNode instanceof Expression) {
            ((SelectionJavadoc)this.docComment).selectedNode = (Expression)this.selectedNode;
        } else if (this.inheritDocTagSelected) {
            ((SelectionJavadoc)this.docComment).inheritDocSelected = true;
        }
    }

    protected void parseInheritDocTag() {
        if (this.tagSourceStart == this.selectionStart && this.tagSourceEnd == this.selectionEnd) {
            this.inheritDocTagSelected = true;
        }
    }
}

