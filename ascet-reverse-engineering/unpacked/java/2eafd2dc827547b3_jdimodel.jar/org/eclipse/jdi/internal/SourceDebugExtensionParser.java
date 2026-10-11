/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.ReferenceTypeImpl;

public class SourceDebugExtensionParser {
    private ReferenceTypeImpl fReferenceType;
    private List fDefinedStrata;
    private ReferenceTypeImpl.Stratum fCurrentStratum;
    private boolean fFileSectionDefinedForCurrentStratum;
    private boolean fLineSectionDefinedForCurrentStratum;
    private int fCurrentLineFileId;

    public static void parse(String smap, ReferenceTypeImpl referenceType) throws AbsentInformationException {
        new SourceDebugExtensionParser(referenceType).parseSmap(smap);
    }

    private SourceDebugExtensionParser(ReferenceTypeImpl referenceType) {
        this.fReferenceType = referenceType;
        this.fDefinedStrata = new ArrayList();
        this.fDefinedStrata.add("Java");
    }

    private void parseSmap(String smap) throws AbsentInformationException {
        Lexer lexer = new Lexer(smap);
        this.parseHeader(lexer);
        this.parseSections(lexer);
        if (!this.fDefinedStrata.contains(this.fReferenceType.defaultStratum())) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_2);
        }
    }

    private void parseHeader(Lexer lexer) throws AbsentInformationException {
        int lexemType = lexer.nextLexem();
        if (lexemType != 1) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_3);
        }
        if (lexer.nextLexem() != 4) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_4);
        }
        if (this.isAsteriskLexem(lexer.nextLexem())) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_5);
        }
        this.fReferenceType.setOutputFileName(this.getNonAsteriskString(lexer));
        if (this.isAsteriskLexem(lexer.lexemType())) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_6);
        }
        this.fReferenceType.setDefaultStratumId(this.getNonAsteriskString(lexer));
    }

    private void parseSections(Lexer lexer) throws AbsentInformationException {
        while (lexer.lexemType() != 7) {
            this.parseStratumSection(lexer);
        }
    }

    private void parseStratumSection(Lexer lexer) throws AbsentInformationException {
        if (lexer.lexemType() != 11) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_7);
        }
        if (this.isAsteriskLexem(lexer.nextLexem())) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_8);
        }
        String stratumId = this.getNonAsteriskString(lexer);
        if (this.fDefinedStrata.contains(stratumId)) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_9, (Object[])new String[]{stratumId}));
        }
        this.fCurrentStratum = new ReferenceTypeImpl.Stratum(stratumId);
        this.fFileSectionDefinedForCurrentStratum = false;
        this.fLineSectionDefinedForCurrentStratum = false;
        int lexemType = lexer.lexemType();
        while (lexemType != 7 && lexemType != 11) {
            switch (lexemType) {
                case 8: {
                    if (this.fFileSectionDefinedForCurrentStratum) {
                        throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_10, (Object[])new String[]{stratumId}));
                    }
                    this.parseFileSection(lexer);
                    this.fFileSectionDefinedForCurrentStratum = true;
                    break;
                }
                case 9: {
                    if (this.fLineSectionDefinedForCurrentStratum) {
                        throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_11, (Object[])new String[]{stratumId}));
                    }
                    this.parseLineSection(lexer);
                    this.fLineSectionDefinedForCurrentStratum = true;
                    break;
                }
                case 12: {
                    this.parseVendorSection(lexer);
                    break;
                }
                case 5: {
                    this.parseFutureSection(lexer);
                    break;
                }
                default: {
                    throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
                }
            }
            lexemType = lexer.lexemType();
        }
        if (!this.fFileSectionDefinedForCurrentStratum) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_13, (Object[])new String[]{stratumId}));
        }
        if (!this.fLineSectionDefinedForCurrentStratum) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_14, (Object[])new String[]{stratumId}));
        }
        this.fDefinedStrata.add(stratumId);
        this.fReferenceType.addStratum(this.fCurrentStratum);
    }

    private void parseFileSection(Lexer lexer) throws AbsentInformationException {
        if (lexer.nextLexem() != 4) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
        }
        lexer.nextLexem();
        while (!this.isAsteriskLexem(lexer.lexemType())) {
            this.parseFileInfo(lexer);
        }
    }

    private void parseFileInfo(Lexer lexer) throws AbsentInformationException {
        int lexemType = lexer.lexemType();
        if (lexemType == 3) {
            int fileId = this.integerValue(lexer.lexem());
            if (this.isAsteriskLexem(lexer.nextLexem())) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_16);
            }
            this.fCurrentStratum.addFileInfo(fileId, this.getNonAsteriskString(lexer));
        } else if (lexemType == 17) {
            if (lexer.nextLexem() != 3) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_17);
            }
            int fileId = this.integerValue(lexer.lexem());
            if (this.isAsteriskLexem(lexer.nextLexem())) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_16);
            }
            String fileName = this.getNonAsteriskString(lexer);
            if (this.isAsteriskLexem(lexer.lexemType())) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_19);
            }
            this.fCurrentStratum.addFileInfo(fileId, fileName, this.getNonAsteriskString(lexer));
        } else {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
        }
    }

    private void parseLineSection(Lexer lexer) throws AbsentInformationException {
        this.fCurrentLineFileId = 0;
        if (lexer.nextLexem() != 4) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
        }
        lexer.nextLexem();
        while (!this.isAsteriskLexem(lexer.lexemType())) {
            this.parseLineInfo(lexer);
        }
    }

    private void parseLineInfo(Lexer lexer) throws AbsentInformationException {
        int outputLineIncrement;
        int repeatCount;
        if (lexer.lexemType() != 3) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_22);
        }
        int inputStartLine = this.integerValue(lexer.lexem());
        int lexemType = lexer.nextLexem();
        if (lexemType == 16) {
            if (lexer.nextLexem() != 3) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_23);
            }
            this.fCurrentLineFileId = this.integerValue(lexer.lexem());
            lexemType = lexer.nextLexem();
        }
        if (lexemType == 15) {
            if (lexer.nextLexem() != 3) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_24);
            }
            repeatCount = this.integerValue(lexer.lexem());
            lexemType = lexer.nextLexem();
        } else {
            repeatCount = 1;
        }
        if (lexemType != 14) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_25);
        }
        if (lexer.nextLexem() != 3) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_26);
        }
        int outputStartLine = this.integerValue(lexer.lexem());
        lexemType = lexer.nextLexem();
        if (lexemType == 15) {
            if (lexer.nextLexem() != 3) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_27);
            }
            outputLineIncrement = this.integerValue(lexer.lexem());
            lexemType = lexer.nextLexem();
        } else {
            outputLineIncrement = 1;
        }
        if (lexemType != 4) {
            throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_28);
        }
        lexer.nextLexem();
        this.fCurrentStratum.addLineInfo(inputStartLine, this.fCurrentLineFileId, repeatCount, outputStartLine, outputLineIncrement);
    }

    private void parseVendorSection(Lexer lexer) throws AbsentInformationException {
        if (lexer.nextLexem() != 4) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
        }
        lexer.nextLexem();
        while (!this.isAsteriskLexem(lexer.lexemType())) {
            this.getNonAsteriskString(lexer);
        }
    }

    private void parseFutureSection(Lexer lexer) throws AbsentInformationException {
        if (lexer.nextLexem() != 4) {
            throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.SourceDebugExtensionParser_12, (Object[])new String[]{new String(lexer.lexem())}));
        }
        lexer.nextLexem();
        while (!this.isAsteriskLexem(lexer.lexemType())) {
            this.getNonAsteriskString(lexer);
        }
    }

    private String getNonAsteriskString(Lexer lexer) throws AbsentInformationException {
        char c;
        StringBuffer string = new StringBuffer();
        int lexemType = lexer.lexemType();
        while (lexemType != 4) {
            string.append(lexer.lexem());
            lexemType = lexer.nextLexem();
        }
        lexer.nextLexem();
        int i = -1;
        int length = string.length();
        while (++i < length && ((c = string.charAt(i)) == ' ' || c == '\t')) {
        }
        return string.delete(0, i).toString();
    }

    private int integerValue(char[] lexem) {
        int i = 0;
        char c = lexem[0];
        while (c == ' ' || c == '\t') {
            c = lexem[++i];
        }
        int value = 0;
        while (c >= '0' && c <= '9') {
            value = value * 10 + c - 48;
            if (++i == lexem.length) break;
            c = lexem[i];
        }
        return value;
    }

    private boolean isAsteriskLexem(int lexemType) {
        switch (lexemType) {
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: {
                return true;
            }
        }
        return false;
    }

    private static class Lexer {
        static final int UNKNOWN = 0;
        static final int SMAP = 1;
        static final int NON_ASTERISK_STRING = 2;
        static final int NUMBER = 3;
        static final int CR = 4;
        static final int ASTERISK_CHAR = 5;
        static final int ASTERISK_C = 6;
        static final int ASTERISK_E = 7;
        static final int ASTERISK_F = 8;
        static final int ASTERISK_L = 9;
        static final int ASTERISK_O = 10;
        static final int ASTERISK_S = 11;
        static final int ASTERISK_V = 12;
        static final int COLON = 14;
        static final int COMMA = 15;
        static final int SHARP = 16;
        static final int PLUS = 17;
        private char[] fSmap;
        private int fPointer;
        private char fChar;
        private char[] fLexem;
        private int fLexemType;
        private boolean fEOF;

        public Lexer(String smap) {
            this.fSmap = smap.toCharArray();
            this.fLexemType = 0;
            this.fPointer = -1;
            this.nextChar();
        }

        public int nextLexem() throws AbsentInformationException {
            if (this.fEOF) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_0);
            }
            this.startWith();
            return this.fLexemType;
        }

        private char nextChar() {
            if (++this.fPointer == this.fSmap.length) {
                this.fEOF = true;
                return '\u0000';
            }
            this.fChar = this.fSmap[this.fPointer];
            return this.fChar;
        }

        private void startWith() throws AbsentInformationException {
            switch (this.fChar) {
                case '\n': 
                case '\r': {
                    this.startWithCR();
                    break;
                }
                case '*': {
                    this.startWithAsterisk();
                    break;
                }
                case ':': {
                    this.fLexem = new char[]{':'};
                    this.fLexemType = 14;
                    this.nextChar();
                    break;
                }
                case ',': {
                    this.fLexem = new char[]{','};
                    this.fLexemType = 15;
                    this.nextChar();
                    break;
                }
                case '#': {
                    this.fLexem = new char[]{'#'};
                    this.fLexemType = 16;
                    this.nextChar();
                    break;
                }
                case '+': {
                    this.fLexem = new char[]{'+'};
                    this.fLexemType = 17;
                    this.nextChar();
                    break;
                }
                default: {
                    this.startWithOtherChar();
                }
            }
        }

        private void startWithOtherChar() {
            int lexemStart = this.fPointer;
            this.consumeWhiteSpace();
            if (this.fChar >= '0' && this.fChar <= '9') {
                this.number(lexemStart);
            } else {
                this.nonAsteriskString(lexemStart);
            }
        }

        private void nonAsteriskString(int lexemStart) {
            while (this.fChar != '\n' && this.fChar != '\r' && !this.fEOF) {
                this.nextChar();
            }
            int length = this.fPointer - lexemStart;
            this.fLexem = new char[length];
            System.arraycopy(this.fSmap, lexemStart, this.fLexem, 0, length);
            this.fLexemType = length == 4 && this.fLexem[0] == 'S' && this.fLexem[1] == 'M' && this.fLexem[2] == 'A' && this.fLexem[3] == 'P' ? 1 : 2;
        }

        private void number(int lexemStart) {
            while (this.fChar >= '0' && this.fChar <= '9') {
                this.nextChar();
            }
            this.consumeWhiteSpace();
            this.fLexemType = 3;
            int length = this.fPointer - lexemStart;
            this.fLexem = new char[length];
            System.arraycopy(this.fSmap, lexemStart, this.fLexem, 0, length);
        }

        private void startWithAsterisk() throws AbsentInformationException {
            this.nextChar();
            if (this.fEOF) {
                throw new AbsentInformationException(JDIMessages.SourceDebugExtensionParser_0);
            }
            switch (this.fChar) {
                case 'C': {
                    this.fLexemType = 6;
                    break;
                }
                case 'E': {
                    this.fLexemType = 7;
                    break;
                }
                case 'F': {
                    this.fLexemType = 8;
                    break;
                }
                case 'L': {
                    this.fLexemType = 9;
                    break;
                }
                case 'O': {
                    this.fLexemType = 10;
                    break;
                }
                case 'S': {
                    this.fLexemType = 11;
                    break;
                }
                case 'V': {
                    this.fLexemType = 12;
                    break;
                }
                default: {
                    this.fLexemType = 5;
                }
            }
            this.fLexem = new char[]{'*', this.fChar};
            this.nextChar();
        }

        private void startWithCR() {
            if (this.fChar == '\r') {
                if (this.nextChar() == '\n') {
                    this.fLexem = new char[]{'\r', '\n'};
                    this.nextChar();
                } else {
                    this.fLexem = new char[]{'\r'};
                }
            } else {
                this.fLexem = new char[]{this.fChar};
                this.nextChar();
            }
            this.fLexemType = 4;
        }

        private void consumeWhiteSpace() {
            while (this.fChar == ' ' || this.fChar == '\t') {
                this.nextChar();
            }
        }

        public char[] lexem() {
            return this.fLexem;
        }

        public int lexemType() {
            return this.fLexemType;
        }
    }
}

