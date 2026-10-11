/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;

public final class Signature {
    public static final int ARRAY_TYPE_SIGNATURE = 4;
    public static final int BASE_TYPE_SIGNATURE = 2;
    private static final char[] BOOLEAN = "boolean".toCharArray();
    private static final char[] BYTE = "byte".toCharArray();
    public static final char C_ARRAY = '[';
    public static final char C_BOOLEAN = 'Z';
    public static final char C_BYTE = 'B';
    public static final char C_CAPTURE = '!';
    public static final char C_CHAR = 'C';
    public static final char C_COLON = ':';
    public static final char C_DOLLAR = '$';
    public static final char C_DOT = '.';
    public static final char C_DOUBLE = 'D';
    public static final char C_EXCEPTION_START = '^';
    public static final char C_EXTENDS = '+';
    public static final char C_FLOAT = 'F';
    public static final char C_GENERIC_END = '>';
    public static final char C_GENERIC_START = '<';
    public static final char C_INT = 'I';
    public static final char C_INTERSECTION = '|';
    public static final char C_LONG = 'J';
    public static final char C_NAME_END = ';';
    public static final char C_PARAM_END = ')';
    public static final char C_PARAM_START = '(';
    public static final char C_RESOLVED = 'L';
    public static final char C_SEMICOLON = ';';
    public static final char C_SHORT = 'S';
    public static final char C_STAR = '*';
    public static final char C_SUPER = '-';
    public static final char C_TYPE_VARIABLE = 'T';
    public static final char C_UNRESOLVED = 'Q';
    public static final char C_VOID = 'V';
    private static final char[] CAPTURE = "capture-of".toCharArray();
    public static final int CAPTURE_TYPE_SIGNATURE = 6;
    private static final char[] CHAR = "char".toCharArray();
    public static final int CLASS_TYPE_SIGNATURE = 1;
    private static final char[] DOUBLE = "double".toCharArray();
    private static final char[] EXTENDS = "extends".toCharArray();
    private static final char[] FLOAT = "float".toCharArray();
    private static final char[] INT = "int".toCharArray();
    public static final int INTERSECTION_TYPE_SIGNATURE = 7;
    private static final char[] LONG = "long".toCharArray();
    private static final char[] SHORT = "short".toCharArray();
    public static final String SIG_BOOLEAN = "Z";
    public static final String SIG_BYTE = "B";
    public static final String SIG_CHAR = "C";
    public static final String SIG_DOUBLE = "D";
    public static final String SIG_FLOAT = "F";
    public static final String SIG_INT = "I";
    public static final String SIG_LONG = "J";
    public static final String SIG_SHORT = "S";
    public static final String SIG_VOID = "V";
    private static final char[] SUPER = "super".toCharArray();
    public static final int TYPE_VARIABLE_SIGNATURE = 3;
    private static final char[] VOID = "void".toCharArray();
    public static final int WILDCARD_TYPE_SIGNATURE = 5;

    private static void appendArgumentSimpleNames(char[] name, int start, int end, StringBuffer buffer) {
        buffer.append('<');
        int depth = 0;
        int argumentStart = -1;
        int argumentCount = 0;
        int i = start;
        while (i <= end) {
            switch (name[i]) {
                case '<': {
                    if (++depth != 1) break;
                    argumentStart = i + 1;
                    break;
                }
                case '>': {
                    if (depth == 1) {
                        if (argumentCount > 0) {
                            buffer.append(',');
                        }
                        Signature.appendSimpleName(name, argumentStart, i - 1, buffer);
                        ++argumentCount;
                    }
                    --depth;
                    break;
                }
                case ',': {
                    if (depth != 1) break;
                    if (argumentCount > 0) {
                        buffer.append(',');
                    }
                    Signature.appendSimpleName(name, argumentStart, i - 1, buffer);
                    ++argumentCount;
                    argumentStart = i + 1;
                }
            }
            ++i;
        }
        buffer.append('>');
    }

    private static int appendArrayTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        return Signature.appendArrayTypeSignature(string, start, fullyQualifyTypeNames, buffer, false);
    }

    private static int appendArrayTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer, boolean isVarArgs) {
        int length = string.length;
        if (start >= length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '[') {
            throw new IllegalArgumentException();
        }
        int index = start;
        c = string[++index];
        while (c == '[') {
            if (index >= length - 1) {
                throw new IllegalArgumentException();
            }
            c = string[++index];
        }
        int e = Signature.appendTypeSignature(string, index, fullyQualifyTypeNames, buffer);
        int i = 1;
        int dims = index - start;
        while (i < dims) {
            buffer.append('[').append(']');
            ++i;
        }
        if (isVarArgs) {
            buffer.append('.').append('.').append('.');
        } else {
            buffer.append('[').append(']');
        }
        return e;
    }

    private static int appendCaptureTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        if (start >= string.length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '!') {
            throw new IllegalArgumentException();
        }
        buffer.append(CAPTURE).append(' ');
        return Signature.appendTypeArgumentSignature(string, start + 1, fullyQualifyTypeNames, buffer);
    }

    private static int appendClassTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        boolean removePackageQualifiers;
        if (start >= string.length - 2) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != 'L' && c != 'Q') {
            throw new IllegalArgumentException();
        }
        boolean resolved = c == 'L';
        boolean bl = removePackageQualifiers = !fullyQualifyTypeNames;
        if (!resolved) {
            removePackageQualifiers = false;
        }
        int p = start + 1;
        int checkpoint = buffer.length();
        int innerTypeStart = -1;
        boolean inAnonymousType = false;
        while (true) {
            if (p >= string.length) {
                throw new IllegalArgumentException();
            }
            c = string[p];
            switch (c) {
                case ';': {
                    return p;
                }
                case '<': {
                    int e = Signature.appendTypeArgumentSignatures(string, p, fullyQualifyTypeNames, buffer);
                    removePackageQualifiers = false;
                    p = e;
                    break;
                }
                case '.': {
                    if (removePackageQualifiers) {
                        buffer.setLength(checkpoint);
                        break;
                    }
                    buffer.append('.');
                    break;
                }
                case '/': {
                    if (removePackageQualifiers) {
                        buffer.setLength(checkpoint);
                        break;
                    }
                    buffer.append('/');
                    break;
                }
                case '$': {
                    innerTypeStart = buffer.length();
                    inAnonymousType = false;
                    if (!resolved) break;
                    removePackageQualifiers = false;
                    buffer.append('.');
                    break;
                }
                default: {
                    if (innerTypeStart != -1 && !inAnonymousType && Character.isDigit(c)) {
                        inAnonymousType = true;
                        buffer.setLength(innerTypeStart);
                        buffer.insert(checkpoint, "new ");
                        buffer.append("(){}");
                    }
                    if (!inAnonymousType) {
                        buffer.append(c);
                    }
                    innerTypeStart = -1;
                }
            }
            ++p;
        }
    }

    /*
     * Unable to fully structure code
     */
    private static int appendIntersectionTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        block5: {
            if (start >= string.length - 1) {
                throw new IllegalArgumentException();
            }
            c = string[start];
            if (c != '|') {
                throw new IllegalArgumentException();
            }
            if ((start = Signature.appendClassTypeSignature(string, start + 1, fullyQualifyTypeNames, buffer)) >= string.length - 1) break block5;
            if (string[++start] == ':') ** GOTO lbl17
            throw new IllegalArgumentException("should be a colon at this location");
lbl-1000:
            // 1 sources

            {
                buffer.append(" | ");
                start = Signature.appendClassTypeSignature(string, start + 1, fullyQualifyTypeNames, buffer);
                if (start == string.length - 1) {
                    return start;
                }
                if (start > string.length - 1) {
                    throw new IllegalArgumentException("Should be at the end");
                }
                ++start;
lbl17:
                // 2 sources

                ** while (string[start] == ':')
            }
        }
        return start;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void appendSimpleName(char[] name, int start, int end, StringBuffer buffer) {
        int lastDot = -1;
        int lastGenericStart = -1;
        int lastGenericEnd = -1;
        int depth = 0;
        if (name[start] == '?') {
            buffer.append("?");
            int index = Signature.consumeWhitespace(name, start + 1, end + 1);
            switch (name[index]) {
                case 'e': {
                    int checkPos = Signature.checkName(EXTENDS, name, index, end);
                    if (checkPos <= 0) break;
                    buffer.append(' ').append(EXTENDS).append(' ');
                    index = Signature.consumeWhitespace(name, checkPos, end + 1);
                    break;
                }
                case 's': {
                    int checkPos = Signature.checkName(SUPER, name, index, end + 1);
                    if (checkPos <= 0) break;
                    buffer.append(' ').append(SUPER).append(' ');
                    index = Signature.consumeWhitespace(name, checkPos, end + 1);
                    break;
                }
            }
            start = index;
        }
        int i = end;
        block9: while (i >= start) {
            switch (name[i]) {
                case '.': {
                    if (depth != 0) break;
                    lastDot = i;
                    char c = name[start];
                    if (c != '+' && c != '-') break block9;
                    buffer.append(c);
                    break block9;
                }
                case '<': {
                    if (--depth != 0) break;
                    lastGenericStart = i;
                    break;
                }
                case '>': {
                    if (depth == 0) {
                        lastGenericEnd = i;
                    }
                    ++depth;
                }
            }
            --i;
        }
        int nameStart = lastDot < 0 ? start : lastDot + 1;
        int nameEnd = lastGenericStart < 0 ? end + 1 : lastGenericStart;
        buffer.append(name, nameStart, nameEnd - nameStart);
        if (lastGenericStart >= 0) {
            Signature.appendArgumentSimpleNames(name, lastGenericStart, lastGenericEnd, buffer);
            buffer.append(name, lastGenericEnd + 1, end - lastGenericEnd);
        }
    }

    private static int appendTypeArgumentSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        if (start >= string.length) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        switch (c) {
            case '*': {
                buffer.append('?');
                return start;
            }
            case '+': {
                buffer.append("? extends ");
                return Signature.appendTypeSignature(string, start + 1, fullyQualifyTypeNames, buffer);
            }
            case '-': {
                buffer.append("? super ");
                return Signature.appendTypeSignature(string, start + 1, fullyQualifyTypeNames, buffer);
            }
        }
        return Signature.appendTypeSignature(string, start, fullyQualifyTypeNames, buffer);
    }

    private static int appendTypeArgumentSignatures(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        if (start >= string.length - 1) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (c != '<') {
            throw new IllegalArgumentException();
        }
        buffer.append('<');
        int p = start + 1;
        int count = 0;
        while (true) {
            if (p >= string.length) {
                throw new IllegalArgumentException();
            }
            c = string[p];
            if (c == '>') {
                buffer.append('>');
                return p;
            }
            if (count != 0) {
                buffer.append(',');
            }
            int e = Signature.appendTypeArgumentSignature(string, p, fullyQualifyTypeNames, buffer);
            ++count;
            p = e + 1;
        }
    }

    private static int appendTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer) {
        return Signature.appendTypeSignature(string, start, fullyQualifyTypeNames, buffer, false);
    }

    private static int appendTypeSignature(char[] string, int start, boolean fullyQualifyTypeNames, StringBuffer buffer, boolean isVarArgs) {
        if (start >= string.length) {
            throw new IllegalArgumentException();
        }
        char c = string[start];
        if (isVarArgs) {
            switch (c) {
                case '[': {
                    return Signature.appendArrayTypeSignature(string, start, fullyQualifyTypeNames, buffer, true);
                }
            }
            throw new IllegalArgumentException();
        }
        switch (c) {
            case '[': {
                return Signature.appendArrayTypeSignature(string, start, fullyQualifyTypeNames, buffer);
            }
            case 'L': 
            case 'Q': {
                return Signature.appendClassTypeSignature(string, start, fullyQualifyTypeNames, buffer);
            }
            case 'T': {
                int e = Util.scanTypeVariableSignature(string, start);
                buffer.append(string, start + 1, e - start - 1);
                return e;
            }
            case 'Z': {
                buffer.append(BOOLEAN);
                return start;
            }
            case 'B': {
                buffer.append(BYTE);
                return start;
            }
            case 'C': {
                buffer.append(CHAR);
                return start;
            }
            case 'D': {
                buffer.append(DOUBLE);
                return start;
            }
            case 'F': {
                buffer.append(FLOAT);
                return start;
            }
            case 'I': {
                buffer.append(INT);
                return start;
            }
            case 'J': {
                buffer.append(LONG);
                return start;
            }
            case 'S': {
                buffer.append(SHORT);
                return start;
            }
            case 'V': {
                buffer.append(VOID);
                return start;
            }
            case '!': {
                return Signature.appendCaptureTypeSignature(string, start, fullyQualifyTypeNames, buffer);
            }
            case '|': {
                return Signature.appendIntersectionTypeSignature(string, start, fullyQualifyTypeNames, buffer);
            }
            case '*': 
            case '+': 
            case '-': {
                return Signature.appendTypeArgumentSignature(string, start, fullyQualifyTypeNames, buffer);
            }
        }
        throw new IllegalArgumentException();
    }

    private static int checkArrayDimension(char[] typeName, int pos, int length) {
        int genericBalance = 0;
        while (pos < length) {
            switch (typeName[pos]) {
                case '<': {
                    ++genericBalance;
                    break;
                }
                case ',': {
                    if (genericBalance != 0) break;
                    return -1;
                }
                case '>': {
                    if (genericBalance == 0) {
                        return -1;
                    }
                    --genericBalance;
                    break;
                }
                case '[': {
                    if (genericBalance != 0) break;
                    return pos;
                }
            }
            ++pos;
        }
        return -1;
    }

    private static int checkName(char[] name, char[] typeName, int pos, int length) {
        if (CharOperation.fragmentEquals(name, typeName, pos, true)) {
            if ((pos += name.length) == length) {
                return pos;
            }
            char currentChar = typeName[pos];
            switch (currentChar) {
                case ' ': 
                case ',': 
                case '.': 
                case '<': 
                case '>': 
                case '[': {
                    return pos;
                }
            }
            if (ScannerHelper.isWhitespace(currentChar)) {
                return pos;
            }
        }
        return -1;
    }

    private static int checkNextChar(char[] typeName, char expectedChar, int pos, int length, boolean isOptional) {
        if ((pos = Signature.consumeWhitespace(typeName, pos, length)) < length && typeName[pos] == expectedChar) {
            return pos + 1;
        }
        if (!isOptional) {
            throw new IllegalArgumentException(new String(typeName));
        }
        return -1;
    }

    private static int consumeWhitespace(char[] typeName, int pos, int length) {
        while (pos < length) {
            char currentChar = typeName[pos];
            if (currentChar != ' ' && !ScannerHelper.isWhitespace(currentChar)) break;
            ++pos;
        }
        return pos;
    }

    public static char[] createArraySignature(char[] typeSignature, int arrayCount) {
        if (arrayCount == 0) {
            return typeSignature;
        }
        int sigLength = typeSignature.length;
        char[] result = new char[arrayCount + sigLength];
        int i = 0;
        while (i < arrayCount) {
            result[i] = 91;
            ++i;
        }
        System.arraycopy(typeSignature, 0, result, arrayCount, sigLength);
        return result;
    }

    public static String createArraySignature(String typeSignature, int arrayCount) {
        return new String(Signature.createArraySignature(typeSignature.toCharArray(), arrayCount));
    }

    public static char[] createCharArrayTypeSignature(char[] typeName, boolean isResolved) {
        if (typeName == null) {
            throw new IllegalArgumentException("null");
        }
        int length = typeName.length;
        if (length == 0) {
            throw new IllegalArgumentException(new String(typeName));
        }
        StringBuffer buffer = new StringBuffer(5);
        int pos = Signature.encodeTypeSignature(typeName, 0, isResolved, length, buffer);
        if ((pos = Signature.consumeWhitespace(typeName, pos, length)) < length) {
            throw new IllegalArgumentException(new String(typeName));
        }
        length = buffer.length();
        char[] result = new char[length];
        buffer.getChars(0, length, result, 0);
        return result;
    }

    public static String createIntersectionTypeSignature(char[][] typeSignatures) {
        StringBuffer buffer = new StringBuffer();
        buffer.append('|');
        int i = 0;
        int max = typeSignatures.length;
        while (i < max) {
            if (i > 0) {
                buffer.append(':');
            }
            buffer.append(typeSignatures[i]);
            ++i;
        }
        return String.valueOf(buffer);
    }

    public static String createIntersectionTypeSignature(String[] typeSignatures) {
        int typeSignaturesLenth = typeSignatures.length;
        char[][] signatures = new char[typeSignaturesLenth][];
        int i = 0;
        while (i < typeSignaturesLenth) {
            signatures[i] = typeSignatures[i].toCharArray();
            ++i;
        }
        return Signature.createIntersectionTypeSignature(signatures);
    }

    public static char[] createMethodSignature(char[][] parameterTypes, char[] returnType) {
        int parameterTypesLength = parameterTypes.length;
        int parameterLength = 0;
        int i = 0;
        while (i < parameterTypesLength) {
            parameterLength += parameterTypes[i].length;
            ++i;
        }
        int returnTypeLength = returnType.length;
        char[] result = new char[1 + parameterLength + 1 + returnTypeLength];
        result[0] = 40;
        int index = 1;
        int i2 = 0;
        while (i2 < parameterTypesLength) {
            char[] parameterType = parameterTypes[i2];
            int length = parameterType.length;
            System.arraycopy(parameterType, 0, result, index, length);
            index += length;
            ++i2;
        }
        result[index] = 41;
        System.arraycopy(returnType, 0, result, index + 1, returnTypeLength);
        return result;
    }

    public static String createMethodSignature(String[] parameterTypes, String returnType) {
        int parameterTypesLenth = parameterTypes.length;
        char[][] parameters = new char[parameterTypesLenth][];
        int i = 0;
        while (i < parameterTypesLenth) {
            parameters[i] = parameterTypes[i].toCharArray();
            ++i;
        }
        return new String(Signature.createMethodSignature(parameters, returnType.toCharArray()));
    }

    public static char[] createTypeParameterSignature(char[] typeParameterName, char[][] boundSignatures) {
        int length = boundSignatures.length;
        if (length == 0) {
            return CharOperation.append(typeParameterName, ':');
        }
        int boundsSize = 0;
        int i = 0;
        while (i < length) {
            boundsSize += boundSignatures[i].length + 1;
            ++i;
        }
        int nameLength = typeParameterName.length;
        char[] result = new char[nameLength + boundsSize];
        System.arraycopy(typeParameterName, 0, result, 0, nameLength);
        int index = nameLength;
        int i2 = 0;
        while (i2 < length) {
            result[index++] = 58;
            int boundLength = boundSignatures[i2].length;
            System.arraycopy(boundSignatures[i2], 0, result, index, boundLength);
            index += boundLength;
            ++i2;
        }
        return result;
    }

    public static String createTypeParameterSignature(String typeParameterName, String[] boundSignatures) {
        int length = boundSignatures.length;
        char[][] boundSignatureChars = new char[length][];
        int i = 0;
        while (i < length) {
            boundSignatureChars[i] = boundSignatures[i].toCharArray();
            ++i;
        }
        return new String(Signature.createTypeParameterSignature(typeParameterName.toCharArray(), boundSignatureChars));
    }

    public static String createTypeSignature(char[] typeName, boolean isResolved) {
        return new String(Signature.createCharArrayTypeSignature(typeName, isResolved));
    }

    public static String createTypeSignature(String typeName, boolean isResolved) {
        return Signature.createTypeSignature(typeName == null ? null : typeName.toCharArray(), isResolved);
    }

    private static int encodeArrayDimension(char[] typeName, int pos, int length, StringBuffer buffer) {
        int checkPos;
        while (pos < length && (checkPos = Signature.checkNextChar(typeName, '[', pos, length, true)) > 0) {
            pos = Signature.checkNextChar(typeName, ']', checkPos, length, false);
            buffer.append('[');
        }
        return pos;
    }

    private static int encodeQualifiedName(char[] typeName, int pos, int length, StringBuffer buffer) {
        int count = 0;
        int lastAppendedChar = 0;
        block4: while (pos < length) {
            int currentChar = typeName[pos];
            switch (currentChar) {
                case 44: 
                case 60: 
                case 62: 
                case 91: {
                    break block4;
                }
                case 46: {
                    buffer.append('.');
                    lastAppendedChar = 46;
                    ++count;
                    break;
                }
                default: {
                    if (currentChar == 32 || ScannerHelper.isWhitespace((char)currentChar)) {
                        if (lastAppendedChar == 46) {
                            pos = Signature.consumeWhitespace(typeName, pos, length) - 1;
                            break;
                        }
                        int checkPos = Signature.checkNextChar(typeName, '.', pos, length, true);
                        if (checkPos <= 0) break block4;
                        buffer.append('.');
                        lastAppendedChar = 46;
                        ++count;
                        pos = checkPos;
                        break;
                    }
                    buffer.append((char)currentChar);
                    lastAppendedChar = currentChar;
                    ++count;
                }
            }
            ++pos;
        }
        if (count == 0) {
            throw new IllegalArgumentException(new String(typeName));
        }
        return pos;
    }

    private static int encodeTypeSignature(char[] typeName, int start, boolean isResolved, int length, StringBuffer buffer) {
        int checkPos;
        int pos = start;
        if ((pos = Signature.consumeWhitespace(typeName, pos, length)) >= length) {
            throw new IllegalArgumentException(new String(typeName));
        }
        char currentChar = typeName[pos];
        switch (currentChar) {
            case 'b': {
                checkPos = Signature.checkName(BOOLEAN, typeName, pos, length);
                if (checkPos > 0) {
                    pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                    buffer.append('Z');
                    return pos;
                }
                checkPos = Signature.checkName(BYTE, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('B');
                return pos;
            }
            case 'd': {
                checkPos = Signature.checkName(DOUBLE, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('D');
                return pos;
            }
            case 'f': {
                checkPos = Signature.checkName(FLOAT, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('F');
                return pos;
            }
            case 'i': {
                checkPos = Signature.checkName(INT, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('I');
                return pos;
            }
            case 'l': {
                checkPos = Signature.checkName(LONG, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('J');
                return pos;
            }
            case 's': {
                checkPos = Signature.checkName(SHORT, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('S');
                return pos;
            }
            case 'v': {
                checkPos = Signature.checkName(VOID, typeName, pos, length);
                if (checkPos <= 0) break;
                pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                buffer.append('V');
                return pos;
            }
            case 'c': {
                checkPos = Signature.checkName(CHAR, typeName, pos, length);
                if (checkPos > 0) {
                    pos = Signature.encodeArrayDimension(typeName, checkPos, length, buffer);
                    buffer.append('C');
                    return pos;
                }
                checkPos = Signature.checkName(CAPTURE, typeName, pos, length);
                if (checkPos <= 0 || typeName[pos = Signature.consumeWhitespace(typeName, checkPos, length)] != '?') break;
                buffer.append('!');
            }
            case '?': {
                pos = Signature.consumeWhitespace(typeName, pos + 1, length);
                checkPos = Signature.checkName(EXTENDS, typeName, pos, length);
                if (checkPos > 0) {
                    buffer.append('+');
                    pos = Signature.encodeTypeSignature(typeName, checkPos, isResolved, length, buffer);
                    return pos;
                }
                checkPos = Signature.checkName(SUPER, typeName, pos, length);
                if (checkPos > 0) {
                    buffer.append('-');
                    pos = Signature.encodeTypeSignature(typeName, checkPos, isResolved, length, buffer);
                    return pos;
                }
                buffer.append('*');
                return pos;
            }
        }
        checkPos = Signature.checkArrayDimension(typeName, pos, length);
        int end = checkPos > 0 ? Signature.encodeArrayDimension(typeName, checkPos, length, buffer) : -1;
        buffer.append(isResolved ? (char)'L' : 'Q');
        while (true) {
            if ((checkPos = Signature.checkNextChar(typeName, '<', pos = Signature.encodeQualifiedName(typeName, pos, length, buffer), length, true)) > 0) {
                buffer.append('<');
                pos = Signature.checkNextChar(typeName, '>', checkPos, length, true);
                if (pos > 0) {
                    buffer.append('>');
                } else {
                    pos = Signature.encodeTypeSignature(typeName, checkPos, isResolved, length, buffer);
                    while ((checkPos = Signature.checkNextChar(typeName, ',', pos, length, true)) > 0) {
                        pos = Signature.encodeTypeSignature(typeName, checkPos, isResolved, length, buffer);
                    }
                    pos = Signature.checkNextChar(typeName, '>', pos, length, false);
                    buffer.append('>');
                }
            }
            if ((checkPos = Signature.checkNextChar(typeName, '.', pos, length, true)) <= 0) break;
            buffer.append('.');
            pos = checkPos;
        }
        buffer.append(';');
        if (end > 0) {
            pos = end;
        }
        return pos;
    }

    public static int getArrayCount(char[] typeSignature) throws IllegalArgumentException {
        try {
            int count = 0;
            while (typeSignature[count] == '[') {
                ++count;
            }
            return count;
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException();
        }
    }

    public static int getArrayCount(String typeSignature) throws IllegalArgumentException {
        return Signature.getArrayCount(typeSignature.toCharArray());
    }

    public static char[] getElementType(char[] typeSignature) throws IllegalArgumentException {
        int count = Signature.getArrayCount(typeSignature);
        if (count == 0) {
            return typeSignature;
        }
        int length = typeSignature.length;
        char[] result = new char[length - count];
        System.arraycopy(typeSignature, count, result, 0, length - count);
        return result;
    }

    public static String getElementType(String typeSignature) throws IllegalArgumentException {
        char[] elementType;
        char[] signature = typeSignature.toCharArray();
        return signature == (elementType = Signature.getElementType(signature)) ? typeSignature : new String(elementType);
    }

    public static char[][] getIntersectionTypeBounds(char[] intersectionTypeSignature) throws IllegalArgumentException {
        if (Signature.getTypeSignatureKind(intersectionTypeSignature) != 7) {
            return CharOperation.NO_CHAR_CHAR;
        }
        ArrayList<char[]> args = new ArrayList<char[]>();
        int i = 1;
        int length = intersectionTypeSignature.length;
        while (true) {
            int e;
            if ((e = Util.scanClassTypeSignature(intersectionTypeSignature, i)) < 0) {
                throw new IllegalArgumentException("Invalid format");
            }
            args.add(CharOperation.subarray(intersectionTypeSignature, i, e + 1));
            if (e == length - 1) {
                int size = args.size();
                char[][] result = new char[size][];
                args.toArray((T[])result);
                return result;
            }
            if (intersectionTypeSignature[e + 1] != ':') {
                throw new IllegalArgumentException("Invalid format");
            }
            i = e + 2;
        }
    }

    public static String[] getIntersectionTypeBounds(String intersectionTypeSignature) throws IllegalArgumentException {
        char[][] args = Signature.getIntersectionTypeBounds(intersectionTypeSignature.toCharArray());
        return CharOperation.toStrings(args);
    }

    public static int getParameterCount(char[] methodSignature) throws IllegalArgumentException {
        try {
            int count = 0;
            int i = CharOperation.indexOf('(', methodSignature);
            if (i < 0) {
                throw new IllegalArgumentException();
            }
            ++i;
            while (true) {
                if (methodSignature[i] == ')') {
                    return count;
                }
                int e = Util.scanTypeSignature(methodSignature, i);
                if (e < 0) {
                    throw new IllegalArgumentException();
                }
                i = e + 1;
                ++count;
            }
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException();
        }
    }

    public static int getParameterCount(String methodSignature) throws IllegalArgumentException {
        return Signature.getParameterCount(methodSignature.toCharArray());
    }

    public static char[][] getParameterTypes(char[] methodSignature) throws IllegalArgumentException {
        try {
            int count = Signature.getParameterCount(methodSignature);
            char[][] result = new char[count][];
            if (count == 0) {
                return result;
            }
            int i = CharOperation.indexOf('(', methodSignature);
            if (i < 0) {
                throw new IllegalArgumentException();
            }
            ++i;
            int t = 0;
            while (true) {
                if (methodSignature[i] == ')') {
                    return result;
                }
                int e = Util.scanTypeSignature(methodSignature, i);
                if (e < 0) {
                    throw new IllegalArgumentException();
                }
                result[t] = CharOperation.subarray(methodSignature, i, e + 1);
                ++t;
                i = e + 1;
            }
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException();
        }
    }

    public static String[] getParameterTypes(String methodSignature) throws IllegalArgumentException {
        char[][] parameterTypes = Signature.getParameterTypes(methodSignature.toCharArray());
        return CharOperation.toStrings(parameterTypes);
    }

    public static char[] getQualifier(char[] name) {
        int firstGenericStart = CharOperation.indexOf('<', name);
        int lastDot = CharOperation.lastIndexOf('.', name, 0, firstGenericStart == -1 ? name.length - 1 : firstGenericStart);
        if (lastDot == -1) {
            return CharOperation.NO_CHAR;
        }
        return CharOperation.subarray(name, 0, lastDot);
    }

    public static String getQualifier(String name) {
        char[] qualifier = Signature.getQualifier(name.toCharArray());
        if (qualifier.length == 0) {
            return Util.EMPTY_STRING;
        }
        return new String(qualifier);
    }

    public static char[] getReturnType(char[] methodSignature) throws IllegalArgumentException {
        int paren = CharOperation.lastIndexOf(')', methodSignature);
        if (paren == -1) {
            throw new IllegalArgumentException();
        }
        int last = Util.scanTypeSignature(methodSignature, paren + 1);
        return CharOperation.subarray(methodSignature, paren + 1, last + 1);
    }

    public static String getReturnType(String methodSignature) throws IllegalArgumentException {
        return new String(Signature.getReturnType(methodSignature.toCharArray()));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static char[] getSignatureQualifier(char[] typeSignature) {
        if (typeSignature == null) {
            return CharOperation.NO_CHAR;
        }
        char[] qualifiedType = Signature.toCharArray(typeSignature);
        int dotCount = 0;
        int i = 0;
        block5: while (i < typeSignature.length) {
            switch (typeSignature[i]) {
                case '.': {
                    ++dotCount;
                    break;
                }
                case '<': {
                    break block5;
                }
                case '$': {
                    break block5;
                }
            }
            ++i;
        }
        if (dotCount > 0) {
            i = 0;
            while (i < qualifiedType.length) {
                if (qualifiedType[i] == '.') {
                    --dotCount;
                }
                if (dotCount <= 0) {
                    return CharOperation.subarray(qualifiedType, 0, i);
                }
                ++i;
            }
        }
        return CharOperation.NO_CHAR;
    }

    public static String getSignatureQualifier(String typeSignature) {
        return new String(Signature.getSignatureQualifier(typeSignature == null ? null : typeSignature.toCharArray()));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static char[] getSignatureSimpleName(char[] typeSignature) {
        if (typeSignature == null) {
            return CharOperation.NO_CHAR;
        }
        char[] qualifiedType = Signature.toCharArray(typeSignature);
        int dotCount = 0;
        int i = 0;
        block5: while (i < typeSignature.length) {
            switch (typeSignature[i]) {
                case '.': {
                    ++dotCount;
                    break;
                }
                case '<': {
                    break block5;
                }
                case '$': {
                    break block5;
                }
            }
            ++i;
        }
        if (dotCount > 0) {
            i = 0;
            while (i < qualifiedType.length) {
                if (qualifiedType[i] == '.') {
                    --dotCount;
                }
                if (dotCount <= 0) {
                    return CharOperation.subarray(qualifiedType, i + 1, qualifiedType.length);
                }
                ++i;
            }
        }
        return qualifiedType;
    }

    public static String getSignatureSimpleName(String typeSignature) {
        return new String(Signature.getSignatureSimpleName(typeSignature == null ? null : typeSignature.toCharArray()));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static char[] getSimpleName(char[] name) {
        int lastDot = -1;
        int lastGenericStart = -1;
        int lastGenericEnd = -1;
        int depth = 0;
        int length = name.length;
        int i = length - 1;
        block5: while (i >= 0) {
            switch (name[i]) {
                case '.': {
                    if (depth != 0) break;
                    lastDot = i;
                    break block5;
                }
                case '<': {
                    if (--depth != 0) break;
                    lastGenericStart = i;
                    break;
                }
                case '>': {
                    if (depth == 0) {
                        lastGenericEnd = i;
                    }
                    ++depth;
                }
            }
            --i;
        }
        if (lastGenericStart < 0) {
            if (lastDot < 0) {
                return name;
            }
            return CharOperation.subarray(name, lastDot + 1, length);
        }
        StringBuffer buffer = new StringBuffer(10);
        int nameStart = lastDot < 0 ? 0 : lastDot + 1;
        buffer.append(name, nameStart, lastGenericStart - nameStart);
        Signature.appendArgumentSimpleNames(name, lastGenericStart, lastGenericEnd, buffer);
        buffer.append(name, lastGenericEnd + 1, length - lastGenericEnd - 1);
        length = buffer.length();
        char[] result = new char[length];
        buffer.getChars(0, length, result, 0);
        return result;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String getSimpleName(String name) {
        int lastDot = -1;
        int lastGenericStart = -1;
        int lastGenericEnd = -1;
        int depth = 0;
        int length = name.length();
        int i = length - 1;
        block5: while (i >= 0) {
            switch (name.charAt(i)) {
                case '.': {
                    if (depth != 0) break;
                    lastDot = i;
                    break block5;
                }
                case '<': {
                    if (--depth != 0) break;
                    lastGenericStart = i;
                    break;
                }
                case '>': {
                    if (depth == 0) {
                        lastGenericEnd = i;
                    }
                    ++depth;
                }
            }
            --i;
        }
        if (lastGenericStart < 0) {
            if (lastDot < 0) {
                return name;
            }
            return name.substring(lastDot + 1, length);
        }
        StringBuffer buffer = new StringBuffer(10);
        char[] nameChars = name.toCharArray();
        int nameStart = lastDot < 0 ? 0 : lastDot + 1;
        buffer.append(nameChars, nameStart, lastGenericStart - nameStart);
        Signature.appendArgumentSimpleNames(nameChars, lastGenericStart, lastGenericEnd, buffer);
        buffer.append(nameChars, lastGenericEnd + 1, length - lastGenericEnd - 1);
        return buffer.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static char[][] getSimpleNames(char[] name) {
        int length;
        int n = length = name == null ? 0 : name.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int wordCount = 1;
        int i = 0;
        block4: while (i < length) {
            switch (name[i]) {
                case '.': {
                    ++wordCount;
                    break;
                }
                case '<': {
                    break block4;
                }
            }
            ++i;
        }
        char[][] split = new char[wordCount][];
        int last = 0;
        int currentWord = 0;
        int i2 = 0;
        while (i2 < length) {
            if (name[i2] == '<') break;
            if (name[i2] == '.') {
                split[currentWord] = new char[i2 - last];
                System.arraycopy(name, last, split[currentWord++], 0, i2 - last);
                last = i2 + 1;
            }
            ++i2;
        }
        split[currentWord] = new char[length - last];
        System.arraycopy(name, last, split[currentWord], 0, length - last);
        return split;
    }

    public static String[] getSimpleNames(String name) {
        return CharOperation.toStrings(Signature.getSimpleNames(name.toCharArray()));
    }

    public static char[][] getThrownExceptionTypes(char[] methodSignature) throws IllegalArgumentException {
        int exceptionStart = CharOperation.indexOf('^', methodSignature);
        if (exceptionStart == -1) {
            int length;
            int paren = CharOperation.lastIndexOf(')', methodSignature);
            if (paren == -1) {
                throw new IllegalArgumentException();
            }
            exceptionStart = Util.scanTypeSignature(methodSignature, paren + 1) + 1;
            if (exceptionStart == (length = methodSignature.length)) {
                return CharOperation.NO_CHAR_CHAR;
            }
            throw new IllegalArgumentException();
        }
        int length = methodSignature.length;
        int i = exceptionStart;
        ArrayList<char[]> exceptionList = new ArrayList<char[]>(1);
        while (i < length) {
            if (methodSignature[i] == '^') {
                ++i;
            } else {
                throw new IllegalArgumentException();
            }
            i = Util.scanTypeSignature(methodSignature, i) + 1;
            exceptionList.add(CharOperation.subarray(methodSignature, ++exceptionStart, i));
            exceptionStart = i;
        }
        char[][] result = new char[exceptionList.size()][];
        exceptionList.toArray((T[])result);
        return result;
    }

    public static String[] getThrownExceptionTypes(String methodSignature) throws IllegalArgumentException {
        char[][] parameterTypes = Signature.getThrownExceptionTypes(methodSignature.toCharArray());
        return CharOperation.toStrings(parameterTypes);
    }

    public static char[][] getTypeArguments(char[] parameterizedTypeSignature) throws IllegalArgumentException {
        int length = parameterizedTypeSignature.length;
        if (length < 2 || parameterizedTypeSignature[length - 2] != '>') {
            return CharOperation.NO_CHAR_CHAR;
        }
        int count = 1;
        int start = length - 2;
        while (start >= 0 && count > 0) {
            switch (parameterizedTypeSignature[--start]) {
                case '<': {
                    --count;
                    break;
                }
                case '>': {
                    ++count;
                }
            }
        }
        if (start < 0) {
            throw new IllegalArgumentException();
        }
        ArrayList<char[]> args = new ArrayList<char[]>();
        int p = start + 1;
        while (true) {
            if (p >= parameterizedTypeSignature.length) {
                throw new IllegalArgumentException();
            }
            char c = parameterizedTypeSignature[p];
            if (c == '>') {
                int size = args.size();
                char[][] result = new char[size][];
                args.toArray((T[])result);
                return result;
            }
            int e = Util.scanTypeArgumentSignature(parameterizedTypeSignature, p);
            args.add(CharOperation.subarray(parameterizedTypeSignature, p, e + 1));
            p = e + 1;
        }
    }

    public static String[] getTypeArguments(String parameterizedTypeSignature) throws IllegalArgumentException {
        char[][] args = Signature.getTypeArguments(parameterizedTypeSignature.toCharArray());
        return CharOperation.toStrings(args);
    }

    public static char[] getTypeErasure(char[] parameterizedTypeSignature) throws IllegalArgumentException {
        int end = CharOperation.indexOf('<', parameterizedTypeSignature);
        if (end == -1) {
            return parameterizedTypeSignature;
        }
        int length = parameterizedTypeSignature.length;
        char[] result = new char[length];
        int pos = 0;
        int start = 0;
        int deep = 0;
        int idx = end;
        while (idx < length) {
            switch (parameterizedTypeSignature[idx]) {
                case '<': {
                    if (deep == 0) {
                        int size = idx - start;
                        System.arraycopy(parameterizedTypeSignature, start, result, pos, size);
                        end = idx;
                        pos += size;
                    }
                    ++deep;
                    break;
                }
                case '>': {
                    if (--deep < 0) {
                        throw new IllegalArgumentException();
                    }
                    if (deep != 0) break;
                    start = idx + 1;
                }
            }
            ++idx;
        }
        if (deep > 0) {
            throw new IllegalArgumentException();
        }
        int size = pos + length - start;
        char[] resized = new char[size];
        System.arraycopy(result, 0, resized, 0, pos);
        System.arraycopy(parameterizedTypeSignature, start, resized, pos, length - start);
        return resized;
    }

    public static String getTypeErasure(String parameterizedTypeSignature) throws IllegalArgumentException {
        char[] erasure;
        char[] signature = parameterizedTypeSignature.toCharArray();
        return signature == (erasure = Signature.getTypeErasure(signature)) ? parameterizedTypeSignature : new String(erasure);
    }

    public static char[][] getTypeParameterBounds(char[] formalTypeParameterSignature) throws IllegalArgumentException {
        int p1 = CharOperation.indexOf(':', formalTypeParameterSignature);
        if (p1 < 0) {
            throw new IllegalArgumentException();
        }
        if (p1 == formalTypeParameterSignature.length - 1) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int p2 = CharOperation.indexOf(':', formalTypeParameterSignature, p1 + 1);
        if (p2 < 0) {
            char[] classBound = CharOperation.subarray(formalTypeParameterSignature, p1 + 1, formalTypeParameterSignature.length);
            return new char[][]{classBound};
        }
        char[] classBound = p2 == p1 + 1 ? (char[])null : CharOperation.subarray(formalTypeParameterSignature, p1 + 1, p2);
        char[][] interfaceBounds = CharOperation.splitOn(':', formalTypeParameterSignature, p2 + 1, formalTypeParameterSignature.length);
        if (classBound == null) {
            return interfaceBounds;
        }
        int resultLength = interfaceBounds.length + 1;
        char[][] result = new char[resultLength][];
        result[0] = classBound;
        System.arraycopy(interfaceBounds, 0, result, 1, interfaceBounds.length);
        return result;
    }

    public static String[] getTypeParameterBounds(String formalTypeParameterSignature) throws IllegalArgumentException {
        char[][] bounds = Signature.getTypeParameterBounds(formalTypeParameterSignature.toCharArray());
        return CharOperation.toStrings(bounds);
    }

    /*
     * Unable to fully structure code
     */
    public static char[][] getTypeParameters(char[] methodOrTypeSignature) throws IllegalArgumentException {
        try {
            length = methodOrTypeSignature.length;
            if (length == 0) {
                return CharOperation.NO_CHAR_CHAR;
            }
            if (methodOrTypeSignature[0] != '<') {
                return CharOperation.NO_CHAR_CHAR;
            }
            paramList = new ArrayList<char[]>(1);
            paramStart = 1;
            i = 1;
            while (i < length) {
                if (methodOrTypeSignature[i] == '>') {
                    size = paramList.size();
                    if (size == 0) {
                        throw new IllegalArgumentException();
                    }
                    result = new char[size][];
                    paramList.toArray((T[])result);
                    return result;
                }
                if ((i = CharOperation.indexOf(':', methodOrTypeSignature, i)) >= 0 && i < length) ** GOTO lbl46
                throw new IllegalArgumentException();
lbl-1000:
                // 1 sources

                {
                    switch (methodOrTypeSignature[++i]) {
                        case ':': {
                            break;
                        }
                        case '>': {
                            break;
                        }
                        case 'L': {
                            try {
                                i = Util.scanClassTypeSignature(methodOrTypeSignature, i);
                                ++i;
                            }
                            catch (IllegalArgumentException v0) {}
                            continue block16;
                        }
                        case '[': {
                            try {
                                i = Util.scanArrayTypeSignature(methodOrTypeSignature, i);
                                ++i;
                            }
                            catch (IllegalArgumentException v1) {}
                            continue block16;
                        }
                        case 'T': {
                            try {
                                i = Util.scanTypeVariableSignature(methodOrTypeSignature, i);
                                ++i;
                                break;
                            }
                            catch (IllegalArgumentException v2) {}
                        }
                    }
lbl46:
                    // 10 sources

                    ** while (methodOrTypeSignature[i] == ':')
                }
lbl47:
                // 1 sources

                paramList.add(CharOperation.subarray(methodOrTypeSignature, paramStart, i));
                paramStart = i;
            }
        }
        catch (ArrayIndexOutOfBoundsException v3) {}
        throw new IllegalArgumentException();
    }

    public static String[] getTypeParameters(String methodOrTypeSignature) throws IllegalArgumentException {
        char[][] params = Signature.getTypeParameters(methodOrTypeSignature.toCharArray());
        return CharOperation.toStrings(params);
    }

    public static int getTypeSignatureKind(char[] typeSignature) {
        if (typeSignature.length < 1) {
            throw new IllegalArgumentException();
        }
        char c = typeSignature[0];
        if (c == '<') {
            int count = 1;
            int i = 1;
            int length = typeSignature.length;
            while (i < length) {
                switch (typeSignature[i]) {
                    case '<': {
                        ++count;
                        break;
                    }
                    case '>': {
                        --count;
                    }
                }
                if (count == 0) {
                    if (i + 1 >= length) break;
                    c = typeSignature[i + 1];
                    break;
                }
                ++i;
            }
        }
        switch (c) {
            case '[': {
                return 4;
            }
            case 'L': 
            case 'Q': {
                return 1;
            }
            case 'T': {
                return 3;
            }
            case 'B': 
            case 'C': 
            case 'D': 
            case 'F': 
            case 'I': 
            case 'J': 
            case 'S': 
            case 'V': 
            case 'Z': {
                return 2;
            }
            case '*': 
            case '+': 
            case '-': {
                return 5;
            }
            case '!': {
                return 6;
            }
            case '|': {
                return 7;
            }
        }
        throw new IllegalArgumentException();
    }

    public static int getTypeSignatureKind(String typeSignature) {
        return Signature.getTypeSignatureKind(typeSignature.toCharArray());
    }

    public static char[] getTypeVariable(char[] formalTypeParameterSignature) throws IllegalArgumentException {
        int p = CharOperation.indexOf(':', formalTypeParameterSignature);
        if (p < 0) {
            throw new IllegalArgumentException();
        }
        return CharOperation.subarray(formalTypeParameterSignature, 0, p);
    }

    public static String getTypeVariable(String formalTypeParameterSignature) throws IllegalArgumentException {
        return new String(Signature.getTypeVariable(formalTypeParameterSignature.toCharArray()));
    }

    public static char[] removeCapture(char[] methodOrTypeSignature) {
        return CharOperation.remove(methodOrTypeSignature, '!');
    }

    public static String removeCapture(String methodOrTypeSignature) {
        char[] result;
        char[] array = methodOrTypeSignature.toCharArray();
        if (array == (result = Signature.removeCapture(array))) {
            return methodOrTypeSignature;
        }
        return new String(result);
    }

    public static char[] toCharArray(char[] signature) throws IllegalArgumentException {
        int sigLength = signature.length;
        if (sigLength == 0) {
            throw new IllegalArgumentException();
        }
        if (signature[0] == '(' || signature[0] == '<') {
            return Signature.toCharArray(signature, CharOperation.NO_CHAR, null, true, true);
        }
        StringBuffer buffer = new StringBuffer(signature.length + 10);
        Signature.appendTypeSignature(signature, 0, true, buffer);
        char[] result = new char[buffer.length()];
        buffer.getChars(0, buffer.length(), result, 0);
        return result;
    }

    public static char[] toCharArray(char[] methodSignature, char[] methodName, char[][] parameterNames, boolean fullyQualifyTypeNames, boolean includeReturnType) {
        return Signature.toCharArray(methodSignature, methodName, parameterNames, fullyQualifyTypeNames, includeReturnType, false);
    }

    public static char[] toCharArray(char[] methodSignature, char[] methodName, char[][] parameterNames, boolean fullyQualifyTypeNames, boolean includeReturnType, boolean isVargArgs) {
        int index;
        int firstParen = CharOperation.indexOf('(', methodSignature);
        if (firstParen == -1) {
            throw new IllegalArgumentException();
        }
        StringBuffer buffer = new StringBuffer(methodSignature.length + 10);
        if (includeReturnType) {
            char[] rts = Signature.getReturnType(methodSignature);
            Signature.appendTypeSignature(rts, 0, fullyQualifyTypeNames, buffer);
            buffer.append(' ');
        }
        if (methodName != null) {
            buffer.append(methodName);
        }
        buffer.append('(');
        char[][] pts = Signature.getParameterTypes(methodSignature);
        int max = pts.length;
        int i = index = max - 1;
        while (i >= 0) {
            if (pts[i][0] == '[') break;
            --index;
            --i;
        }
        i = 0;
        while (i < max) {
            if (i == index) {
                Signature.appendTypeSignature(pts[i], 0, fullyQualifyTypeNames, buffer, isVargArgs);
            } else {
                Signature.appendTypeSignature(pts[i], 0, fullyQualifyTypeNames, buffer);
            }
            if (parameterNames != null) {
                buffer.append(' ');
                buffer.append(parameterNames[i]);
            }
            if (i != pts.length - 1) {
                buffer.append(',');
                buffer.append(' ');
            }
            ++i;
        }
        buffer.append(')');
        char[] result = new char[buffer.length()];
        buffer.getChars(0, buffer.length(), result, 0);
        return result;
    }

    public static char[] toQualifiedName(char[][] segments) {
        int length = segments.length;
        if (length == 0) {
            return CharOperation.NO_CHAR;
        }
        if (length == 1) {
            return segments[0];
        }
        int resultLength = 0;
        int i = 0;
        while (i < length) {
            resultLength += segments[i].length + 1;
            ++i;
        }
        char[] result = new char[--resultLength];
        int index = 0;
        int i2 = 0;
        while (i2 < length) {
            char[] segment = segments[i2];
            int segmentLength = segment.length;
            System.arraycopy(segment, 0, result, index, segmentLength);
            index += segmentLength;
            if (i2 != length - 1) {
                result[index++] = 46;
            }
            ++i2;
        }
        return result;
    }

    public static String toQualifiedName(String[] segments) {
        int length = segments.length;
        char[][] charArrays = new char[length][];
        int i = 0;
        while (i < length) {
            charArrays[i] = segments[i].toCharArray();
            ++i;
        }
        return new String(Signature.toQualifiedName(charArrays));
    }

    public static String toString(String signature) throws IllegalArgumentException {
        return new String(Signature.toCharArray(signature.toCharArray()));
    }

    public static String toString(String methodSignature, String methodName, String[] parameterNames, boolean fullyQualifyTypeNames, boolean includeReturnType) {
        return Signature.toString(methodSignature, methodName, parameterNames, fullyQualifyTypeNames, includeReturnType, false);
    }

    public static String toString(String methodSignature, String methodName, String[] parameterNames, boolean fullyQualifyTypeNames, boolean includeReturnType, boolean isVarArgs) {
        Object params;
        if (parameterNames == null) {
            params = null;
        } else {
            int paramLength = parameterNames.length;
            params = new char[paramLength][];
            int i = 0;
            while (i < paramLength) {
                params[i] = parameterNames[i].toCharArray();
                ++i;
            }
        }
        return new String(Signature.toCharArray(methodSignature.toCharArray(), methodName == null ? null : methodName.toCharArray(), params, fullyQualifyTypeNames, includeReturnType, isVarArgs));
    }

    private Signature() {
    }
}

