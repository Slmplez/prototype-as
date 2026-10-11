/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.complete.CompletionJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadoc;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocAllocationExpression;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocFieldReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocMessageSend;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocParamNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTag;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnJavadocTypeParamReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.codeassist.complete.CompletionScanner;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class CompletionJavadocParser
extends JavadocParser {
    public static final int INLINE_ALL_TAGS_LENGTH;
    public static final int BLOCK_ALL_TAGS_LENGTH;
    char[][][] levelTags = new char[2][][];
    int[] levelTagsLength = new int[2];
    int cursorLocation;
    CompletionOnJavadoc completionNode = null;
    boolean pushText = false;
    boolean allPossibleTags = false;

    static {
        int length = 0;
        int i = 0;
        while (i < INLINE_TAGS_LENGTH) {
            length += INLINE_TAGS[i].length;
            ++i;
        }
        INLINE_ALL_TAGS_LENGTH = length;
        length = 0;
        i = 0;
        while (i < BLOCK_TAGS_LENGTH) {
            length += BLOCK_TAGS[i].length;
            ++i;
        }
        BLOCK_ALL_TAGS_LENGTH = length;
    }

    public CompletionJavadocParser(CompletionParser sourceParser) {
        super(sourceParser);
        this.scanner = new CompletionScanner(0x2F0000L);
        this.kind = 264;
        this.initLevelTags();
    }

    public boolean checkDeprecation(int commentPtr) {
        boolean isDeprecated = false;
        this.cursorLocation = ((CompletionParser)this.sourceParser).cursorLocation;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        completionScanner.cursorLocation = this.cursorLocation;
        this.javadocStart = this.sourceParser.scanner.commentStarts[commentPtr];
        this.javadocEnd = this.sourceParser.scanner.commentStops[commentPtr];
        if (this.javadocStart <= this.cursorLocation && this.cursorLocation <= this.javadocEnd) {
            if (CompletionEngine.DEBUG) {
                System.out.println("COMPLETION in Javadoc:");
            }
            completionScanner.completionIdentifier = null;
            this.firstTagPosition = 1;
            super.checkDeprecation(commentPtr);
        } else {
            if (this.sourceParser.scanner.commentTagStarts[commentPtr] != 0) {
                boolean previousValue = this.checkDocComment;
                this.checkDocComment = false;
                isDeprecated = super.checkDeprecation(commentPtr);
                this.checkDocComment = previousValue;
            }
            this.docComment = null;
        }
        return isDeprecated;
    }

    protected boolean commentParse() {
        this.docComment = new CompletionJavadoc(this.javadocStart, this.javadocEnd);
        return super.commentParse();
    }

    protected Object createArgumentReference(char[] name, int dim, boolean isVarargs, Object typeRef, long[] dimPositions, long argNamePos) throws InvalidInputException {
        boolean inCompletion;
        char[] argName = name == null ? CharOperation.NO_CHAR : name;
        Expression expression = (Expression)super.createArgumentReference(argName, dim, isVarargs, typeRef, dimPositions, argNamePos);
        int refStart = ((TypeReference)typeRef).sourceStart;
        int refEnd = ((TypeReference)typeRef).sourceEnd;
        boolean bl = inCompletion = refStart <= this.cursorLocation && this.cursorLocation <= refEnd || refStart == refEnd + 1 && refEnd == this.cursorLocation;
        if (this.completionNode == null && inCompletion) {
            JavadocArgumentExpression javadocArgument = (JavadocArgumentExpression)expression;
            TypeReference expressionType = javadocArgument.argument.type;
            if (expressionType instanceof JavadocSingleTypeReference) {
                this.completionNode = new CompletionOnJavadocSingleTypeReference((JavadocSingleTypeReference)expressionType);
            } else if (expressionType instanceof JavadocQualifiedTypeReference) {
                this.completionNode = new CompletionOnJavadocQualifiedTypeReference((JavadocQualifiedTypeReference)expressionType);
            }
            if (CompletionEngine.DEBUG) {
                System.out.println("\tcompletion argument=" + this.completionNode);
            }
            return this.completionNode;
        }
        return expression;
    }

    protected Object createFieldReference(Object receiver) throws InvalidInputException {
        boolean inCompletion;
        int refStart = (int)(this.identifierPositionStack[0] >>> 32);
        int refEnd = (int)this.identifierPositionStack[0];
        boolean bl = inCompletion = refStart <= this.cursorLocation + 1 && this.cursorLocation <= refEnd || refStart == refEnd + 1 && refEnd == this.cursorLocation || this.memberStart == this.cursorLocation;
        if (inCompletion) {
            JavadocFieldReference fieldRef = (JavadocFieldReference)super.createFieldReference(receiver);
            char[] name = this.sourceParser.compilationUnit.getMainTypeName();
            TypeDeclaration typeDecl = this.getParsedTypeDeclaration();
            if (typeDecl != null) {
                name = typeDecl.name;
            }
            this.completionNode = new CompletionOnJavadocFieldReference(fieldRef, this.memberStart, name);
            if (CompletionEngine.DEBUG) {
                System.out.println("\tcompletion field=" + this.completionNode);
            }
            return this.completionNode;
        }
        return super.createFieldReference(receiver);
    }

    protected Object createMethodReference(Object receiver, List arguments) throws InvalidInputException {
        boolean inCompletion;
        int memberPtr = this.identifierLengthStack[0] - 1;
        int refStart = (int)(this.identifierPositionStack[memberPtr] >>> 32);
        int refEnd = (int)this.identifierPositionStack[memberPtr];
        boolean bl = inCompletion = refStart <= this.cursorLocation + 1 && this.cursorLocation <= refEnd || refStart == refEnd + 1 && refEnd == this.cursorLocation || this.memberStart == this.cursorLocation;
        if (inCompletion) {
            ASTNode node = (ASTNode)super.createMethodReference(receiver, arguments);
            if (node instanceof JavadocMessageSend) {
                JavadocMessageSend messageSend = (JavadocMessageSend)node;
                int nameStart = (int)(messageSend.nameSourcePosition >>> 32);
                int nameEnd = (int)messageSend.nameSourcePosition;
                this.completionNode = nameStart <= this.cursorLocation + 1 && this.cursorLocation <= nameEnd ? new CompletionOnJavadocFieldReference(messageSend, this.memberStart) : new CompletionOnJavadocMessageSend(messageSend, this.memberStart);
            } else if (node instanceof JavadocAllocationExpression) {
                this.completionNode = new CompletionOnJavadocAllocationExpression((JavadocAllocationExpression)node, this.memberStart);
            }
            if (CompletionEngine.DEBUG) {
                System.out.println("\tcompletion method=" + this.completionNode);
            }
            return this.completionNode;
        }
        return super.createMethodReference(receiver, arguments);
    }

    protected Object createTypeReference(int primitiveToken) {
        boolean inCompletion;
        int nbIdentifiers = this.identifierLengthStack[this.identifierLengthPtr];
        int startPtr = this.identifierPtr - (nbIdentifiers - 1);
        int refStart = (int)(this.identifierPositionStack[startPtr] >>> 32);
        int refEnd = (int)this.identifierPositionStack[this.identifierPtr];
        boolean bl = inCompletion = refStart <= this.cursorLocation + 1 && this.cursorLocation <= refEnd || refStart == refEnd + 1 && refEnd == this.cursorLocation;
        if (!inCompletion) {
            return super.createTypeReference(primitiveToken);
        }
        --this.identifierLengthPtr;
        if (nbIdentifiers == 1) {
            this.completionNode = new CompletionOnJavadocSingleTypeReference(this.identifierStack[this.identifierPtr], this.identifierPositionStack[this.identifierPtr], this.tagSourceStart, this.tagSourceEnd);
        } else if (nbIdentifiers > 1) {
            int i = startPtr;
            while (i < this.identifierPtr) {
                int start = (int)(this.identifierPositionStack[i] >>> 32);
                int end = (int)this.identifierPositionStack[i];
                if (start <= this.cursorLocation && this.cursorLocation <= end) {
                    if (i == startPtr) {
                        this.completionNode = new CompletionOnJavadocSingleTypeReference(this.identifierStack[startPtr], this.identifierPositionStack[startPtr], this.tagSourceStart, this.tagSourceEnd);
                        break;
                    }
                    char[][] tokens = new char[i][];
                    System.arraycopy(this.identifierStack, startPtr, tokens, 0, i);
                    long[] positions = new long[i + 1];
                    System.arraycopy(this.identifierPositionStack, startPtr, positions, 0, i + 1);
                    this.completionNode = new CompletionOnJavadocQualifiedTypeReference(tokens, this.identifierStack[i], positions, this.tagSourceStart, this.tagSourceEnd);
                    break;
                }
                ++i;
            }
            if (this.completionNode == null) {
                char[][] tokens = new char[nbIdentifiers - 1][];
                System.arraycopy(this.identifierStack, startPtr, tokens, 0, nbIdentifiers - 1);
                long[] positions = new long[nbIdentifiers];
                System.arraycopy(this.identifierPositionStack, startPtr, positions, 0, nbIdentifiers);
                this.completionNode = new CompletionOnJavadocQualifiedTypeReference(tokens, this.identifierStack[this.identifierPtr], positions, this.tagSourceStart, this.tagSourceEnd);
            }
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion partial qualified type=" + this.completionNode);
        }
        return this.completionNode;
    }

    private char[][][] possibleTags(char[] prefix, boolean newLine) {
        char[][][] possibleTags = new char[2][][];
        if (newLine) {
            char[][] cArrayArray = new char[this.levelTagsLength[0]][];
            possibleTags[0] = cArrayArray;
            System.arraycopy(this.levelTags[0], 0, cArrayArray, 0, this.levelTagsLength[0]);
        } else {
            possibleTags[0] = CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArrayArray = new char[this.levelTagsLength[1]][];
        possibleTags[1] = cArrayArray;
        System.arraycopy(this.levelTags[1], 0, cArrayArray, 0, this.levelTagsLength[1]);
        if (prefix == null || prefix.length == 0) {
            return possibleTags;
        }
        int kinds = this.levelTags.length;
        int k = 0;
        while (k < kinds) {
            int length = possibleTags[k].length;
            int size = 0;
            int[] indexes = new int[length];
            int i = 0;
            while (i < length) {
                if (CharOperation.prefixEquals(prefix, possibleTags[k][i], false)) {
                    indexes[size++] = i;
                }
                ++i;
            }
            char[][] tags = new char[size][];
            int i2 = 0;
            while (i2 < size) {
                tags[i2] = possibleTags[k][indexes[i2]];
                ++i2;
            }
            possibleTags[k] = tags;
            ++k;
        }
        return possibleTags;
    }

    private CompletionJavadoc getCompletionJavadoc() {
        return (CompletionJavadoc)this.docComment;
    }

    private CompletionParser getCompletionParser() {
        return (CompletionParser)this.sourceParser;
    }

    private void initLevelTags() {
        int length;
        int level = (int)(this.complianceLevel >>> 16) - 45 + 1;
        this.levelTags[0] = new char[BLOCK_ALL_TAGS_LENGTH][];
        this.levelTagsLength[0] = 0;
        int i = 0;
        while (i <= level) {
            length = BLOCK_TAGS[i].length;
            System.arraycopy(BLOCK_TAGS[i], 0, this.levelTags[0], this.levelTagsLength[0], length);
            this.levelTagsLength[0] = this.levelTagsLength[0] + length;
            ++i;
        }
        if (this.levelTagsLength[0] < BLOCK_ALL_TAGS_LENGTH) {
            char[][] cArrayArray = new char[this.levelTagsLength[0]][];
            this.levelTags[0] = cArrayArray;
            System.arraycopy(this.levelTags[0], 0, cArrayArray, 0, this.levelTagsLength[0]);
        }
        this.levelTags[1] = new char[INLINE_ALL_TAGS_LENGTH][];
        this.levelTagsLength[1] = 0;
        i = 0;
        while (i <= level) {
            length = INLINE_TAGS[i].length;
            System.arraycopy(INLINE_TAGS[i], 0, this.levelTags[1], this.levelTagsLength[1], length);
            this.levelTagsLength[1] = this.levelTagsLength[1] + length;
            ++i;
        }
        if (this.levelTagsLength[1] < INLINE_ALL_TAGS_LENGTH) {
            char[][] cArrayArray = new char[this.levelTagsLength[1]][];
            this.levelTags[1] = cArrayArray;
            System.arraycopy(this.levelTags[1], 0, cArrayArray, 0, this.levelTagsLength[1]);
        }
    }

    protected Object parseArguments(Object receiver) throws InvalidInputException {
        if (this.tagSourceStart > this.cursorLocation) {
            return super.parseArguments(receiver);
        }
        int modulo = 0;
        int iToken = 0;
        char[] argName = null;
        ArrayList<Object> arguments = new ArrayList<Object>(10);
        Object typeRef = null;
        int dim = 0;
        boolean isVarargs = false;
        long[] dimPositions = new long[20];
        char[] name = null;
        long argNamePos = -1L;
        block2: while (this.index < this.scanner.eofPosition) {
            Object argument;
            boolean firstArg;
            try {
                typeRef = this.parseQualifiedName(false);
                if (this.abort) {
                    return null;
                }
            }
            catch (InvalidInputException invalidInputException) {
                break;
            }
            boolean bl = firstArg = modulo == 0;
            if (!firstArg ? iToken % modulo != 0 : iToken != 0) break;
            if (typeRef == null) {
                if (firstArg && this.getCurrentTokenType() == 28) {
                    this.lineStarted = true;
                    return this.createMethodReference(receiver, null);
                }
                Object methodRef = this.createMethodReference(receiver, arguments);
                return this.syntaxRecoverEmptyArgumentType(methodRef);
            }
            if (this.index >= this.scanner.eofPosition) {
                int argumentStart = ((ASTNode)typeRef).sourceStart;
                argument = this.createArgumentReference(this.scanner.getCurrentIdentifierSource(), 0, false, typeRef, null, ((long)argumentStart << 32) + (long)this.tokenPreviousPosition - 1L);
                return this.syntaxRecoverArgumentType(receiver, arguments, argument);
            }
            if (this.index >= this.cursorLocation) {
                Object methodRef;
                if (this.completionNode instanceof CompletionOnJavadocSingleTypeReference) {
                    CompletionOnJavadocSingleTypeReference singleTypeReference = (CompletionOnJavadocSingleTypeReference)this.completionNode;
                    if (singleTypeReference.token == null || singleTypeReference.token.length == 0) {
                        methodRef = this.createMethodReference(receiver, arguments);
                        return this.syntaxRecoverEmptyArgumentType(methodRef);
                    }
                }
                if (this.completionNode instanceof CompletionOnJavadocQualifiedTypeReference) {
                    CompletionOnJavadocQualifiedTypeReference qualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference)this.completionNode;
                    if (qualifiedTypeReference.tokens == null || qualifiedTypeReference.tokens.length < qualifiedTypeReference.sourcePositions.length) {
                        methodRef = this.createMethodReference(receiver, arguments);
                        return this.syntaxRecoverEmptyArgumentType(methodRef);
                    }
                }
            }
            ++iToken;
            dim = 0;
            isVarargs = false;
            if (this.readToken() == 16) {
                int dimStart = this.scanner.getCurrentTokenStartPosition();
                while (this.readToken() == 16) {
                    this.consumeToken();
                    if (this.readToken() != 70) break block2;
                    this.consumeToken();
                    dimPositions[dim++] = ((long)dimStart << 32) + (long)this.scanner.getCurrentTokenEndPosition();
                }
            } else if (this.readToken() == 107) {
                int dimStart = this.scanner.getCurrentTokenStartPosition();
                dimPositions[dim++] = ((long)dimStart << 32) + (long)this.scanner.getCurrentTokenEndPosition();
                this.consumeToken();
                isVarargs = true;
            }
            argNamePos = -1L;
            if (this.readToken() == 26) {
                this.consumeToken();
                if (!firstArg ? iToken % modulo != 1 : iToken != 1) break;
                if (argName == null && !firstArg) break;
                argName = this.scanner.getCurrentIdentifierSource();
                argNamePos = ((long)this.scanner.getCurrentTokenStartPosition() << 32) + (long)this.scanner.getCurrentTokenEndPosition();
                ++iToken;
            } else if (argName != null) break;
            if (firstArg) {
                modulo = iToken + 1;
            } else if (iToken % modulo != modulo - 1) break;
            int token = this.readToken();
            char[] cArray = name = argName == null ? CharOperation.NO_CHAR : argName;
            if (token == 30) {
                argument = this.createArgumentReference(name, dim, isVarargs, typeRef, dimPositions, argNamePos);
                if (this.abort) {
                    return null;
                }
                arguments.add(argument);
                this.consumeToken();
                ++iToken;
                continue;
            }
            if (token == 28) {
                argument = this.createArgumentReference(name, dim, isVarargs, typeRef, dimPositions, argNamePos);
                if (this.abort) {
                    return null;
                }
                arguments.add(argument);
                this.consumeToken();
                return this.createMethodReference(receiver, arguments);
            }
            argument = this.createArgumentReference(name, dim, isVarargs, typeRef, dimPositions, argNamePos);
            return this.syntaxRecoverArgumentType(receiver, arguments, argument);
        }
        throw new InvalidInputException();
    }

    protected boolean parseParam() throws InvalidInputException {
        boolean inCompletion;
        int startPosition = this.index;
        int endPosition = this.index;
        long namePosition = ((long)startPosition << 32) + (long)endPosition;
        this.identifierPtr = -1;
        boolean valid = super.parseParam();
        if (this.identifierPtr > 2) {
            return valid;
        }
        char[] name = null;
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        boolean isTypeParam = false;
        if (this.identifierPtr >= 0) {
            char[] identifier = null;
            switch (this.identifierPtr) {
                case 2: {
                    if (!valid && completionScanner.completionIdentifier != null && completionScanner.completionIdentifier.length == 0) {
                        valid = this.pushParamName(true);
                    }
                }
                case 1: {
                    isTypeParam = this.identifierStack[0][0] == '<';
                    identifier = this.identifierStack[1];
                    namePosition = this.identifierPositionStack[1];
                    break;
                }
                case 0: {
                    identifier = this.identifierStack[0];
                    namePosition = this.identifierPositionStack[0];
                    boolean bl = isTypeParam = identifier.length > 0 && identifier[0] == '<';
                }
            }
            if (identifier != null && identifier.length > 0 && ScannerHelper.isJavaIdentifierPart(this.complianceLevel, identifier[0])) {
                name = identifier;
            }
            startPosition = (int)(this.identifierPositionStack[0] >> 32);
            endPosition = (int)this.identifierPositionStack[this.identifierPtr];
        }
        boolean bl = inCompletion = startPosition <= this.cursorLocation + 1 && this.cursorLocation <= endPosition || startPosition == endPosition + 1 && endPosition == this.cursorLocation;
        if (inCompletion) {
            if (this.completionNode == null) {
                this.completionNode = isTypeParam ? new CompletionOnJavadocTypeParamReference(name, namePosition, startPosition, endPosition) : new CompletionOnJavadocParamNameReference(name, namePosition, startPosition, endPosition);
                if (CompletionEngine.DEBUG) {
                    System.out.println("\tcompletion param=" + this.completionNode);
                }
            } else if (this.completionNode instanceof CompletionOnJavadocParamNameReference) {
                int nameStart;
                CompletionOnJavadocParamNameReference paramNameRef = (CompletionOnJavadocParamNameReference)this.completionNode;
                paramNameRef.sourceStart = nameStart = (int)(namePosition >> 32);
                int nameEnd = (int)namePosition;
                paramNameRef.sourceEnd = nameStart < this.cursorLocation && this.cursorLocation < nameEnd ? this.cursorLocation + 1 : nameEnd;
                paramNameRef.tagSourceStart = startPosition;
                paramNameRef.tagSourceEnd = endPosition;
            } else if (this.completionNode instanceof CompletionOnJavadocTypeParamReference) {
                int nameStart;
                CompletionOnJavadocTypeParamReference typeParamRef = (CompletionOnJavadocTypeParamReference)this.completionNode;
                typeParamRef.sourceStart = nameStart = (int)(namePosition >> 32);
                int nameEnd = (int)namePosition;
                typeParamRef.sourceEnd = nameStart < this.cursorLocation && this.cursorLocation < nameEnd ? this.cursorLocation + 1 : nameEnd;
                typeParamRef.tagSourceStart = startPosition;
                typeParamRef.tagSourceEnd = endPosition;
            }
        }
        return valid;
    }

    protected boolean parseReference() throws InvalidInputException {
        boolean completed = this.completionNode != null;
        boolean valid = super.parseReference();
        if (!completed && this.completionNode != null) {
            this.completionNode.addCompletionFlags(64);
        }
        return valid;
    }

    protected boolean parseTag(int previousPosition) throws InvalidInputException {
        boolean inCompletion;
        int startPosition = this.inlineTagStarted ? this.inlineTagStart : previousPosition;
        boolean newLine = !this.lineStarted;
        boolean valid = super.parseTag(previousPosition);
        boolean bl = inCompletion = this.tagSourceStart <= this.cursorLocation + 1 && this.cursorLocation <= this.tagSourceEnd || this.tagSourceStart == this.tagSourceEnd + 1 && this.tagSourceEnd == this.cursorLocation;
        if (inCompletion) {
            int end = this.tagSourceEnd;
            if (this.inlineTagStarted && this.scanner.currentCharacter == '}') {
                end = this.scanner.currentPosition;
            }
            long position = ((long)startPosition << 32) + (long)end;
            int length = this.cursorLocation + 1 - this.tagSourceStart;
            char[] tag = new char[length];
            System.arraycopy(this.source, this.tagSourceStart, tag, 0, length);
            char[][][] tags = this.possibleTags(tag, newLine);
            if (tags != null) {
                this.completionNode = new CompletionOnJavadocTag(tag, position, startPosition, end, tags, this.allPossibleTags);
            }
        }
        return valid;
    }

    protected boolean parseThrows() {
        try {
            Object typeRef = this.parseQualifiedName(true);
            if (this.completionNode != null) {
                this.completionNode.addCompletionFlags(2);
            }
            return this.pushThrowName(typeRef);
        }
        catch (InvalidInputException invalidInputException) {
            return false;
        }
    }

    protected boolean pushParamName(boolean isTypeParam) {
        if (super.pushParamName(isTypeParam)) {
            Expression expression = (Expression)this.astStack[this.astPtr];
            if (expression.sourceStart <= this.cursorLocation + 1 && this.cursorLocation <= expression.sourceEnd) {
                this.completionNode = isTypeParam ? new CompletionOnJavadocTypeParamReference((JavadocSingleTypeReference)expression) : new CompletionOnJavadocParamNameReference((JavadocSingleNameReference)expression);
                if (CompletionEngine.DEBUG) {
                    System.out.println("\tcompletion param=" + this.completionNode);
                }
            }
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void pushText(int start, int end) {
        if (start > this.cursorLocation) return;
        if (this.cursorLocation > end) return;
        this.scanner.resetTo(start, end);
        tokenizeWhiteSpace = this.scanner.tokenizeWhiteSpace;
        this.scanner.tokenizeWhiteSpace = true;
        try {
            typeRef = null;
            this.pushText = true;
            previousToken = 1000;
            while (!this.scanner.atEnd() && this.completionNode == null && !this.abort) {
                token = this.readTokenSafely();
                switch (token) {
                    case 52: {
                        strStart = 0;
                        strEnd = 0;
                        strStart = this.scanner.getCurrentTokenStartPosition() + 1;
                        if (strStart <= this.cursorLocation && this.cursorLocation <= (strEnd = this.scanner.getCurrentTokenEndPosition() - 1)) {
                            this.scanner.resetTo(strStart, strEnd);
                        }
                        this.consumeToken();
                        break;
                    }
                    case 110: {
                        this.consumeToken();
                        if (this.scanner.currentCharacter != '#') break;
                        member = null;
                        try {
                            this.scanner.tokenizeWhiteSpace = false;
                            member = this.parseMember(typeRef);
                        }
                        catch (InvalidInputException v0) {
                            this.consumeToken();
                        }
                        this.scanner.tokenizeWhiteSpace = true;
                        if (this.completionNode == null) break;
                        v1 = flags = this.inlineTagStarted != false ? 0 : 20;
                        if (member instanceof JavadocMessageSend) {
                            msgSend = (JavadocMessageSend)member;
                            this.completionNode = new CompletionOnJavadocMessageSend(msgSend, this.memberStart, flags);
                            if (!CompletionEngine.DEBUG) break;
                            System.out.println("\tnew completion method=" + this.completionNode);
                            break;
                        }
                        if (member instanceof JavadocAllocationExpression) {
                            alloc = (JavadocAllocationExpression)member;
                            this.completionNode = new CompletionOnJavadocAllocationExpression(alloc, this.memberStart, flags);
                            if (!CompletionEngine.DEBUG) break;
                            System.out.println("\tnew completion method=" + this.completionNode);
                            break;
                        }
                        this.completionNode.addCompletionFlags(flags);
                        break;
                    }
                    case 26: {
                        try {
                            try {
                                this.scanner.tokenizeWhiteSpace = false;
                                typeRef = this.parseQualifiedName(true);
                                if (this.completionNode == null) {
                                    this.consumeToken();
                                    this.scanner.resetTo(this.tokenPreviousPosition, end);
                                    this.index = this.tokenPreviousPosition;
                                }
                            }
                            catch (InvalidInputException v2) {
                                this.consumeToken();
                                this.scanner.tokenizeWhiteSpace = true;
                                ** GOTO lbl66
                            }
                        }
                        catch (Throwable member) {
                            this.scanner.tokenizeWhiteSpace = true;
                            throw member;
                        }
                        this.scanner.tokenizeWhiteSpace = true;
lbl66:
                        // 2 sources

                        if (previousToken == 1000) break;
                        typeRef = null;
                        this.completionNode = null;
                        break;
                    }
                    case 53: {
                        this.consumeToken();
                        try {
                            this.scanner.tokenizeWhiteSpace = false;
                            startPosition = this.scanner.getCurrentTokenStartPosition();
                            this.parseTag(startPosition);
                            if (this.completionNode != null) {
                                // empty if block
                            }
                        }
                        catch (InvalidInputException v3) {
                            this.consumeToken();
                        }
                        this.scanner.tokenizeWhiteSpace = true;
                        break;
                    }
                    default: {
                        this.consumeToken();
                        typeRef = null;
                    }
                }
                previousToken = token;
            }
        }
        finally {
            this.scanner.tokenizeWhiteSpace = tokenizeWhiteSpace;
            this.pushText = false;
        }
        this.index = end;
        this.scanner.currentPosition = end;
        this.consumeToken();
        if (this.completionNode == null) return;
        if (this.inlineTagStarted) {
            this.completionNode.addCompletionFlags(64);
            return;
        }
        this.completionNode.addCompletionFlags(4);
    }

    protected int readToken() throws InvalidInputException {
        int token = super.readToken();
        if (token == 26 && this.scanner.currentPosition == this.scanner.startPosition) {
            this.scanner.getCurrentIdentifierSource();
        }
        return token;
    }

    protected Object syntaxRecoverQualifiedName(int primitiveToken) throws InvalidInputException {
        if (this.cursorLocation == (int)this.identifierPositionStack[this.identifierPtr]) {
            return this.createTypeReference(primitiveToken);
        }
        int idLength = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] tokens = new char[idLength][];
        int startPtr = this.identifierPtr - idLength + 1;
        System.arraycopy(this.identifierStack, startPtr, tokens, 0, idLength);
        long[] positions = new long[idLength + 1];
        System.arraycopy(this.identifierPositionStack, startPtr, positions, 0, idLength);
        positions[idLength] = ((long)this.tokenPreviousPosition << 32) + (long)this.tokenPreviousPosition;
        this.completionNode = new CompletionOnJavadocQualifiedTypeReference(tokens, CharOperation.NO_CHAR, positions, this.tagSourceStart, this.tagSourceEnd);
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion partial qualified type=" + this.completionNode);
        }
        return this.completionNode;
    }

    protected Object syntaxRecoverArgumentType(Object receiver, List arguments, Object argument) throws InvalidInputException {
        Object methodRef;
        if (this.completionNode != null && !this.pushText) {
            this.completionNode.addCompletionFlags(8);
            if (this.completionNode instanceof CompletionOnJavadocSingleTypeReference) {
                char[] token = ((CompletionOnJavadocSingleTypeReference)this.completionNode).token;
                if (token != null && token.length > 0) {
                    return this.completionNode;
                }
            } else {
                return this.completionNode;
            }
        }
        if (this.completionNode instanceof CompletionOnJavadocSingleTypeReference) {
            CompletionOnJavadocSingleTypeReference singleTypeReference = (CompletionOnJavadocSingleTypeReference)this.completionNode;
            if (singleTypeReference.token != null && singleTypeReference.token.length > 0) {
                arguments.add(argument);
            }
        } else if (this.completionNode instanceof CompletionOnJavadocQualifiedTypeReference) {
            CompletionOnJavadocQualifiedTypeReference qualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference)this.completionNode;
            if (qualifiedTypeReference.tokens != null && qualifiedTypeReference.tokens.length == qualifiedTypeReference.sourcePositions.length) {
                arguments.add(argument);
            }
        } else {
            arguments.add(argument);
        }
        if ((methodRef = super.createMethodReference(receiver, arguments)) instanceof JavadocMessageSend) {
            JavadocMessageSend msgSend = (JavadocMessageSend)methodRef;
            if (this.index > this.cursorLocation) {
                msgSend.sourceEnd = this.tokenPreviousPosition - 1;
            }
            int nameStart = (int)(msgSend.nameSourcePosition >>> 32);
            int nameEnd = (int)msgSend.nameSourcePosition;
            this.completionNode = nameStart <= this.cursorLocation + 1 && this.cursorLocation <= nameEnd ? new CompletionOnJavadocFieldReference(msgSend, this.memberStart) : new CompletionOnJavadocMessageSend(msgSend, this.memberStart);
        } else if (methodRef instanceof JavadocAllocationExpression) {
            JavadocAllocationExpression allocExp = (JavadocAllocationExpression)methodRef;
            if (this.index > this.cursorLocation) {
                allocExp.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocAllocationExpression(allocExp, this.memberStart);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion method=" + this.completionNode);
        }
        return this.completionNode;
    }

    protected Object syntaxRecoverEmptyArgumentType(Object methodRef) throws InvalidInputException {
        if (methodRef instanceof JavadocMessageSend) {
            JavadocMessageSend msgSend = (JavadocMessageSend)methodRef;
            if (this.index > this.cursorLocation) {
                msgSend.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocMessageSend(msgSend, this.memberStart);
        } else if (methodRef instanceof JavadocAllocationExpression) {
            JavadocAllocationExpression allocExp = (JavadocAllocationExpression)methodRef;
            if (this.index > this.cursorLocation) {
                allocExp.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocAllocationExpression(allocExp, this.memberStart);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion method=" + this.completionNode);
        }
        return this.completionNode;
    }

    protected void updateDocComment() {
        super.updateDocComment();
        if (this.completionNode instanceof Expression) {
            this.getCompletionParser().assistNodeParent = this.docComment;
            this.getCompletionParser().assistNode = (ASTNode)((Object)this.completionNode);
            this.getCompletionJavadoc().completionNode = (Expression)((Object)this.completionNode);
        }
    }

    protected boolean verifySpaceOrEndComment() {
        CompletionScanner completionScanner = (CompletionScanner)this.scanner;
        if (completionScanner.completionIdentifier != null && completionScanner.completedIdentifierStart <= this.cursorLocation && this.cursorLocation <= completionScanner.completedIdentifierEnd) {
            return true;
        }
        return super.verifySpaceOrEndComment();
    }
}

