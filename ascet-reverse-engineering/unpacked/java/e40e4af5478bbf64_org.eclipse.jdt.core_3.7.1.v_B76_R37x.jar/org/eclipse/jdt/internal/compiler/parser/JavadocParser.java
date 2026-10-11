/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocArraySingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.AbstractCommentParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;

public class JavadocParser
extends AbstractCommentParser {
    public Javadoc docComment;
    private int invalidParamReferencesPtr = -1;
    private ASTNode[] invalidParamReferencesStack;
    private long validValuePositions;
    private long invalidValuePositions;
    public boolean shouldReportProblems = true;
    private int tagWaitingForDescription;

    public JavadocParser(Parser sourceParser) {
        super(sourceParser);
        this.kind = 513;
        if (sourceParser != null && sourceParser.options != null) {
            this.setJavadocPositions = sourceParser.options.processAnnotations;
        }
    }

    public boolean checkDeprecation(int commentPtr) {
        block18: {
            this.javadocStart = this.sourceParser.scanner.commentStarts[commentPtr];
            this.javadocEnd = this.sourceParser.scanner.commentStops[commentPtr] - 1;
            this.firstTagPosition = this.sourceParser.scanner.commentTagStarts[commentPtr];
            this.validValuePositions = -1L;
            this.invalidValuePositions = -1L;
            this.tagWaitingForDescription = 0;
            if (this.checkDocComment) {
                this.docComment = new Javadoc(this.javadocStart, this.javadocEnd);
            } else if (this.setJavadocPositions) {
                this.docComment = new Javadoc(this.javadocStart, this.javadocEnd);
                this.docComment.bits &= 0xFFFEFFFF;
            } else {
                this.docComment = null;
            }
            if (this.firstTagPosition == 0) {
                switch (this.kind & 0xFF) {
                    case 1: 
                    case 16: {
                        return false;
                    }
                }
            }
            try {
                this.source = this.sourceParser.scanner.source;
                if (this.checkDocComment) {
                    this.scanner.lineEnds = this.sourceParser.scanner.lineEnds;
                    this.scanner.linePtr = this.sourceParser.scanner.linePtr;
                    this.lineEnds = this.scanner.lineEnds;
                    this.commentParse();
                    break block18;
                }
                Scanner sourceScanner = this.sourceParser.scanner;
                int firstLineNumber = Util.getLineNumber(this.javadocStart, sourceScanner.lineEnds, 0, sourceScanner.linePtr);
                int lastLineNumber = Util.getLineNumber(this.javadocEnd, sourceScanner.lineEnds, 0, sourceScanner.linePtr);
                this.index = this.javadocStart + 3;
                this.deprecated = false;
                int line = firstLineNumber;
                while (line <= lastLineNumber) {
                    int lineStart;
                    this.index = lineStart = line == firstLineNumber ? this.javadocStart + 3 : this.sourceParser.scanner.getLineStart(line);
                    this.lineEnd = line == lastLineNumber ? this.javadocEnd - 2 : this.sourceParser.scanner.getLineEnd(line);
                    block11: while (this.index < this.lineEnd) {
                        char c = this.readChar();
                        switch (c) {
                            case '\t': 
                            case '\n': 
                            case '\f': 
                            case '\r': 
                            case ' ': 
                            case '*': {
                                break;
                            }
                            case '@': {
                                this.parseSimpleTag();
                                if (this.tagValue != 1 || !this.abort) break block11;
                                break block11;
                            }
                            default: {
                                break block11;
                            }
                        }
                    }
                    ++line;
                }
                boolean bl = this.deprecated;
                return bl;
            }
            finally {
                this.source = null;
            }
        }
        return this.deprecated;
    }

    protected Object createArgumentReference(char[] name, int dim, boolean isVarargs, Object typeRef, long[] dimPositions, long argNamePos) throws InvalidInputException {
        try {
            TypeReference argTypeRef = (TypeReference)typeRef;
            if (dim > 0) {
                long pos = ((long)argTypeRef.sourceStart << 32) + (long)argTypeRef.sourceEnd;
                if (typeRef instanceof JavadocSingleTypeReference) {
                    JavadocSingleTypeReference singleRef = (JavadocSingleTypeReference)typeRef;
                    argTypeRef = new JavadocArraySingleTypeReference(singleRef.token, dim, pos);
                } else {
                    JavadocQualifiedTypeReference qualifRef = (JavadocQualifiedTypeReference)typeRef;
                    argTypeRef = new JavadocArrayQualifiedTypeReference(qualifRef, dim);
                }
            }
            int argEnd = argTypeRef.sourceEnd;
            if (dim > 0) {
                argEnd = (int)dimPositions[dim - 1];
                if (isVarargs) {
                    argTypeRef.bits |= 0x4000;
                }
            }
            if (argNamePos >= 0L) {
                argEnd = (int)argNamePos;
            }
            return new JavadocArgumentExpression(name, argTypeRef.sourceStart, argEnd, argTypeRef);
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    protected Object createFieldReference(Object receiver) throws InvalidInputException {
        try {
            TypeReference typeRef = (TypeReference)receiver;
            if (typeRef == null) {
                char[] name = this.sourceParser.compilationUnit.getMainTypeName();
                typeRef = new JavadocImplicitTypeReference(name, this.memberStart);
            }
            JavadocFieldReference field = new JavadocFieldReference(this.identifierStack[0], this.identifierPositionStack[0]);
            field.receiver = typeRef;
            field.tagSourceStart = this.tagSourceStart;
            field.tagSourceEnd = this.tagSourceEnd;
            field.tagValue = this.tagValue;
            return field;
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Object createMethodReference(Object receiver, List arguments) throws InvalidInputException {
        try {
            char[] name;
            TypeReference typeRef = (TypeReference)receiver;
            boolean isConstructor = false;
            int length = this.identifierLengthStack[0];
            if (typeRef == null) {
                name = this.sourceParser.compilationUnit.getMainTypeName();
                TypeDeclaration typeDecl = this.getParsedTypeDeclaration();
                if (typeDecl != null) {
                    name = typeDecl.name;
                }
                isConstructor = CharOperation.equals(this.identifierStack[length - 1], name);
                typeRef = new JavadocImplicitTypeReference(name, this.memberStart);
            } else if (typeRef instanceof JavadocSingleTypeReference) {
                name = ((JavadocSingleTypeReference)typeRef).token;
                isConstructor = CharOperation.equals(this.identifierStack[length - 1], name);
            } else {
                if (!(typeRef instanceof JavadocQualifiedTypeReference)) {
                    throw new InvalidInputException();
                }
                char[][] tokens = ((JavadocQualifiedTypeReference)typeRef).tokens;
                int last = tokens.length - 1;
                isConstructor = CharOperation.equals(this.identifierStack[length - 1], tokens[last]);
                if (isConstructor) {
                    boolean valid = true;
                    if (valid) {
                        int i = 0;
                        while (i < length - 1 && valid) {
                            valid = CharOperation.equals(this.identifierStack[i], tokens[i]);
                            ++i;
                        }
                    }
                    if (!valid) {
                        if (this.reportProblems) {
                            this.sourceParser.problemReporter().javadocInvalidMemberTypeQualification((int)(this.identifierPositionStack[0] >>> 32), (int)this.identifierPositionStack[length - 1], -1);
                        }
                        return null;
                    }
                }
            }
            if (arguments == null) {
                if (!isConstructor) {
                    JavadocMessageSend msg = new JavadocMessageSend(this.identifierStack[length - 1], this.identifierPositionStack[length - 1]);
                    msg.receiver = typeRef;
                    msg.tagValue = this.tagValue;
                    msg.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                    return msg;
                }
                JavadocAllocationExpression allocation = new JavadocAllocationExpression(this.identifierPositionStack[length - 1]);
                allocation.type = typeRef;
                allocation.tagValue = this.tagValue;
                allocation.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                if (length == 1) {
                    allocation.qualification = new char[][]{this.identifierStack[0]};
                } else {
                    char[][] cArrayArray = new char[length][];
                    allocation.qualification = cArrayArray;
                    System.arraycopy(this.identifierStack, 0, cArrayArray, 0, length);
                    allocation.sourceStart = (int)(this.identifierPositionStack[0] >>> 32);
                }
                allocation.memberStart = this.memberStart;
                return allocation;
            }
            JavadocArgumentExpression[] expressions = new JavadocArgumentExpression[arguments.size()];
            arguments.toArray(expressions);
            if (!isConstructor) {
                JavadocMessageSend msg = new JavadocMessageSend(this.identifierStack[length - 1], this.identifierPositionStack[length - 1], expressions);
                msg.receiver = typeRef;
                msg.tagValue = this.tagValue;
                msg.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                return msg;
            }
            JavadocAllocationExpression allocation = new JavadocAllocationExpression(this.identifierPositionStack[length - 1]);
            allocation.arguments = expressions;
            allocation.type = typeRef;
            allocation.tagValue = this.tagValue;
            allocation.sourceEnd = this.scanner.getCurrentTokenEndPosition();
            if (length == 1) {
                allocation.qualification = new char[][]{this.identifierStack[0]};
            } else {
                char[][] cArrayArray = new char[length][];
                allocation.qualification = cArrayArray;
                System.arraycopy(this.identifierStack, 0, cArrayArray, 0, length);
                allocation.sourceStart = (int)(this.identifierPositionStack[0] >>> 32);
            }
            allocation.memberStart = this.memberStart;
            return allocation;
        }
        catch (ClassCastException classCastException) {
            throw new InvalidInputException();
        }
    }

    protected Object createReturnStatement() {
        return new JavadocReturnStatement(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
    }

    protected void createTag() {
        this.tagValue = 100;
    }

    protected Object createTypeReference(int primitiveToken) {
        TypeReference typeRef = null;
        int size = this.identifierLengthStack[this.identifierLengthPtr];
        if (size == 1) {
            typeRef = new JavadocSingleTypeReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr], this.tagSourceStart, this.tagSourceEnd);
        } else if (size > 1) {
            char[][] tokens = new char[size][];
            System.arraycopy(this.identifierStack, this.identifierPtr - size + 1, tokens, 0, size);
            long[] positions = new long[size];
            System.arraycopy(this.identifierPositionStack, this.identifierPtr - size + 1, positions, 0, size);
            typeRef = new JavadocQualifiedTypeReference(tokens, positions, this.tagSourceStart, this.tagSourceEnd);
        }
        return typeRef;
    }

    protected TypeDeclaration getParsedTypeDeclaration() {
        int ptr = this.sourceParser.astPtr;
        while (ptr >= 0) {
            ASTNode node = this.sourceParser.astStack[ptr];
            if (node instanceof TypeDeclaration) {
                TypeDeclaration typeDecl = (TypeDeclaration)node;
                if (typeDecl.bodyEnd == 0) {
                    return typeDecl;
                }
            }
            --ptr;
        }
        return null;
    }

    protected boolean parseThrows() {
        boolean valid = super.parseThrows();
        this.tagWaitingForDescription = valid && this.reportProblems ? 4 : 0;
        return valid;
    }

    protected boolean parseReturn() {
        if (this.returnStatement == null) {
            this.returnStatement = this.createReturnStatement();
            return true;
        }
        if (this.reportProblems) {
            this.sourceParser.problemReporter().javadocDuplicatedReturnTag(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
        }
        return false;
    }

    protected void parseSimpleTag() {
        char first;
        if ((first = this.source[this.index++]) == '\\' && this.source[this.index] == 'u') {
            int c4;
            int c3;
            int c2;
            int c1;
            int pos = this.index++;
            while (this.source[this.index] == 'u') {
                ++this.index;
            }
            if ((c1 = ScannerHelper.getNumericValue(this.source[this.index++])) <= 15 && c1 >= 0 && (c2 = ScannerHelper.getNumericValue(this.source[this.index++])) <= 15 && c2 >= 0 && (c3 = ScannerHelper.getNumericValue(this.source[this.index++])) <= 15 && c3 >= 0 && (c4 = ScannerHelper.getNumericValue(this.source[this.index++])) <= 15 && c4 >= 0) {
                first = (char)(((c1 * 16 + c2) * 16 + c3) * 16 + c4);
            } else {
                this.index = pos;
            }
        }
        switch (first) {
            case 'd': {
                char c;
                if (this.readChar() != 'e' || this.readChar() != 'p' || this.readChar() != 'r' || this.readChar() != 'e' || this.readChar() != 'c' || this.readChar() != 'a' || this.readChar() != 't' || this.readChar() != 'e' || this.readChar() != 'd' || !ScannerHelper.isWhitespace(c = this.readChar()) && c != '*') break;
                this.abort = true;
                this.deprecated = true;
                this.tagValue = 1;
            }
        }
    }

    protected boolean parseTag(int previousPosition) throws InvalidInputException {
        switch (this.tagWaitingForDescription) {
            case 2: 
            case 4: {
                if (this.inlineTagStarted) break;
                int start = (int)(this.identifierPositionStack[0] >>> 32);
                int end = (int)this.identifierPositionStack[this.identifierPtr];
                this.sourceParser.problemReporter().javadocMissingTagDescriptionAfterReference(start, end, this.sourceParser.modifiers);
                break;
            }
            case 0: {
                break;
            }
            default: {
                if (this.inlineTagStarted) break;
                this.sourceParser.problemReporter().javadocMissingTagDescription(TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            }
        }
        this.tagWaitingForDescription = 0;
        this.tagSourceStart = this.index;
        this.tagSourceEnd = previousPosition;
        this.scanner.startPosition = this.index;
        int currentPosition = this.index;
        char firstChar = this.readChar();
        switch (firstChar) {
            case ' ': 
            case '#': 
            case '*': 
            case '}': {
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidTag(previousPosition, currentPosition);
                }
                if (this.textStart == -1) {
                    this.textStart = currentPosition;
                }
                this.scanner.currentCharacter = firstChar;
                return false;
            }
        }
        if (ScannerHelper.isWhitespace(firstChar)) {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidTag(previousPosition, currentPosition);
            }
            if (this.textStart == -1) {
                this.textStart = currentPosition;
            }
            this.scanner.currentCharacter = firstChar;
            return false;
        }
        char[] tagName = new char[32];
        int length = 0;
        char currentChar = firstChar;
        int tagNameLength = tagName.length;
        boolean validTag = true;
        block27: while (true) {
            if (length == tagNameLength) {
                char[] cArray = tagName;
                tagName = new char[tagNameLength + 32];
                System.arraycopy(cArray, 0, tagName, 0, tagNameLength);
                tagNameLength = tagName.length;
            }
            tagName[length++] = currentChar;
            currentPosition = this.index;
            currentChar = this.readChar();
            switch (currentChar) {
                case ' ': 
                case '*': 
                case '}': {
                    break block27;
                }
                case '#': {
                    validTag = false;
                    continue block27;
                }
                default: {
                    if (ScannerHelper.isWhitespace(currentChar)) break block27;
                    continue block27;
                }
            }
            break;
        }
        this.tagSourceEnd = currentPosition - 1;
        this.scanner.currentCharacter = currentChar;
        this.scanner.currentPosition = currentPosition;
        this.index = this.tagSourceEnd + 1;
        if (!validTag) {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidTag(this.tagSourceStart, this.tagSourceEnd);
            }
            if (this.textStart == -1) {
                this.textStart = this.index;
            }
            this.scanner.currentCharacter = currentChar;
            return false;
        }
        this.tagValue = 100;
        boolean valid = false;
        switch (firstChar) {
            case 'a': {
                if (length != TAG_AUTHOR_LENGTH || !CharOperation.equals(TAG_AUTHOR, tagName, 0, length)) break;
                this.tagWaitingForDescription = this.tagValue = 12;
                break;
            }
            case 'c': {
                if (length == TAG_CATEGORY_LENGTH && CharOperation.equals(TAG_CATEGORY, tagName, 0, length)) {
                    this.tagValue = 11;
                    if (this.inlineTagStarted) break;
                    valid = this.parseIdentifierTag(false);
                    break;
                }
                if (length != TAG_CODE_LENGTH || !this.inlineTagStarted || !CharOperation.equals(TAG_CODE, tagName, 0, length)) break;
                this.tagWaitingForDescription = this.tagValue = 18;
                break;
            }
            case 'd': {
                if (length == TAG_DEPRECATED_LENGTH && CharOperation.equals(TAG_DEPRECATED, tagName, 0, length)) {
                    this.deprecated = true;
                    valid = true;
                    this.tagWaitingForDescription = this.tagValue = 1;
                    break;
                }
                if (length != TAG_DOC_ROOT_LENGTH || !CharOperation.equals(TAG_DOC_ROOT, tagName, 0, length)) break;
                valid = true;
                this.tagValue = 20;
                break;
            }
            case 'e': {
                if (length != TAG_EXCEPTION_LENGTH || !CharOperation.equals(TAG_EXCEPTION, tagName, 0, length)) break;
                this.tagValue = 5;
                if (this.inlineTagStarted) break;
                valid = this.parseThrows();
                break;
            }
            case 'i': {
                if (length != TAG_INHERITDOC_LENGTH || !CharOperation.equals(TAG_INHERITDOC, tagName, 0, length)) break;
                switch (this.lastBlockTagValue) {
                    case 0: 
                    case 2: 
                    case 3: 
                    case 4: 
                    case 5: {
                        valid = true;
                        if (this.reportProblems) {
                            this.recordInheritedPosition(((long)this.tagSourceStart << 32) + (long)this.tagSourceEnd);
                        }
                        if (!this.inlineTagStarted) break;
                        this.parseInheritDocTag();
                        break;
                    }
                    default: {
                        valid = false;
                        if (!this.reportProblems) break;
                        this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    }
                }
                this.tagValue = 9;
                break;
            }
            case 'l': {
                if (length == TAG_LINK_LENGTH && CharOperation.equals(TAG_LINK, tagName, 0, length)) {
                    this.tagValue = 7;
                    if (!this.inlineTagStarted && (this.kind & 8) == 0) break;
                    valid = this.parseReference();
                    break;
                }
                if (length == TAG_LINKPLAIN_LENGTH && CharOperation.equals(TAG_LINKPLAIN, tagName, 0, length)) {
                    this.tagValue = 8;
                    if (!this.inlineTagStarted) break;
                    valid = this.parseReference();
                    break;
                }
                if (length != TAG_LITERAL_LENGTH || !this.inlineTagStarted || !CharOperation.equals(TAG_LITERAL, tagName, 0, length)) break;
                this.tagWaitingForDescription = this.tagValue = 19;
                break;
            }
            case 'p': {
                if (length != TAG_PARAM_LENGTH || !CharOperation.equals(TAG_PARAM, tagName, 0, length)) break;
                this.tagValue = 2;
                if (this.inlineTagStarted) break;
                valid = this.parseParam();
                break;
            }
            case 'r': {
                if (length != TAG_RETURN_LENGTH || !CharOperation.equals(TAG_RETURN, tagName, 0, length)) break;
                this.tagValue = 3;
                if (this.inlineTagStarted) break;
                valid = this.parseReturn();
                break;
            }
            case 's': {
                if (length == TAG_SEE_LENGTH && CharOperation.equals(TAG_SEE, tagName, 0, length)) {
                    this.tagValue = 6;
                    if (this.inlineTagStarted) break;
                    valid = this.parseReference();
                    break;
                }
                if (length == TAG_SERIAL_LENGTH && CharOperation.equals(TAG_SERIAL, tagName, 0, length)) {
                    this.tagWaitingForDescription = this.tagValue = 13;
                    break;
                }
                if (length == TAG_SERIAL_DATA_LENGTH && CharOperation.equals(TAG_SERIAL_DATA, tagName, 0, length)) {
                    this.tagWaitingForDescription = this.tagValue = 14;
                    break;
                }
                if (length == TAG_SERIAL_FIELD_LENGTH && CharOperation.equals(TAG_SERIAL_FIELD, tagName, 0, length)) {
                    this.tagWaitingForDescription = this.tagValue = 15;
                    break;
                }
                if (length != TAG_SINCE_LENGTH || !CharOperation.equals(TAG_SINCE, tagName, 0, length)) break;
                this.tagWaitingForDescription = this.tagValue = 16;
                break;
            }
            case 't': {
                if (length != TAG_THROWS_LENGTH || !CharOperation.equals(TAG_THROWS, tagName, 0, length)) break;
                this.tagValue = 4;
                if (this.inlineTagStarted) break;
                valid = this.parseThrows();
                break;
            }
            case 'v': {
                if (length == TAG_VALUE_LENGTH && CharOperation.equals(TAG_VALUE, tagName, 0, length)) {
                    this.tagValue = 10;
                    if (this.sourceLevel >= 0x310000L) {
                        if (!this.inlineTagStarted) break;
                        valid = this.parseReference();
                        break;
                    }
                    if (this.validValuePositions == -1L) {
                        if (this.invalidValuePositions != -1L && this.reportProblems) {
                            this.sourceParser.problemReporter().javadocUnexpectedTag((int)(this.invalidValuePositions >>> 32), (int)this.invalidValuePositions);
                        }
                        if (valid) {
                            this.validValuePositions = ((long)this.tagSourceStart << 32) + (long)this.tagSourceEnd;
                            this.invalidValuePositions = -1L;
                            break;
                        }
                        this.invalidValuePositions = ((long)this.tagSourceStart << 32) + (long)this.tagSourceEnd;
                        break;
                    }
                    if (!this.reportProblems) break;
                    this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    break;
                }
                if (length == TAG_VERSION_LENGTH && CharOperation.equals(TAG_VERSION, tagName, 0, length)) {
                    this.tagWaitingForDescription = this.tagValue = 17;
                    break;
                }
                this.createTag();
                break;
            }
            default: {
                this.createTag();
            }
        }
        this.textStart = this.index;
        if (this.tagValue != 100) {
            if (!this.inlineTagStarted) {
                this.lastBlockTagValue = this.tagValue;
            }
            if (this.inlineTagStarted && JAVADOC_TAG_TYPE[this.tagValue] == 2 || !this.inlineTagStarted && JAVADOC_TAG_TYPE[this.tagValue] == 1) {
                valid = false;
                this.tagValue = 100;
                this.tagWaitingForDescription = 0;
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                }
            }
        }
        return valid;
    }

    protected void parseInheritDocTag() {
    }

    protected boolean parseParam() throws InvalidInputException {
        boolean valid = super.parseParam();
        this.tagWaitingForDescription = valid && this.reportProblems ? 2 : 0;
        return valid;
    }

    protected boolean pushParamName(boolean isTypeParam) {
        Expression ref;
        Expression nameRef = null;
        nameRef = isTypeParam ? (ref = new JavadocSingleTypeReference(this.identifierStack[1], this.identifierPositionStack[1], this.tagSourceStart, this.tagSourceEnd)) : (ref = new JavadocSingleNameReference(this.identifierStack[0], this.identifierPositionStack[0], this.tagSourceStart, this.tagSourceEnd));
        if (this.astLengthPtr == -1) {
            this.pushOnAstStack(nameRef, true);
        } else {
            if (!isTypeParam) {
                int i = 1;
                while (i <= this.astLengthPtr) {
                    if (this.astLengthStack[i] != 0) {
                        int stackLength;
                        if (this.reportProblems) {
                            this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                        }
                        if ((long)this.invalidParamReferencesPtr == -1L) {
                            this.invalidParamReferencesStack = new JavadocSingleNameReference[10];
                        }
                        if (++this.invalidParamReferencesPtr >= (stackLength = this.invalidParamReferencesStack.length)) {
                            this.invalidParamReferencesStack = new JavadocSingleNameReference[stackLength + 10];
                            System.arraycopy(this.invalidParamReferencesStack, 0, this.invalidParamReferencesStack, 0, stackLength);
                        }
                        this.invalidParamReferencesStack[this.invalidParamReferencesPtr] = nameRef;
                        return false;
                    }
                    i += 3;
                }
            }
            switch (this.astLengthPtr % 3) {
                case 0: {
                    this.pushOnAstStack(nameRef, false);
                    break;
                }
                case 2: {
                    this.pushOnAstStack(nameRef, true);
                    break;
                }
                default: {
                    return false;
                }
            }
        }
        return true;
    }

    protected boolean pushSeeRef(Object statement) {
        if (this.astLengthPtr == -1) {
            this.pushOnAstStack(null, true);
            this.pushOnAstStack(null, true);
            this.pushOnAstStack(statement, true);
        } else {
            switch (this.astLengthPtr % 3) {
                case 0: {
                    this.pushOnAstStack(null, true);
                    this.pushOnAstStack(statement, true);
                    break;
                }
                case 1: {
                    this.pushOnAstStack(statement, true);
                    break;
                }
                case 2: {
                    this.pushOnAstStack(statement, false);
                    break;
                }
                default: {
                    return false;
                }
            }
        }
        return true;
    }

    protected void pushText(int start, int end) {
        this.tagWaitingForDescription = 0;
    }

    protected boolean pushThrowName(Object typeRef) {
        if (this.astLengthPtr == -1) {
            this.pushOnAstStack(null, true);
            this.pushOnAstStack(typeRef, true);
        } else {
            switch (this.astLengthPtr % 3) {
                case 0: {
                    this.pushOnAstStack(typeRef, true);
                    break;
                }
                case 1: {
                    this.pushOnAstStack(typeRef, false);
                    break;
                }
                case 2: {
                    this.pushOnAstStack(null, true);
                    this.pushOnAstStack(typeRef, true);
                    break;
                }
                default: {
                    return false;
                }
            }
        }
        return true;
    }

    protected void refreshInlineTagPosition(int previousPosition) {
        if (this.tagWaitingForDescription != 0) {
            this.sourceParser.problemReporter().javadocMissingTagDescription(TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            this.tagWaitingForDescription = 0;
        }
    }

    protected void refreshReturnStatement() {
        ((JavadocReturnStatement)this.returnStatement).bits &= 0xFFFBFFFF;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("check javadoc: ").append(this.checkDocComment).append("\n");
        buffer.append("javadoc: ").append(this.docComment).append("\n");
        buffer.append(super.toString());
        return buffer.toString();
    }

    protected void updateDocComment() {
        switch (this.tagWaitingForDescription) {
            case 2: 
            case 4: {
                if (this.inlineTagStarted) break;
                int start = (int)(this.identifierPositionStack[0] >>> 32);
                int end = (int)this.identifierPositionStack[this.identifierPtr];
                this.sourceParser.problemReporter().javadocMissingTagDescriptionAfterReference(start, end, this.sourceParser.modifiers);
                break;
            }
            case 0: {
                break;
            }
            default: {
                if (this.inlineTagStarted) break;
                this.sourceParser.problemReporter().javadocMissingTagDescription(TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            }
        }
        this.tagWaitingForDescription = 0;
        if (this.inheritedPositions != null && this.inheritedPositionsPtr != this.inheritedPositions.length) {
            this.inheritedPositions = new long[this.inheritedPositionsPtr];
            System.arraycopy(this.inheritedPositions, 0, this.inheritedPositions, 0, this.inheritedPositionsPtr);
        }
        this.docComment.inheritedPositions = this.inheritedPositions;
        long l = this.docComment.valuePositions = this.validValuePositions != -1L ? this.validValuePositions : this.invalidValuePositions;
        if (this.returnStatement != null) {
            this.docComment.returnStatement = (JavadocReturnStatement)this.returnStatement;
        }
        if (this.invalidParamReferencesPtr >= 0) {
            this.docComment.invalidParameters = new JavadocSingleNameReference[this.invalidParamReferencesPtr + 1];
            System.arraycopy(this.invalidParamReferencesStack, 0, this.docComment.invalidParameters, 0, this.invalidParamReferencesPtr + 1);
        }
        if (this.astLengthPtr == -1) {
            return;
        }
        int[] sizes = new int[3];
        int i = 0;
        while (i <= this.astLengthPtr) {
            int n = i % 3;
            sizes[n] = sizes[n] + this.astLengthStack[i];
            ++i;
        }
        this.docComment.seeReferences = new Expression[sizes[2]];
        this.docComment.exceptionReferences = new TypeReference[sizes[1]];
        int paramRefPtr = sizes[0];
        this.docComment.paramReferences = new JavadocSingleNameReference[paramRefPtr];
        int paramTypeParamPtr = sizes[0];
        this.docComment.paramTypeParameters = new JavadocSingleTypeReference[paramTypeParamPtr];
        block10: while (this.astLengthPtr >= 0) {
            int ptr = this.astLengthPtr % 3;
            switch (ptr) {
                case 2: {
                    int size = this.astLengthStack[this.astLengthPtr--];
                    int i2 = 0;
                    while (i2 < size) {
                        int n = ptr;
                        int n2 = sizes[n] - 1;
                        sizes[n] = n2;
                        this.docComment.seeReferences[n2] = (Expression)this.astStack[this.astPtr--];
                        ++i2;
                    }
                    continue block10;
                }
                case 1: {
                    int size = this.astLengthStack[this.astLengthPtr--];
                    int i2 = 0;
                    while (i2 < size) {
                        int n = ptr;
                        int n3 = sizes[n] - 1;
                        sizes[n] = n3;
                        this.docComment.exceptionReferences[n3] = (TypeReference)this.astStack[this.astPtr--];
                        ++i2;
                    }
                    continue block10;
                }
                case 0: {
                    int size = this.astLengthStack[this.astLengthPtr--];
                    int i2 = 0;
                    while (i2 < size) {
                        Expression reference;
                        if ((reference = (Expression)this.astStack[this.astPtr--]) instanceof JavadocSingleNameReference) {
                            this.docComment.paramReferences[--paramRefPtr] = (JavadocSingleNameReference)reference;
                        } else if (reference instanceof JavadocSingleTypeReference) {
                            this.docComment.paramTypeParameters[--paramTypeParamPtr] = (JavadocSingleTypeReference)reference;
                        }
                        ++i2;
                    }
                    continue block10;
                }
            }
        }
        if (paramRefPtr == 0) {
            this.docComment.paramTypeParameters = null;
        } else if (paramTypeParamPtr == 0) {
            this.docComment.paramReferences = null;
        } else {
            int size = sizes[0];
            this.docComment.paramReferences = new JavadocSingleNameReference[size - paramRefPtr];
            System.arraycopy(this.docComment.paramReferences, paramRefPtr, this.docComment.paramReferences, 0, size - paramRefPtr);
            this.docComment.paramTypeParameters = new JavadocSingleTypeReference[size - paramTypeParamPtr];
            System.arraycopy(this.docComment.paramTypeParameters, paramTypeParamPtr, this.docComment.paramTypeParameters, 0, size - paramTypeParamPtr);
        }
    }
}

