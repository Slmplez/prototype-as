/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.internal.compiler.parser.AbstractCommentParser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

class DocCommentParser
extends AbstractCommentParser {
    private Javadoc docComment;
    private AST ast;

    DocCommentParser(AST ast, Scanner scanner, boolean check) {
        super(null);
        this.ast = ast;
        this.scanner = scanner;
        switch (this.ast.apiLevel()) {
            case 2: {
                this.sourceLevel = 0x2F0000L;
                break;
            }
            case 3: {
                this.sourceLevel = 0x310000L;
                break;
            }
            default: {
                this.sourceLevel = 0x330000L;
            }
        }
        this.checkDocComment = check;
        this.kind = 258;
    }

    public Javadoc parse(int[] positions) {
        return this.parse(positions[0], positions[1] - positions[0]);
    }

    public Javadoc parse(int start, int length) {
        this.source = this.scanner.source;
        this.lineEnds = this.scanner.lineEnds;
        this.docComment = new Javadoc(this.ast);
        if (this.checkDocComment) {
            this.javadocStart = start;
            this.javadocEnd = start + length - 1;
            this.firstTagPosition = this.javadocStart;
            this.commentParse();
        }
        this.docComment.setSourceRange(start, length);
        if (this.ast.apiLevel == 2) {
            this.setComment(start, length);
        }
        return this.docComment;
    }

    private void setComment(int start, int length) {
        this.docComment.setComment(new String(this.source, start, length));
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("javadoc: ").append(this.docComment).append("\n");
        buffer.append(super.toString());
        return buffer.toString();
    }

    protected Object createArgumentReference(char[] name, int dim, boolean isVarargs, Object typeRef, long[] dimPositions, long argNamePos) throws InvalidInputException {
        try {
            MethodRefParameter argument = this.ast.newMethodRefParameter();
            ASTNode node = (ASTNode)typeRef;
            int argStart = node.getStartPosition();
            int argEnd = node.getStartPosition() + node.getLength() - 1;
            if (dim > 0) {
                argEnd = (int)dimPositions[dim - 1];
            }
            if (argNamePos >= 0L) {
                argEnd = (int)argNamePos;
            }
            if (name.length != 0) {
                SimpleName argName = new SimpleName(this.ast);
                argName.internalSetIdentifier(new String(name));
                argument.setName(argName);
                int argNameStart = (int)(argNamePos >>> 32);
                argName.setSourceRange(argNameStart, argEnd - argNameStart + 1);
            }
            Type argType = null;
            if (node.getNodeType() == 39) {
                argType = (PrimitiveType)node;
            } else {
                Name argTypeName = (Name)node;
                argType = this.ast.newSimpleType(argTypeName);
                argType.setSourceRange(argStart, node.getLength());
            }
            if (dim > 0 && !isVarargs) {
                int i = 0;
                while (i < dim) {
                    argType = this.ast.newArrayType(argType);
                    argType.setSourceRange(argStart, (int)dimPositions[i] - argStart + 1);
                    ++i;
                }
            }
            argument.setType(argType);
            argument.setSourceRange(argStart, argEnd - argStart + 1);
            return argument;
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    protected Object createFieldReference(Object receiver) throws InvalidInputException {
        try {
            MemberRef fieldRef = this.ast.newMemberRef();
            SimpleName fieldName = new SimpleName(this.ast);
            fieldName.internalSetIdentifier(new String(this.identifierStack[0]));
            fieldRef.setName(fieldName);
            int start = (int)(this.identifierPositionStack[0] >>> 32);
            int end = (int)this.identifierPositionStack[0];
            fieldName.setSourceRange(start, end - start + 1);
            if (receiver == null) {
                start = this.memberStart;
                fieldRef.setSourceRange(start, end - start + 1);
            } else {
                Name typeRef = (Name)receiver;
                fieldRef.setQualifier(typeRef);
                start = typeRef.getStartPosition();
                end = fieldName.getStartPosition() + fieldName.getLength() - 1;
                fieldRef.setSourceRange(start, end - start + 1);
            }
            return fieldRef;
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    protected Object createMethodReference(Object receiver, List arguments) throws InvalidInputException {
        try {
            MethodRef methodRef = this.ast.newMethodRef();
            SimpleName methodName = new SimpleName(this.ast);
            int length = this.identifierLengthStack[0] - 1;
            methodName.internalSetIdentifier(new String(this.identifierStack[length]));
            methodRef.setName(methodName);
            int start = (int)(this.identifierPositionStack[length] >>> 32);
            int end = (int)this.identifierPositionStack[length];
            methodName.setSourceRange(start, end - start + 1);
            if (receiver == null) {
                start = this.memberStart;
                methodRef.setSourceRange(start, end - start + 1);
            } else {
                Name typeRef = (Name)receiver;
                methodRef.setQualifier(typeRef);
                start = typeRef.getStartPosition();
            }
            if (arguments != null) {
                ListIterator parameters = arguments.listIterator();
                while (parameters.hasNext()) {
                    MethodRefParameter param = (MethodRefParameter)parameters.next();
                    methodRef.parameters().add(param);
                }
            }
            methodRef.setSourceRange(start, this.scanner.getCurrentTokenEndPosition() - start + 1);
            return methodRef;
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    protected void createTag() {
        TagElement tagElement = this.ast.newTagElement();
        int position = this.scanner.currentPosition;
        this.scanner.resetTo(this.tagSourceStart, this.tagSourceEnd);
        StringBuffer tagName = new StringBuffer();
        int start = this.tagSourceStart;
        this.scanner.getNextChar();
        while (this.scanner.currentPosition <= this.tagSourceEnd + 1) {
            tagName.append(this.scanner.currentCharacter);
            this.scanner.getNextChar();
        }
        tagElement.setTagName(tagName.toString());
        if (this.inlineTagStarted) {
            start = this.inlineTagStart;
            TagElement previousTag = null;
            if (this.astPtr == -1) {
                previousTag = this.ast.newTagElement();
                previousTag.setSourceRange(start, this.tagSourceEnd - start + 1);
                this.pushOnAstStack(previousTag, true);
            } else {
                previousTag = (TagElement)this.astStack[this.astPtr];
            }
            int previousStart = previousTag.getStartPosition();
            previousTag.fragments().add(tagElement);
            previousTag.setSourceRange(previousStart, this.tagSourceEnd - previousStart + 1);
        } else {
            this.pushOnAstStack(tagElement, true);
        }
        tagElement.setSourceRange(start, this.tagSourceEnd - start + 1);
        this.scanner.resetTo(position, this.javadocEnd);
    }

    protected Object createTypeReference(int primitiveToken) {
        int size = this.identifierLengthStack[this.identifierLengthPtr];
        String[] identifiers = new String[size];
        int pos = this.identifierPtr - size + 1;
        int i = 0;
        while (i < size) {
            identifiers[i] = new String(this.identifierStack[pos + i]);
            ++i;
        }
        ASTNode typeRef = null;
        if (primitiveToken == -1) {
            typeRef = this.ast.internalNewName(identifiers);
        } else {
            switch (primitiveToken) {
                case 40: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.VOID);
                    break;
                }
                case 32: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.BOOLEAN);
                    break;
                }
                case 33: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.BYTE);
                    break;
                }
                case 34: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.CHAR);
                    break;
                }
                case 35: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.DOUBLE);
                    break;
                }
                case 36: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.FLOAT);
                    break;
                }
                case 37: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.INT);
                    break;
                }
                case 38: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.LONG);
                    break;
                }
                case 39: {
                    typeRef = this.ast.newPrimitiveType(PrimitiveType.SHORT);
                    break;
                }
                default: {
                    return null;
                }
            }
        }
        int start = (int)(this.identifierPositionStack[pos] >>> 32);
        if (size > 1) {
            ASTNode name = typeRef;
            int nameIndex = size;
            int i2 = this.identifierPtr;
            while (i2 > pos) {
                int s = (int)(this.identifierPositionStack[i2] >>> 32);
                int e = (int)this.identifierPositionStack[i2];
                ((Name)name).index = nameIndex;
                SimpleName simpleName = ((QualifiedName)name).getName();
                simpleName.index = nameIndex--;
                simpleName.setSourceRange(s, e - s + 1);
                name.setSourceRange(start, e - start + 1);
                name = ((QualifiedName)name).getQualifier();
                --i2;
            }
            int end = (int)this.identifierPositionStack[pos];
            name.setSourceRange(start, end - start + 1);
            ((Name)name).index = nameIndex;
        } else {
            int end = (int)this.identifierPositionStack[pos];
            typeRef.setSourceRange(start, end - start + 1);
        }
        return typeRef;
    }

    protected boolean parseIdentifierTag(boolean report) {
        if (super.parseIdentifierTag(report)) {
            this.createTag();
            this.index = this.tagSourceEnd + 1;
            this.scanner.resetTo(this.index, this.javadocEnd);
            return true;
        }
        return false;
    }

    protected boolean parseReturn() {
        this.createTag();
        return true;
    }

    protected boolean parseTag(int previousPosition) throws InvalidInputException {
        int length;
        int currentPosition = this.index;
        int token = this.readTokenAndConsume();
        char[] tagName = CharOperation.NO_CHAR;
        if (currentPosition == this.scanner.startPosition) {
            this.tagSourceStart = this.scanner.getCurrentTokenStartPosition();
            this.tagSourceEnd = this.scanner.getCurrentTokenEndPosition();
            tagName = this.scanner.getCurrentIdentifierSource();
        } else {
            this.tagSourceEnd = currentPosition - 1;
        }
        if (this.scanner.currentCharacter != ' ' && !ScannerHelper.isWhitespace(this.scanner.currentCharacter)) {
            block20: while (token != 69 && this.index < this.scanner.eofPosition) {
                length = tagName.length;
                switch (this.scanner.currentCharacter) {
                    case '!': 
                    case '\"': 
                    case '#': 
                    case '%': 
                    case '&': 
                    case '\'': 
                    case '*': 
                    case ':': 
                    case '<': 
                    case '>': 
                    case '}': {
                        break block20;
                    }
                    case '-': {
                        char[] cArray = tagName;
                        tagName = new char[length + 1];
                        System.arraycopy(cArray, 0, tagName, 0, length);
                        tagName[length] = this.scanner.currentCharacter;
                        break;
                    }
                    default: {
                        if (this.scanner.currentCharacter == ' ' || ScannerHelper.isWhitespace(this.scanner.currentCharacter)) break block20;
                        token = this.readTokenAndConsume();
                        char[] ident = this.scanner.getCurrentIdentifierSource();
                        char[] cArray = tagName;
                        tagName = new char[length + ident.length];
                        System.arraycopy(cArray, 0, tagName, 0, length);
                        System.arraycopy(ident, 0, tagName, length, ident.length);
                    }
                }
                this.tagSourceEnd = this.scanner.getCurrentTokenEndPosition();
                this.scanner.getNextChar();
                this.index = this.scanner.currentPosition;
            }
        }
        length = tagName.length;
        this.index = this.tagSourceEnd + 1;
        this.scanner.currentPosition = this.tagSourceEnd + 1;
        this.tagSourceStart = previousPosition;
        if (tagName.length == 0) {
            return false;
        }
        this.tagValue = 0;
        boolean valid = true;
        block4 : switch (token) {
            case 26: {
                switch (tagName[0]) {
                    case 'c': {
                        if (length == TAG_CATEGORY_LENGTH && CharOperation.equals(TAG_CATEGORY, tagName)) {
                            this.tagValue = 11;
                            valid = this.parseIdentifierTag(false);
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                    case 'd': {
                        if (length == TAG_DEPRECATED_LENGTH && CharOperation.equals(TAG_DEPRECATED, tagName)) {
                            this.deprecated = true;
                            this.tagValue = 1;
                        } else {
                            this.tagValue = 100;
                        }
                        this.createTag();
                        break block4;
                    }
                    case 'i': {
                        if (length == TAG_INHERITDOC_LENGTH && CharOperation.equals(TAG_INHERITDOC, tagName)) {
                            if (this.reportProblems) {
                                this.recordInheritedPosition(((long)this.tagSourceStart << 32) + (long)this.tagSourceEnd);
                            }
                            this.tagValue = 9;
                        } else {
                            this.tagValue = 100;
                        }
                        this.createTag();
                        break block4;
                    }
                    case 'p': {
                        if (length == TAG_PARAM_LENGTH && CharOperation.equals(TAG_PARAM, tagName)) {
                            this.tagValue = 2;
                            valid = this.parseParam();
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                    case 'e': {
                        if (length == TAG_EXCEPTION_LENGTH && CharOperation.equals(TAG_EXCEPTION, tagName)) {
                            this.tagValue = 5;
                            valid = this.parseThrows();
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                    case 's': {
                        if (length == TAG_SEE_LENGTH && CharOperation.equals(TAG_SEE, tagName)) {
                            this.tagValue = 6;
                            if (this.inlineTagStarted) {
                                valid = false;
                                break block4;
                            }
                            valid = this.parseReference();
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                    case 'l': {
                        if (length == TAG_LINK_LENGTH && CharOperation.equals(TAG_LINK, tagName)) {
                            this.tagValue = 7;
                        } else if (length == TAG_LINKPLAIN_LENGTH && CharOperation.equals(TAG_LINKPLAIN, tagName)) {
                            this.tagValue = 8;
                        }
                        if (this.tagValue != 0) {
                            if (this.inlineTagStarted) {
                                valid = this.parseReference();
                                break block4;
                            }
                            valid = false;
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                    case 'v': {
                        if (this.sourceLevel >= 0x310000L && length == TAG_VALUE_LENGTH && CharOperation.equals(TAG_VALUE, tagName)) {
                            this.tagValue = 10;
                            if (this.inlineTagStarted) {
                                valid = this.parseReference();
                                break block4;
                            }
                            valid = false;
                            break block4;
                        }
                        this.tagValue = 100;
                        this.createTag();
                        break block4;
                    }
                }
                this.tagValue = 100;
                this.createTag();
                break;
            }
            case 80: {
                this.tagValue = 3;
                valid = this.parseReturn();
                break;
            }
            case 105: {
                this.tagValue = 4;
                valid = this.parseThrows();
                break;
            }
            case 13: 
            case 32: 
            case 33: 
            case 34: 
            case 35: 
            case 36: 
            case 37: 
            case 38: 
            case 39: 
            case 40: 
            case 41: 
            case 42: 
            case 43: 
            case 44: 
            case 45: 
            case 46: 
            case 54: 
            case 55: 
            case 56: 
            case 57: 
            case 58: 
            case 59: 
            case 60: 
            case 61: 
            case 62: 
            case 63: 
            case 64: 
            case 72: 
            case 73: 
            case 74: 
            case 75: 
            case 76: 
            case 77: 
            case 78: 
            case 79: 
            case 81: 
            case 82: 
            case 83: 
            case 95: 
            case 96: 
            case 97: 
            case 98: 
            case 99: 
            case 100: 
            case 101: 
            case 102: 
            case 103: 
            case 104: 
            case 106: 
            case 108: 
            case 109: {
                this.tagValue = 100;
                this.createTag();
            }
        }
        this.textStart = this.index;
        return valid;
    }

    protected boolean pushParamName(boolean isTypeParam) {
        int idIndex = isTypeParam ? 1 : 0;
        SimpleName name = new SimpleName(this.ast);
        name.internalSetIdentifier(new String(this.identifierStack[idIndex]));
        int nameStart = (int)(this.identifierPositionStack[idIndex] >>> 32);
        int nameEnd = (int)(this.identifierPositionStack[idIndex] & 0xFFFFFFFFL);
        name.setSourceRange(nameStart, nameEnd - nameStart + 1);
        TagElement paramTag = this.ast.newTagElement();
        paramTag.setTagName("@param");
        if (isTypeParam) {
            TextElement text = this.ast.newTextElement();
            text.setText(new String(this.identifierStack[0]));
            int txtStart = (int)(this.identifierPositionStack[0] >>> 32);
            int txtEnd = (int)(this.identifierPositionStack[0] & 0xFFFFFFFFL);
            text.setSourceRange(txtStart, txtEnd - txtStart + 1);
            paramTag.fragments().add(text);
            paramTag.fragments().add(name);
            text = this.ast.newTextElement();
            text.setText(new String(this.identifierStack[2]));
            txtStart = (int)(this.identifierPositionStack[2] >>> 32);
            txtEnd = (int)(this.identifierPositionStack[2] & 0xFFFFFFFFL);
            text.setSourceRange(txtStart, txtEnd - txtStart + 1);
            paramTag.fragments().add(text);
            paramTag.setSourceRange(this.tagSourceStart, txtEnd - this.tagSourceStart + 1);
        } else {
            paramTag.setSourceRange(this.tagSourceStart, nameEnd - this.tagSourceStart + 1);
            paramTag.fragments().add(name);
        }
        this.pushOnAstStack(paramTag, true);
        return true;
    }

    protected boolean pushSeeRef(Object statement) {
        TagElement seeTag = this.ast.newTagElement();
        ASTNode node = (ASTNode)statement;
        seeTag.fragments().add(node);
        int end = node.getStartPosition() + node.getLength() - 1;
        if (this.inlineTagStarted) {
            seeTag.setSourceRange(this.inlineTagStart, end - this.inlineTagStart + 1);
            switch (this.tagValue) {
                case 7: {
                    seeTag.setTagName("@link");
                    break;
                }
                case 8: {
                    seeTag.setTagName("@linkplain");
                    break;
                }
                case 10: {
                    seeTag.setTagName("@value");
                }
            }
            TagElement previousTag = null;
            int previousStart = this.inlineTagStart;
            if (this.astPtr == -1) {
                previousTag = this.ast.newTagElement();
                this.pushOnAstStack(previousTag, true);
            } else {
                previousTag = (TagElement)this.astStack[this.astPtr];
                previousStart = previousTag.getStartPosition();
            }
            previousTag.fragments().add(seeTag);
            previousTag.setSourceRange(previousStart, end - previousStart + 1);
        } else {
            seeTag.setTagName("@see");
            seeTag.setSourceRange(this.tagSourceStart, end - this.tagSourceStart + 1);
            this.pushOnAstStack(seeTag, true);
        }
        return true;
    }

    protected void pushText(int start, int end) {
        TextElement text = this.ast.newTextElement();
        text.setText(new String(this.source, start, end - start));
        text.setSourceRange(start, end - start);
        TagElement previousTag = null;
        int previousStart = start;
        if (this.astPtr == -1) {
            previousTag = this.ast.newTagElement();
            previousTag.setSourceRange(start, end - start);
            this.pushOnAstStack(previousTag, true);
        } else {
            previousTag = (TagElement)this.astStack[this.astPtr];
            previousStart = previousTag.getStartPosition();
        }
        List fragments = previousTag.fragments();
        if (this.inlineTagStarted) {
            int size = fragments.size();
            if (size == 0) {
                TagElement inlineTag = this.ast.newTagElement();
                fragments.add(inlineTag);
                previousTag = inlineTag;
            } else {
                ASTNode lastFragment = (ASTNode)fragments.get(size - 1);
                if (lastFragment.getNodeType() == 65) {
                    previousTag = (TagElement)lastFragment;
                    previousStart = previousTag.getStartPosition();
                }
            }
        }
        previousTag.fragments().add(text);
        previousTag.setSourceRange(previousStart, end - previousStart);
        this.textStart = -1;
    }

    protected boolean pushThrowName(Object typeRef) {
        TagElement throwsTag = this.ast.newTagElement();
        switch (this.tagValue) {
            case 4: {
                throwsTag.setTagName("@throws");
                break;
            }
            case 5: {
                throwsTag.setTagName("@exception");
            }
        }
        throwsTag.setSourceRange(this.tagSourceStart, this.scanner.getCurrentTokenEndPosition() - this.tagSourceStart + 1);
        throwsTag.fragments().add(typeRef);
        this.pushOnAstStack(throwsTag, true);
        return true;
    }

    protected void refreshInlineTagPosition(int previousPosition) {
        if (this.astPtr != -1) {
            TagElement previousTag = (TagElement)this.astStack[this.astPtr];
            if (this.inlineTagStarted) {
                ASTNode inlineTag;
                int previousStart = previousTag.getStartPosition();
                previousTag.setSourceRange(previousStart, previousPosition - previousStart + 1);
                if (previousTag.fragments().size() > 0 && (inlineTag = (ASTNode)previousTag.fragments().get(previousTag.fragments().size() - 1)).getNodeType() == 65) {
                    int inlineStart = inlineTag.getStartPosition();
                    inlineTag.setSourceRange(inlineStart, previousPosition - inlineStart + 1);
                }
            }
        }
    }

    protected void updateDocComment() {
        int idx = 0;
        while (idx <= this.astPtr) {
            this.docComment.tags().add(this.astStack[idx]);
            ++idx;
        }
    }
}

