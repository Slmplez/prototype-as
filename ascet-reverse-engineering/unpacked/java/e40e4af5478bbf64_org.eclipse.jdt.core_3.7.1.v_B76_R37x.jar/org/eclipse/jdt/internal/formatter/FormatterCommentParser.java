/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.eclipse.jdt.internal.formatter.FormatJavadoc;
import org.eclipse.jdt.internal.formatter.FormatJavadocBlock;
import org.eclipse.jdt.internal.formatter.FormatJavadocNode;
import org.eclipse.jdt.internal.formatter.FormatJavadocReference;
import org.eclipse.jdt.internal.formatter.FormatJavadocText;
import org.eclipse.jdt.internal.formatter.comment.IJavaDocTagConstants;

public class FormatterCommentParser
extends JavadocParser
implements IJavaDocTagConstants {
    char[][] htmlTags;
    int htmlTagsPtr = -1;
    int inlineHtmlTagsPtr = -1;
    private boolean invalidTagName;
    public boolean parseHtmlTags;

    public FormatterCommentParser(long sourceLevel) {
        super(null);
        this.kind = 288;
        this.reportProblems = false;
        this.checkDocComment = true;
        this.sourceLevel = sourceLevel;
    }

    public boolean parse(int start, int end) {
        this.javadocStart = start;
        this.javadocEnd = end;
        this.firstTagPosition = this.javadocStart;
        this.htmlTagsPtr = -1;
        boolean valid = this.commentParse();
        return valid && this.docComment != null;
    }

    protected Object createArgumentReference(char[] name, int dim, boolean isVarargs, Object ref, long[] dimPositions, long argNamePos) throws InvalidInputException {
        FormatJavadocReference typeRef = (FormatJavadocReference)ref;
        if (dim > 0) {
            typeRef.sourceEnd = (int)dimPositions[dim - 1];
        }
        if (argNamePos >= 0L) {
            typeRef.sourceEnd = (int)argNamePos;
        }
        return ref;
    }

    protected boolean createFakeReference(int start) {
        this.scanner.currentPosition = this.index;
        int lineStart = this.scanner.getLineNumber(start);
        FormatJavadocReference reference = new FormatJavadocReference(start, this.index - 1, lineStart);
        return this.pushSeeRef(reference);
    }

    protected Object createFieldReference(Object receiver) throws InvalidInputException {
        int start = receiver == null ? this.memberStart : ((FormatJavadocReference)receiver).sourceStart;
        int lineStart = this.scanner.getLineNumber(start);
        return new FormatJavadocReference(start, (int)this.identifierPositionStack[0], lineStart);
    }

    protected Object createMethodReference(Object receiver, List arguments) throws InvalidInputException {
        int start = receiver == null ? this.memberStart : ((FormatJavadocReference)receiver).sourceStart;
        int lineStart = this.scanner.getLineNumber(start);
        return new FormatJavadocReference(start, this.scanner.getCurrentTokenEndPosition(), lineStart);
    }

    protected void createTag() {
        int lineStart = this.scanner.getLineNumber(this.tagSourceStart);
        if (this.inlineTagStarted) {
            FormatJavadocBlock block = new FormatJavadocBlock(this.inlineTagStart, this.tagSourceEnd, lineStart, this.tagValue);
            FormatJavadocBlock previousBlock = null;
            if (this.astPtr == -1) {
                previousBlock = new FormatJavadocBlock(this.inlineTagStart, this.tagSourceEnd, lineStart, 0);
                this.pushOnAstStack(previousBlock, true);
            } else {
                previousBlock = (FormatJavadocBlock)this.astStack[this.astPtr];
            }
            previousBlock.addBlock(block, this.htmlTagsPtr == -1 ? 0 : this.htmlTagsPtr);
        } else {
            FormatJavadocBlock block = new FormatJavadocBlock(this.tagSourceStart, this.tagSourceEnd, lineStart, this.tagValue);
            this.pushOnAstStack(block, true);
        }
    }

    protected Object createTypeReference(int primitiveToken) {
        int size = this.identifierLengthStack[this.identifierLengthPtr];
        if (size == 0) {
            return null;
        }
        int start = (int)(this.identifierPositionStack[this.identifierPtr] >>> 32);
        int lineStart = this.scanner.getLineNumber(start);
        if (size == 1) {
            return new FormatJavadocReference(this.identifierPositionStack[this.identifierPtr], lineStart);
        }
        long[] positions = new long[size];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr - size + 1, positions, 0, size);
        return new FormatJavadocReference((int)(positions[0] >>> 32), (int)positions[positions.length - 1], lineStart);
    }

    private int getHtmlTagIndex(char[] htmlTag) {
        int length = htmlTag == null ? 0 : htmlTag.length;
        int tagId = 0;
        if (length > 0) {
            char[] tag;
            int i = 0;
            int max = JAVADOC_SINGLE_BREAK_TAG.length;
            while (i < max) {
                tag = JAVADOC_SINGLE_BREAK_TAG[i];
                if (length == tag.length && CharOperation.equals(htmlTag, tag, false)) {
                    return (tagId | 0x100) + i;
                }
                ++i;
            }
            i = 0;
            max = JAVADOC_CODE_TAGS.length;
            while (i < max) {
                tag = JAVADOC_CODE_TAGS[i];
                if (length == tag.length && CharOperation.equals(htmlTag, tag, false)) {
                    return (tagId | 0x200) + i;
                }
                ++i;
            }
            i = 0;
            max = JAVADOC_BREAK_TAGS.length;
            while (i < max) {
                tag = JAVADOC_BREAK_TAGS[i];
                if (length == tag.length && CharOperation.equals(htmlTag, tag, false)) {
                    return (tagId | 0x400) + i;
                }
                ++i;
            }
            i = 0;
            max = JAVADOC_IMMUTABLE_TAGS.length;
            while (i < max) {
                tag = JAVADOC_IMMUTABLE_TAGS[i];
                if (length == tag.length && CharOperation.equals(htmlTag, tag, false)) {
                    return (tagId | 0x800) + i;
                }
                ++i;
            }
            i = 0;
            max = JAVADOC_SEPARATOR_TAGS.length;
            while (i < max) {
                tag = JAVADOC_SEPARATOR_TAGS[i];
                if (length == tag.length && CharOperation.equals(htmlTag, tag, false)) {
                    return (tagId | 0x1000) + i;
                }
                ++i;
            }
        }
        return 65280;
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    protected boolean parseHtmlTag(int previousPosition, int endTextPosition) throws InvalidInputException {
        if (!this.parseHtmlTags) {
            return false;
        }
        closing = false;
        valid = false;
        incremented = false;
        currentPosition = start = this.scanner.currentPosition;
        htmlPtr = this.htmlTagsPtr;
        firstChar = this.peekChar();
        hasWhitespaces = firstChar == ' ' || ScannerHelper.isWhitespace(firstChar) != false;
        try {
            token = this.readTokenAndConsume();
            switch (token) {
                case 26: {
                    htmlTag = this.scanner.getCurrentIdentifierSource();
                    htmlIndex = this.getHtmlTagIndex(htmlTag);
                    if (htmlIndex == 65280) lbl-1000:
                    // 3 sources

                    {
                        return false;
                    }
                    if (htmlPtr >= 0 && ((lastHtmlTagIndex = this.getHtmlTagIndex(this.htmlTags[htmlPtr])) & 65280) == 2048) {
                        if ((htmlIndex & 65280) == 512) {
                            lastNode /* !! */  = parentNode = (previousBlock = (FormatJavadocBlock)this.astStack[this.astPtr]);
                            while (lastNode /* !! */ .getLastNode() != null) {
                                parentNode = lastNode /* !! */ ;
                                lastNode /* !! */  = lastNode /* !! */ .getLastNode();
                            }
                            if (lastNode /* !! */ .isText()) {
                                text = (FormatJavadocText)lastNode /* !! */ ;
                                if (text.separatorsPtr == -1) break;
                            }
                        }
                        return false;
                    }
                    if (!((htmlIndex & 65280) <= 256 || this.htmlTagsPtr != -1 && CharOperation.equals(this.htmlTags[this.htmlTagsPtr], htmlTag, false))) {
                        if (++this.htmlTagsPtr == 0) {
                            this.htmlTags = new char[10][];
                        } else if (this.htmlTagsPtr == this.htmlTags.length) {
                            v0 = new char[this.htmlTags.length + 10][];
                            this.htmlTags = v0;
                            System.arraycopy(this.htmlTags, 0, v0, 0, this.htmlTagsPtr);
                        }
                        this.htmlTags[this.htmlTagsPtr] = htmlTag;
                        incremented = true;
                    }
                    currentPosition = this.scanner.currentPosition;
                    if (this.readToken() != 6) break;
                    this.consumeToken();
                    break;
                }
                ** case 6:
                default: {
                    return false;
                }
            }
            block12 : switch (this.readTokenAndConsume()) {
                case 7: 
                case 14: {
                    ** GOTO lbl-1000
                }
                case 11: {
                    break;
                }
                case 10: 
                case 15: 
                case 93: {
                    break;
                }
                default: {
                    this.index = currentPosition;
                    do {
                        switch (this.readChar()) {
                            case '<': {
                                if (!hasWhitespaces) ** break;
                                ** continue;
                                this.index = currentPosition;
                                this.scanner.startPosition = currentPosition;
                                this.scanner.currentPosition = currentPosition;
                                this.scanner.currentCharacter = (char)60;
                                break block12;
                            }
                            case '>': {
                                this.scanner.startPosition = this.index;
                                this.scanner.currentPosition = this.index;
                                this.scanner.currentCharacter = this.peekChar();
                                break block12;
                            }
                        }
                    } while (this.index < this.javadocTextEnd);
                    this.index = currentPosition;
                    this.scanner.startPosition = currentPosition;
                    this.scanner.currentPosition = currentPosition;
                }
            }
            if (this.lineStarted && this.textStart != -1 && this.textStart < endTextPosition) {
                this.pushText(this.textStart, endTextPosition, -1, htmlPtr);
            }
            this.pushText(previousPosition, this.index, htmlIndex, this.htmlTagsPtr);
            this.textStart = -1;
            valid = true;
        }
        finally {
            if (valid) {
                if (closing) {
                    --this.htmlTagsPtr;
                }
            } else if (!this.abort) {
                if (incremented) {
                    --this.htmlTagsPtr;
                    if (this.htmlTagsPtr == -1) {
                        this.htmlTags = null;
                    }
                }
                this.scanner.resetTo(start, this.scanner.eofPosition - 1);
                this.index = start;
            }
        }
        return valid;
    }

    protected boolean parseIdentifierTag(boolean report) {
        if (super.parseIdentifierTag(report)) {
            this.createTag();
            this.index = this.tagSourceEnd + 1;
            this.scanner.resetTo(this.index, this.javadocEnd);
            return true;
        }
        this.tagValue = 100;
        return false;
    }

    protected boolean parseParam() throws InvalidInputException {
        boolean valid = super.parseParam();
        if (!valid) {
            this.scanner.resetTo(this.tagSourceEnd + 1, this.javadocEnd);
            this.index = this.tagSourceEnd + 1;
            char ch = this.peekChar();
            if (ch == ' ' || ScannerHelper.isWhitespace(ch)) {
                int token = this.scanner.getNextToken();
                if (token == 26 && ((ch = this.peekChar()) == ' ' || ScannerHelper.isWhitespace(ch))) {
                    this.pushIdentifier(true, false);
                    this.pushParamName(false);
                    this.index = this.scanner.currentPosition;
                    valid = true;
                }
                this.scanner.resetTo(this.tagSourceEnd + 1, this.javadocEnd);
            }
            this.tagValue = 100;
        }
        return valid;
    }

    protected boolean parseReference() throws InvalidInputException {
        boolean valid = super.parseReference();
        if (!valid) {
            this.scanner.resetTo(this.tagSourceEnd + 1, this.javadocEnd);
            this.index = this.tagSourceEnd + 1;
            this.tagValue = 100;
        }
        return valid;
    }

    protected boolean parseReturn() {
        this.createTag();
        return true;
    }

    protected boolean parseTag(int previousPosition) throws InvalidInputException {
        int ptr;
        if (this.htmlTagsPtr >= 0) {
            ptr = this.htmlTagsPtr;
            while (ptr >= 0) {
                if (this.getHtmlTagIndex(this.htmlTags[ptr--]) != 512) continue;
                if (this.textStart == -1) {
                    this.textStart = this.inlineTagStarted ? this.inlineTagStart : previousPosition;
                }
                this.inlineTagStarted = false;
                return true;
            }
        }
        ptr = this.astPtr;
        this.tagSourceStart = previousPosition;
        this.scanner.startPosition = this.index;
        this.scanner.currentCharacter = this.readChar();
        switch (this.scanner.currentCharacter) {
            case ' ': 
            case '*': 
            case '}': {
                this.tagSourceEnd = previousPosition;
                if (this.textStart == -1) {
                    this.textStart = previousPosition;
                }
                return true;
            }
        }
        if (ScannerHelper.isWhitespace(this.scanner.currentCharacter)) {
            this.tagSourceEnd = previousPosition;
            if (this.textStart == -1) {
                this.textStart = previousPosition;
            }
            return true;
        }
        int currentPosition = this.index;
        char currentChar = this.scanner.currentCharacter;
        while (currentChar != ' ' && currentChar != '*' && currentChar != '}' && !ScannerHelper.isWhitespace(currentChar)) {
            currentPosition = this.index;
            currentChar = this.readChar();
        }
        this.tagSourceEnd = currentPosition - 1;
        this.scanner.currentCharacter = currentChar;
        this.scanner.currentPosition = currentPosition;
        char[] tagName = this.scanner.getCurrentIdentifierSource();
        int length = tagName.length;
        this.index = this.tagSourceEnd + 1;
        this.tagValue = 100;
        boolean valid = false;
        switch (tagName[0]) {
            case 'a': {
                if (length != TAG_AUTHOR_LENGTH || !CharOperation.equals(TAG_AUTHOR, tagName)) break;
                this.tagValue = 12;
                break;
            }
            case 'c': {
                if (length == TAG_CATEGORY_LENGTH && CharOperation.equals(TAG_CATEGORY, tagName)) {
                    this.tagValue = 11;
                    valid = this.parseIdentifierTag(false);
                    break;
                }
                if (length != TAG_CODE_LENGTH || !this.inlineTagStarted || !CharOperation.equals(TAG_CODE, tagName)) break;
                this.tagValue = 18;
                break;
            }
            case 'd': {
                if (length == TAG_DEPRECATED_LENGTH && CharOperation.equals(TAG_DEPRECATED, tagName)) {
                    this.deprecated = true;
                    valid = true;
                    this.tagValue = 1;
                    break;
                }
                if (length != TAG_DOC_ROOT_LENGTH || !CharOperation.equals(TAG_DOC_ROOT, tagName)) break;
                valid = true;
                this.tagValue = 20;
                break;
            }
            case 'e': {
                if (length != TAG_EXCEPTION_LENGTH || !CharOperation.equals(TAG_EXCEPTION, tagName)) break;
                this.tagValue = 5;
                valid = this.parseThrows();
                break;
            }
            case 'i': {
                if (length != TAG_INHERITDOC_LENGTH || !CharOperation.equals(TAG_INHERITDOC, tagName)) break;
                if (this.reportProblems) {
                    this.recordInheritedPosition(((long)this.tagSourceStart << 32) + (long)this.tagSourceEnd);
                }
                valid = true;
                this.tagValue = 9;
                break;
            }
            case 'l': {
                if (length == TAG_LINK_LENGTH && CharOperation.equals(TAG_LINK, tagName)) {
                    this.tagValue = 7;
                    if (this.inlineTagStarted || (this.kind & 8) != 0) {
                        valid = this.parseReference();
                        break;
                    }
                    valid = false;
                    if (!this.reportProblems) break;
                    this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    break;
                }
                if (length == TAG_LINKPLAIN_LENGTH && CharOperation.equals(TAG_LINKPLAIN, tagName)) {
                    this.tagValue = 8;
                    if (this.inlineTagStarted) {
                        valid = this.parseReference();
                        break;
                    }
                    valid = false;
                    if (!this.reportProblems) break;
                    this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    break;
                }
                if (length != TAG_LITERAL_LENGTH || !this.inlineTagStarted || !CharOperation.equals(TAG_LITERAL, tagName)) break;
                this.tagValue = 19;
                break;
            }
            case 'p': {
                if (length != TAG_PARAM_LENGTH || !CharOperation.equals(TAG_PARAM, tagName)) break;
                this.tagValue = 2;
                valid = this.parseParam();
                break;
            }
            case 's': {
                if (length == TAG_SEE_LENGTH && CharOperation.equals(TAG_SEE, tagName)) {
                    if (this.inlineTagStarted) {
                        valid = false;
                        if (!this.reportProblems) break;
                        this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                        break;
                    }
                    this.tagValue = 6;
                    valid = this.parseReference();
                    break;
                }
                if (length == TAG_SERIAL_LENGTH && CharOperation.equals(TAG_SERIAL, tagName)) {
                    this.tagValue = 13;
                    break;
                }
                if (length == TAG_SERIAL_DATA_LENGTH && CharOperation.equals(TAG_SERIAL_DATA, tagName)) {
                    this.tagValue = 14;
                    break;
                }
                if (length == TAG_SERIAL_FIELD_LENGTH && CharOperation.equals(TAG_SERIAL_FIELD, tagName)) {
                    this.tagValue = 15;
                    break;
                }
                if (length != TAG_SINCE_LENGTH || !CharOperation.equals(TAG_SINCE, tagName)) break;
                this.tagValue = 16;
                break;
            }
            case 'v': {
                if (length == TAG_VALUE_LENGTH && CharOperation.equals(TAG_VALUE, tagName)) {
                    this.tagValue = 10;
                    if (this.sourceLevel < 0x310000L) break;
                    if (this.inlineTagStarted) {
                        valid = this.parseReference();
                        break;
                    }
                    valid = false;
                    if (!this.reportProblems) break;
                    this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    break;
                }
                if (length == TAG_VERSION_LENGTH && CharOperation.equals(TAG_VERSION, tagName)) {
                    this.tagValue = 17;
                    break;
                }
                this.createTag();
                break;
            }
            case 'r': {
                if (length != TAG_RETURN_LENGTH || !CharOperation.equals(TAG_RETURN, tagName)) break;
                this.tagValue = 3;
                valid = this.parseReturn();
                break;
            }
            case 't': {
                if (length != TAG_THROWS_LENGTH || !CharOperation.equals(TAG_THROWS, tagName)) break;
                this.tagValue = 4;
                valid = this.parseThrows();
                break;
            }
            default: {
                this.createTag();
            }
        }
        this.consumeToken();
        this.textStart = -1;
        if (valid) {
            switch (this.tagValue) {
                case 1: 
                case 9: {
                    this.createTag();
                }
            }
        } else if (this.invalidTagName) {
            this.textStart = previousPosition;
        } else if (this.astPtr == ptr) {
            this.createTag();
        }
        return true;
    }

    protected boolean parseThrows() {
        boolean valid = super.parseThrows();
        if (!valid) {
            this.scanner.resetTo(this.tagSourceEnd + 1, this.javadocEnd);
            this.index = this.tagSourceEnd + 1;
            this.tagValue = 100;
        }
        return valid;
    }

    protected boolean pushParamName(boolean isTypeParam) {
        FormatJavadocReference reference;
        int lineTagStart = this.scanner.getLineNumber(this.tagSourceStart);
        FormatJavadocBlock block = new FormatJavadocBlock(this.tagSourceStart, this.tagSourceEnd, lineTagStart, 2);
        int start = (int)(this.identifierPositionStack[0] >>> 32);
        int lineStart = this.scanner.getLineNumber(start);
        block.reference = reference = new FormatJavadocReference(start, (int)this.identifierPositionStack[isTypeParam ? 2 : 0], lineStart);
        block.sourceEnd = reference.sourceEnd;
        this.pushOnAstStack(block, true);
        return true;
    }

    protected boolean pushSeeRef(Object statement) {
        FormatJavadocReference reference = (FormatJavadocReference)statement;
        int lineTagStart = this.scanner.getLineNumber(this.tagSourceStart);
        FormatJavadocBlock block = new FormatJavadocBlock(this.tagSourceStart, this.tagSourceEnd, lineTagStart, this.tagValue);
        block.reference = reference;
        block.sourceEnd = reference.sourceEnd;
        if (this.inlineTagStarted) {
            block.sourceStart = this.inlineTagStart;
            FormatJavadocBlock previousBlock = null;
            if (this.astPtr == -1) {
                int lineStart = this.scanner.getLineNumber(this.inlineTagStart);
                previousBlock = new FormatJavadocBlock(this.inlineTagStart, this.tagSourceEnd, lineStart, 0);
                previousBlock.sourceEnd = reference.sourceEnd;
                this.pushOnAstStack(previousBlock, true);
            } else {
                previousBlock = (FormatJavadocBlock)this.astStack[this.astPtr];
            }
            previousBlock.addBlock(block, this.htmlTagsPtr == -1 ? 0 : this.htmlTagsPtr);
            block.flags |= 1;
        } else {
            this.pushOnAstStack(block, true);
        }
        return true;
    }

    protected void pushText(int start, int end) {
        this.pushText(start, end, -1, this.htmlTagsPtr == -1 ? 0 : this.htmlTagsPtr);
    }

    private void pushText(int start, int end, int htmlIndex, int htmlDepth) {
        FormatJavadocBlock previousBlock = null;
        int previousStart = start;
        int lineStart = this.scanner.getLineNumber(start);
        if (this.astPtr == -1) {
            previousBlock = new FormatJavadocBlock(start, start, lineStart, 0);
            this.pushOnAstStack(previousBlock, true);
        } else {
            previousBlock = (FormatJavadocBlock)this.astStack[this.astPtr];
            previousStart = previousBlock.sourceStart;
        }
        if (this.inlineTagStarted && previousBlock.nodes != null) {
            FormatJavadocNode lastNode = previousBlock.nodes[previousBlock.nodesPtr];
            while (lastNode != null && lastNode.isText()) {
                lastNode = lastNode.getLastNode();
            }
            if (lastNode != null) {
                previousBlock = (FormatJavadocBlock)lastNode;
                previousStart = previousBlock.sourceStart;
            }
        }
        FormatJavadocText text = new FormatJavadocText(start, end - 1, lineStart, htmlIndex, htmlDepth == -1 ? 0 : htmlDepth);
        previousBlock.addText(text);
        previousBlock.sourceStart = previousStart;
        if (lineStart == previousBlock.lineStart) {
            previousBlock.flags |= 8;
        }
        this.textStart = -1;
    }

    protected boolean pushThrowName(Object typeRef) {
        int lineStart = this.scanner.getLineNumber(this.tagSourceStart);
        FormatJavadocBlock block = new FormatJavadocBlock(this.tagSourceStart, this.tagSourceEnd, lineStart, this.tagValue);
        block.reference = (FormatJavadocReference)typeRef;
        block.sourceEnd = block.reference.sourceEnd;
        this.pushOnAstStack(block, true);
        return true;
    }

    protected void refreshInlineTagPosition(int previousPosition) {
        if (this.astPtr != -1) {
            FormatJavadocNode previousBlock = (FormatJavadocNode)this.astStack[this.astPtr];
            if (this.inlineTagStarted) {
                FormatJavadocNode lastNode = previousBlock;
                while (lastNode != null) {
                    lastNode.sourceEnd = previousPosition;
                    lastNode = lastNode.getLastNode();
                }
            }
        }
    }

    protected void setInlineTagStarted(boolean started) {
        super.setInlineTagStarted(started);
        if (started) {
            this.inlineHtmlTagsPtr = this.htmlTagsPtr;
        } else if (this.htmlTagsPtr > this.inlineHtmlTagsPtr) {
            this.htmlTagsPtr = this.inlineHtmlTagsPtr;
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("FormatterCommentParser\n");
        buffer.append(super.toString());
        return buffer.toString();
    }

    public String toDebugString() {
        if (this.docComment == null) {
            return "No javadoc!";
        }
        return ((FormatJavadoc)this.docComment).toDebugString(this.source);
    }

    protected void updateDocComment() {
        int length = this.astPtr + 1;
        FormatJavadoc formatJavadoc = new FormatJavadoc(this.javadocStart, this.javadocEnd, length);
        if (length > 0) {
            formatJavadoc.blocks = new FormatJavadocBlock[length];
            int i = 0;
            while (i < length) {
                FormatJavadocBlock block = (FormatJavadocBlock)this.astStack[i];
                block.clean();
                block.update(this.scanner);
                formatJavadoc.blocks[i] = block;
                if (i == 0) {
                    block.flags |= 2;
                }
                ++i;
            }
        }
        formatJavadoc.textStart = this.javadocTextStart;
        formatJavadoc.textEnd = this.javadocTextEnd;
        formatJavadoc.lineStart = this.scanner.getLineNumber(this.javadocTextStart);
        formatJavadoc.lineEnd = this.scanner.getLineNumber(this.javadocTextEnd);
        FormatJavadocBlock firstBlock = formatJavadoc.getFirstBlock();
        if (firstBlock != null) {
            firstBlock.setHeaderLine(formatJavadoc.lineStart);
        }
        this.docComment = formatJavadoc;
        if (DefaultCodeFormatter.DEBUG) {
            System.out.println(this.toDebugString());
        }
    }

    protected boolean verifyEndLine(int textPosition) {
        return true;
    }

    protected boolean verifySpaceOrEndComment() {
        return true;
    }
}

