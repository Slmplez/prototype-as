/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class SourceJavadocParser
extends JavadocParser {
    int categoriesPtr = -1;
    char[][] categories = CharOperation.NO_CHAR_CHAR;

    public SourceJavadocParser(Parser sourceParser) {
        super(sourceParser);
        this.kind = 528;
    }

    public boolean checkDeprecation(int commentPtr) {
        this.categoriesPtr = -1;
        boolean result = super.checkDeprecation(commentPtr);
        if (this.categoriesPtr > -1) {
            char[][] cArrayArray = new char[this.categoriesPtr + 1][];
            this.categories = cArrayArray;
            System.arraycopy(this.categories, 0, cArrayArray, 0, this.categoriesPtr + 1);
        } else {
            this.categories = CharOperation.NO_CHAR_CHAR;
        }
        return result;
    }

    protected boolean parseIdentifierTag(boolean report) {
        int end = this.lineEnd + 1;
        if (super.parseIdentifierTag(report) && this.index <= end) {
            if (this.tagValue == 11) {
                int length = this.categories.length;
                if (++this.categoriesPtr >= length) {
                    char[][] cArrayArray = new char[length + 5][];
                    this.categories = cArrayArray;
                    System.arraycopy(this.categories, 0, cArrayArray, 0, length);
                    length += 5;
                }
                this.categories[this.categoriesPtr] = this.identifierStack[this.identifierPtr--];
                this.consumeToken();
                while (this.index < end) {
                    if (this.readTokenSafely() != 26 || this.scanner.currentCharacter != ' ' && !ScannerHelper.isWhitespace(this.scanner.currentCharacter) || this.index > this.lineEnd + 1) break;
                    if (++this.categoriesPtr >= length) {
                        char[][] cArrayArray = new char[length + 5][];
                        this.categories = cArrayArray;
                        System.arraycopy(this.categories, 0, cArrayArray, 0, length);
                        length += 5;
                    }
                    this.categories[this.categoriesPtr] = this.scanner.getCurrentIdentifierSource();
                    this.consumeToken();
                }
                this.index = end;
                this.scanner.currentPosition = end;
                this.consumeToken();
            }
            return true;
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
                this.tagValue = 1;
                this.deprecated = true;
                break;
            }
            case 'c': {
                char c;
                if (this.readChar() != 'a' || this.readChar() != 't' || this.readChar() != 'e' || this.readChar() != 'g' || this.readChar() != 'o' || this.readChar() != 'r' || this.readChar() != 'y' || !ScannerHelper.isWhitespace(c = this.readChar()) && c != '*') break;
                this.tagValue = 11;
                if (this.scanner.source == null) {
                    this.scanner.setSource(this.source);
                }
                this.scanner.resetTo(this.index, this.scanner.eofPosition);
                this.parseIdentifierTag(false);
            }
        }
    }
}

