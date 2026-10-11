/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public class BindingKeyParser {
    int keyStart;
    static final char C_THROWN = '|';
    private boolean parsingPaused;
    private Scanner scanner;
    private boolean hasTypeName = true;
    private boolean isMalformed;
    private boolean isParsingThrownExceptions = false;

    public BindingKeyParser(BindingKeyParser parser) {
        this("");
        this.scanner = parser.scanner;
    }

    public BindingKeyParser(String key) {
        this.scanner = new Scanner(key.toCharArray());
    }

    public void consumeAnnotation() {
    }

    public void consumeArrayDimension(char[] brakets) {
    }

    public void consumeBaseType(char[] baseTypeSig) {
    }

    public void consumeCapture(int position) {
    }

    public void consumeException() {
    }

    public void consumeField(char[] fieldName) {
    }

    public void consumeParameterizedGenericMethod() {
    }

    public void consumeLocalType(char[] uniqueKey) {
    }

    public void consumeLocalVar(char[] varName, int occurrenceCount) {
    }

    public void consumeMethod(char[] selector, char[] signature) {
    }

    public void consumeModifiers(char[] modifiers) {
    }

    public void consumeNonGenericType() {
    }

    public void consumeMemberType(char[] simpleTypeName) {
    }

    public void consumePackage(char[] pkgName) {
    }

    public void consumeParameterizedType(char[] simpleTypeName, boolean isRaw) {
    }

    public void consumeParser(BindingKeyParser parser) {
    }

    public void consumeRawType() {
    }

    public void consumeScope(int scopeNumber) {
    }

    public void consumeSecondaryType(char[] simpleTypeName) {
    }

    public void consumeFullyQualifiedName(char[] fullyQualifiedName) {
    }

    public void consumeKey() {
    }

    public void consumeTopLevelType() {
    }

    public void consumeType() {
    }

    public void consumeTypeParameter(char[] typeParameterName) {
    }

    public void consumeTypeVariable(char[] position, char[] typeVariableName) {
    }

    public void consumeTypeWithCapture() {
    }

    public void consumeWildCard(int kind) {
    }

    public void consumeWildcardRank(int rank) {
    }

    public String getKey() {
        return new String(this.scanner.source);
    }

    public boolean hasTypeName() {
        return this.hasTypeName;
    }

    public void malformedKey() {
        this.isMalformed = true;
    }

    public BindingKeyParser newParser() {
        return new BindingKeyParser(this);
    }

    public void parse() {
        this.parse(false);
    }

    public void parse(boolean pauseAfterFullyQualifiedName) {
        block28: {
            block27: {
                if (!this.parsingPaused) {
                    this.parseFullyQualifiedName();
                    this.parseSecondaryType();
                    if (pauseAfterFullyQualifiedName) {
                        this.parsingPaused = true;
                        return;
                    }
                }
                if (!this.hasTypeName()) {
                    this.consumeKey();
                    return;
                }
                this.consumeTopLevelType();
                this.parseInnerType();
                if (this.scanner.isAtParametersStart()) {
                    this.scanner.skipParametersStart();
                    if (this.scanner.isAtTypeParameterStart()) {
                        this.parseGenericType();
                        this.scanner.skipParametersEnd();
                        this.parseInnerType();
                    } else if (this.scanner.isAtTypeArgumentStart()) {
                        this.parseParameterizedType(null, false);
                    } else if (this.scanner.isAtRawTypeEnd()) {
                        this.parseRawType();
                    }
                } else {
                    this.consumeNonGenericType();
                }
                this.consumeType();
                this.scanner.skipTypeEnd();
                if (!this.scanner.isAtFieldOrMethodStart()) break block27;
                switch (this.scanner.nextToken()) {
                    case 2: {
                        this.parseField();
                        if (this.scanner.isAtAnnotationStart()) {
                            this.parseAnnotation();
                        }
                        return;
                    }
                    case 3: {
                        this.parseMethod();
                        if (this.scanner.isAtLocalVariableStart()) {
                            this.parseLocalVariable();
                        } else if (this.scanner.isAtTypeVariableStart()) {
                            this.parseTypeVariable();
                        } else if (this.scanner.isAtAnnotationStart()) {
                            this.parseAnnotation();
                        }
                        break block28;
                    }
                    default: {
                        this.malformedKey();
                        return;
                    }
                }
            }
            if (!this.isParsingThrownExceptions && this.scanner.isAtTypeVariableStart()) {
                this.parseTypeVariable();
            } else if (this.scanner.isAtWildcardStart()) {
                this.parseWildcard();
            } else if (this.scanner.isAtTypeWithCaptureStart()) {
                this.parseTypeWithCapture();
            } else if (this.scanner.isAtAnnotationStart()) {
                this.parseAnnotation();
            }
        }
        this.consumeKey();
    }

    private void parseFullyQualifiedName() {
        if (this.scanner.isAtCaptureStart()) {
            this.parseCapture();
            this.hasTypeName = false;
            return;
        }
        block0 : switch (this.scanner.nextToken()) {
            case 0: {
                this.keyStart = 0;
                this.consumePackage(this.scanner.getTokenSource());
                this.hasTypeName = false;
                return;
            }
            case 1: {
                this.keyStart = this.scanner.start - 1;
                this.consumeFullyQualifiedName(this.scanner.getTokenSource());
                break;
            }
            case 9: {
                this.keyStart = this.scanner.start - 1;
                this.consumeBaseType(this.scanner.getTokenSource());
                this.hasTypeName = false;
                break;
            }
            case 4: {
                this.keyStart = this.scanner.start;
                this.consumeArrayDimension(this.scanner.getTokenSource());
                switch (this.scanner.nextToken()) {
                    case 1: {
                        this.consumeFullyQualifiedName(this.scanner.getTokenSource());
                        break block0;
                    }
                    case 9: {
                        this.consumeBaseType(this.scanner.getTokenSource());
                        this.hasTypeName = false;
                        break block0;
                    }
                }
                this.malformedKey();
                return;
            }
            default: {
                this.malformedKey();
                return;
            }
        }
    }

    private void parseParameterizedMethod() {
        this.scanner.skipParametersStart();
        while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
            this.parseTypeArgument();
        }
        this.consumeParameterizedGenericMethod();
    }

    private void parseGenericType() {
        while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
            if (this.scanner.nextToken() != 1) {
                this.malformedKey();
                return;
            }
            this.consumeTypeParameter(this.scanner.getTokenSource());
            this.scanner.skipTypeEnd();
        }
    }

    private void parseInnerType() {
        if (!this.scanner.isAtMemberTypeStart() || this.scanner.nextToken() != 1) {
            return;
        }
        char[] typeName = this.scanner.getTokenSource();
        if (typeName.length == 0) {
            return;
        }
        if (Character.isDigit(typeName[0])) {
            int nextToken = 1;
            while (this.scanner.isAtMemberTypeStart() && !this.isMalformed) {
                nextToken = this.scanner.nextToken();
            }
            typeName = nextToken == 10 ? this.scanner.source : CharOperation.subarray(this.scanner.source, this.keyStart, this.scanner.index + 1);
            this.consumeLocalType(typeName);
        } else {
            this.consumeMemberType(typeName);
            this.parseInnerType();
        }
    }

    private void parseLocalVariable() {
        if (this.scanner.nextToken() != 5) {
            this.malformedKey();
            return;
        }
        char[] varName = this.scanner.getTokenSource();
        if (Character.isDigit(varName[0])) {
            int index = Integer.parseInt(new String(varName));
            this.consumeScope(index);
            if (!this.scanner.isAtLocalVariableStart()) {
                this.malformedKey();
                return;
            }
            this.parseLocalVariable();
        } else {
            int occurrenceCount = 0;
            if (this.scanner.isAtLocalVariableStart()) {
                if (this.scanner.nextToken() != 5) {
                    this.malformedKey();
                    return;
                }
                char[] occurrence = this.scanner.getTokenSource();
                occurrenceCount = Integer.parseInt(new String(occurrence));
            }
            this.consumeLocalVar(varName, occurrenceCount);
        }
    }

    private void parseMethod() {
        char[] selector = this.scanner.getTokenSource();
        this.scanner.skipMethodSignature();
        char[] signature = this.scanner.getTokenSource();
        this.consumeMethod(selector, signature);
        if (this.scanner.isAtThrownStart()) {
            this.parseThrownExceptions();
        }
        if (this.scanner.isAtParametersStart()) {
            this.parseParameterizedMethod();
        }
    }

    private void parseAnnotation() {
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.consumeAnnotation();
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    private void parseCapture() {
        if (this.scanner.nextToken() != 8) {
            return;
        }
        this.parseCaptureWildcard();
        if (this.scanner.nextToken() != 1) {
            this.malformedKey();
            return;
        }
        char[] positionChars = this.scanner.getTokenSource();
        int position = Integer.parseInt(new String(positionChars));
        this.consumeCapture(position);
        this.scanner.skipTypeEnd();
    }

    private void parseCaptureWildcard() {
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    private void parseField() {
        char[] fieldName = this.scanner.getTokenSource();
        this.parseReturnType();
        this.consumeField(fieldName);
    }

    private void parseThrownExceptions() {
        int token = this.scanner.token;
        while (this.scanner.isAtThrownStart() && !this.isMalformed) {
            this.scanner.skipThrownStart();
            BindingKeyParser parser = this.newParser();
            parser.isParsingThrownExceptions = true;
            parser.parse();
            this.consumeParser(parser);
            this.consumeException();
            this.isMalformed = parser.isMalformed;
        }
        this.scanner.token = token;
    }

    private void parseParameterizedType(char[] typeName, boolean isRaw) {
        if (!isRaw) {
            while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
                this.parseTypeArgument();
            }
        }
        this.scanner.skipParametersEnd();
        this.consumeParameterizedType(typeName, isRaw);
        this.scanner.skipTypeEnd();
        if (this.scanner.isAtMemberTypeStart() && this.scanner.nextToken() == 1) {
            typeName = this.scanner.getTokenSource();
            if (this.scanner.isAtParametersStart()) {
                this.scanner.skipParametersStart();
                this.parseParameterizedType(typeName, this.scanner.isAtRawTypeEnd());
            } else {
                this.consumeParameterizedType(typeName, true);
            }
        }
    }

    private void parseRawType() {
        this.scanner.skipParametersEnd();
        this.consumeRawType();
        this.scanner.skipTypeEnd();
        if (this.scanner.isAtMemberTypeStart() && this.scanner.nextToken() == 1) {
            char[] typeName = this.scanner.getTokenSource();
            if (this.scanner.isAtParametersStart()) {
                this.scanner.skipParametersStart();
                this.parseParameterizedType(typeName, this.scanner.isAtRawTypeEnd());
            } else {
                this.consumeParameterizedType(typeName, true);
            }
        }
    }

    private void parseReturnType() {
        ++this.scanner.index;
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    private void parseSecondaryType() {
        if (!this.scanner.isAtSecondaryTypeStart() || this.scanner.nextToken() != 1) {
            return;
        }
        this.consumeSecondaryType(this.scanner.getTokenSource());
    }

    private void parseTypeArgument() {
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    private void parseTypeWithCapture() {
        if (this.scanner.nextToken() != 8) {
            return;
        }
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.consumeTypeWithCapture();
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    private void parseTypeVariable() {
        char[] position;
        if (this.scanner.nextToken() != 1) {
            this.malformedKey();
            return;
        }
        char[] typeVariableName = this.scanner.getTokenSource();
        int length = typeVariableName.length;
        if (length > 0 && Character.isDigit(typeVariableName[0])) {
            int firstT = CharOperation.indexOf('T', typeVariableName);
            position = CharOperation.subarray(typeVariableName, 0, firstT);
            typeVariableName = CharOperation.subarray(typeVariableName, firstT + 1, typeVariableName.length);
        } else {
            position = CharOperation.NO_CHAR;
        }
        this.consumeTypeVariable(position, typeVariableName);
        this.scanner.skipTypeEnd();
    }

    private void parseWildcard() {
        this.parseWildcardRank();
        if (this.scanner.nextToken() != 7) {
            return;
        }
        char[] source = this.scanner.getTokenSource();
        if (source.length == 0) {
            this.malformedKey();
            return;
        }
        int kind = -1;
        switch (source[0]) {
            case '*': {
                kind = 0;
                break;
            }
            case '+': {
                kind = 1;
                break;
            }
            case '-': {
                kind = 2;
            }
        }
        if (kind == -1) {
            this.malformedKey();
            return;
        }
        if (kind != 0) {
            this.parseWildcardBound();
        }
        this.consumeWildCard(kind);
    }

    private void parseWildcardRank() {
        this.scanner.skipRankStart();
        this.scanner.skipRank();
        char[] source = this.scanner.getTokenSource();
        this.consumeWildcardRank(Integer.parseInt(new String(source)));
        this.scanner.skipRankEnd();
    }

    private void parseWildcardBound() {
        int token = this.scanner.token;
        BindingKeyParser parser = this.newParser();
        parser.parse();
        this.consumeParser(parser);
        this.isMalformed = parser.isMalformed;
        this.scanner.token = token;
    }

    static class Scanner {
        static final int PACKAGE = 0;
        static final int TYPE = 1;
        static final int FIELD = 2;
        static final int METHOD = 3;
        static final int ARRAY = 4;
        static final int LOCAL_VAR = 5;
        static final int FLAGS = 6;
        static final int WILDCARD = 7;
        static final int CAPTURE = 8;
        static final int BASE_TYPE = 9;
        static final int END = 10;
        static final int START = -1;
        int index = 0;
        int start;
        char[] source;
        int token = -1;

        Scanner(char[] source) {
            this.source = source;
        }

        char[] getTokenSource() {
            int length = this.index - this.start;
            char[] result = new char[length];
            System.arraycopy(this.source, this.start, result, 0, length);
            return result;
        }

        boolean isAtAnnotationStart() {
            return this.index < this.source.length && this.source[this.index] == '@';
        }

        boolean isAtCaptureStart() {
            return this.index < this.source.length && this.source[this.index] == '!';
        }

        boolean isAtFieldOrMethodStart() {
            return this.index < this.source.length && this.source[this.index] == '.';
        }

        boolean isAtLocalVariableStart() {
            return this.index < this.source.length && this.source[this.index] == '#';
        }

        boolean isAtMemberTypeStart() {
            return this.index < this.source.length && (this.source[this.index] == '$' || this.source[this.index] == '.' && this.source[this.index - 1] == '>');
        }

        boolean isAtParametersEnd() {
            return this.index < this.source.length && this.source[this.index] == '>';
        }

        boolean isAtParametersStart() {
            char currentChar;
            return this.index > 0 && this.index < this.source.length && ((currentChar = this.source[this.index]) == '<' || currentChar == '%');
        }

        boolean isAtRawTypeEnd() {
            return this.index > 0 && this.index < this.source.length && this.source[this.index] == '>';
        }

        boolean isAtSecondaryTypeStart() {
            return this.index < this.source.length && this.source[this.index] == '~';
        }

        boolean isAtWildcardStart() {
            return this.index < this.source.length && this.source[this.index] == '{';
        }

        boolean isAtTypeParameterStart() {
            return this.index < this.source.length && this.source[this.index] == 'T';
        }

        boolean isAtTypeArgumentStart() {
            return this.index < this.source.length && "LIZVCDBFJS[!".indexOf(this.source[this.index]) != -1;
        }

        boolean isAtThrownStart() {
            return this.index < this.source.length && this.source[this.index] == '|';
        }

        boolean isAtTypeVariableStart() {
            return this.index < this.source.length && this.source[this.index] == ':';
        }

        boolean isAtTypeWithCaptureStart() {
            return this.index < this.source.length && this.source[this.index] == '&';
        }

        int nextToken() {
            int previousTokenEnd = this.index;
            this.start = this.index;
            int dollarIndex = -1;
            int length = this.source.length;
            while (this.index <= length) {
                int currentChar = this.index == length ? 0 : this.source[this.index];
                switch (currentChar) {
                    case 66: 
                    case 67: 
                    case 68: 
                    case 70: 
                    case 73: 
                    case 74: 
                    case 78: 
                    case 83: 
                    case 86: 
                    case 90: {
                        if (this.index != previousTokenEnd || this.index != 0 && this.source[this.index - 1] == '.') break;
                        ++this.index;
                        this.token = 9;
                        return this.token;
                    }
                    case 76: 
                    case 84: {
                        if (this.index != previousTokenEnd || this.index != 0 && this.source[this.index - 1] == '.') break;
                        this.start = this.index + 1;
                        dollarIndex = -1;
                        break;
                    }
                    case 59: {
                        if (this.index == previousTokenEnd) {
                            this.start = this.index + 1;
                            dollarIndex = -1;
                            previousTokenEnd = this.start;
                            break;
                        }
                        if (dollarIndex != -1) {
                            this.index = dollarIndex;
                        }
                        this.token = 1;
                        return this.token;
                    }
                    case 36: {
                        if (this.index == previousTokenEnd) {
                            this.start = this.index + 1;
                            dollarIndex = -1;
                            break;
                        }
                        if (dollarIndex == -1) {
                            dollarIndex = this.index;
                            break;
                        }
                        this.index = dollarIndex;
                        this.token = 1;
                        return this.token;
                    }
                    case 126: {
                        if (this.index == previousTokenEnd) {
                            this.start = this.index + 1;
                            dollarIndex = -1;
                            break;
                        }
                        this.token = 1;
                        return this.token;
                    }
                    case 37: 
                    case 46: 
                    case 58: 
                    case 62: 
                    case 64: {
                        this.start = this.index + 1;
                        dollarIndex = -1;
                        previousTokenEnd = this.start;
                        break;
                    }
                    case 91: {
                        while (this.index < length && this.source[this.index] == '[') {
                            ++this.index;
                        }
                        this.token = 4;
                        return this.token;
                    }
                    case 60: {
                        if (this.start <= 0) break;
                        switch (this.source[this.start - 1]) {
                            case '.': {
                                if (this.source[this.start - 2] == '>') {
                                    if (dollarIndex != -1) {
                                        this.index = dollarIndex;
                                    }
                                    this.token = 1;
                                } else {
                                    this.token = 3;
                                }
                                return this.token;
                            }
                        }
                        if (this.index == previousTokenEnd) {
                            this.start = this.index + 1;
                            dollarIndex = -1;
                            previousTokenEnd = this.start;
                            break;
                        }
                        if (dollarIndex != -1) {
                            this.index = dollarIndex;
                        }
                        this.token = 1;
                        return this.token;
                    }
                    case 40: {
                        this.token = 3;
                        return this.token;
                    }
                    case 41: {
                        if (this.token == 1) {
                            this.token = 2;
                            return this.token;
                        }
                        this.start = this.index + 1;
                        dollarIndex = -1;
                        previousTokenEnd = this.start;
                        break;
                    }
                    case 35: {
                        if (this.index == previousTokenEnd) {
                            this.start = this.index + 1;
                            dollarIndex = -1;
                            previousTokenEnd = this.start;
                            break;
                        }
                        this.token = 5;
                        return this.token;
                    }
                    case 0: {
                        switch (this.token) {
                            case -1: {
                                this.token = 0;
                                break;
                            }
                            case 3: 
                            case 5: {
                                this.token = 5;
                                break;
                            }
                            case 1: {
                                if (this.index > this.start && this.source[this.start - 1] == '.') {
                                    this.token = 2;
                                    break;
                                }
                                this.token = 10;
                                break;
                            }
                            case 7: {
                                this.token = 1;
                                break;
                            }
                            default: {
                                this.token = 10;
                            }
                        }
                        return this.token;
                    }
                    case 42: 
                    case 43: 
                    case 45: {
                        ++this.index;
                        this.token = 7;
                        return this.token;
                    }
                    case 33: 
                    case 38: {
                        ++this.index;
                        this.token = 8;
                        return this.token;
                    }
                }
                ++this.index;
            }
            this.token = 10;
            return this.token;
        }

        void skipMethodSignature() {
            this.start = this.index;
            int braket = 0;
            while (this.index < this.source.length) {
                switch (this.source[this.index]) {
                    case '#': 
                    case '%': 
                    case '@': 
                    case '|': {
                        return;
                    }
                    case ':': {
                        if (braket != 0) break;
                        return;
                    }
                    case '(': 
                    case '<': {
                        ++braket;
                        break;
                    }
                    case ')': 
                    case '>': {
                        --braket;
                    }
                }
                ++this.index;
            }
        }

        void skipRank() {
            this.start = this.index;
            while (this.index < this.source.length && "0123456789".indexOf(this.source[this.index]) != -1) {
                ++this.index;
            }
        }

        void skipThrownStart() {
            while (this.index < this.source.length && this.source[this.index] == '|') {
                ++this.index;
            }
        }

        void skipParametersStart() {
            while (this.index < this.source.length && (this.source[this.index] == '<' || this.source[this.index] == '%')) {
                ++this.index;
            }
        }

        void skipParametersEnd() {
            while (this.index < this.source.length && this.source[this.index] != '>') {
                ++this.index;
            }
            ++this.index;
        }

        void skipTypeEnd() {
            if (this.index < this.source.length && this.source[this.index] == ';') {
                ++this.index;
            }
        }

        void skipRankStart() {
            if (this.index < this.source.length && this.source[this.index] == '{') {
                ++this.index;
            }
        }

        void skipRankEnd() {
            if (this.index < this.source.length && this.source[this.index] == '}') {
                ++this.index;
            }
            this.start = this.index;
        }

        public String toString() {
            StringBuffer buffer = new StringBuffer();
            switch (this.token) {
                case -1: {
                    buffer.append("START: ");
                    break;
                }
                case 0: {
                    buffer.append("PACKAGE: ");
                    break;
                }
                case 1: {
                    buffer.append("TYPE: ");
                    break;
                }
                case 2: {
                    buffer.append("FIELD: ");
                    break;
                }
                case 3: {
                    buffer.append("METHOD: ");
                    break;
                }
                case 4: {
                    buffer.append("ARRAY: ");
                    break;
                }
                case 5: {
                    buffer.append("LOCAL VAR: ");
                    break;
                }
                case 6: {
                    buffer.append("MODIFIERS: ");
                    break;
                }
                case 7: {
                    buffer.append("WILDCARD: ");
                    break;
                }
                case 8: {
                    buffer.append("CAPTURE: ");
                    break;
                }
                case 9: {
                    buffer.append("BASE TYPE: ");
                    break;
                }
                case 10: {
                    buffer.append("END: ");
                }
            }
            if (this.index < 0) {
                buffer.append("**");
                buffer.append(this.source);
            } else if (this.index <= this.source.length) {
                buffer.append(this.source, 0, this.start);
                buffer.append('*');
                if (this.start <= this.index) {
                    buffer.append(this.source, this.start, this.index - this.start);
                    buffer.append('*');
                    buffer.append(this.source, this.index, this.source.length - this.index);
                } else {
                    buffer.append('*');
                    buffer.append(this.source, this.start, this.source.length - this.start);
                }
            } else {
                buffer.append(this.source);
                buffer.append("**");
            }
            return buffer.toString();
        }
    }
}

