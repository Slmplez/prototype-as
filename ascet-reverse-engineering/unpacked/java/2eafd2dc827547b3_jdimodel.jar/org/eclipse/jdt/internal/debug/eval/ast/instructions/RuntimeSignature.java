/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.core.compiler.CharOperation;

public class RuntimeSignature {
    public static final char C_BOOLEAN = 'Z';
    public static final char C_BYTE = 'B';
    public static final char C_CHAR = 'C';
    public static final char C_DOUBLE = 'D';
    public static final char C_FLOAT = 'F';
    public static final char C_INT = 'I';
    public static final char C_SEMICOLON = ';';
    public static final char C_LONG = 'J';
    public static final char C_SHORT = 'S';
    public static final char C_VOID = 'V';
    public static final char C_DOT = '.';
    public static final char C_DOLLAR = '$';
    public static final char C_ARRAY = '[';
    public static final char C_RESOLVED = 'L';
    public static final char C_UNRESOLVED = 'Q';
    public static final char C_NAME_END = ';';
    public static final char C_PARAM_START = '(';
    public static final char C_PARAM_END = ')';
    public static final String SIG_BOOLEAN = "Z";
    public static final String SIG_BYTE = "B";
    public static final String SIG_CHAR = "C";
    public static final String SIG_DOUBLE = "D";
    public static final String SIG_FLOAT = "F";
    public static final String SIG_INT = "I";
    public static final String SIG_LONG = "J";
    public static final String SIG_SHORT = "S";
    public static final String SIG_VOID = "V";
    private static final char[] NO_CHAR = new char[0];
    private static final char[] BOOLEAN = new char[]{'b', 'o', 'o', 'l', 'e', 'a', 'n'};
    private static final char[] BYTE = new char[]{'b', 'y', 't', 'e'};
    private static final char[] CHAR = new char[]{'c', 'h', 'a', 'r'};
    private static final char[] DOUBLE = new char[]{'d', 'o', 'u', 'b', 'l', 'e'};
    private static final char[] FLOAT = new char[]{'f', 'l', 'o', 'a', 't'};
    private static final char[] INT = new char[]{'i', 'n', 't'};
    private static final char[] LONG = new char[]{'l', 'o', 'n', 'g'};
    private static final char[] SHORT = new char[]{'s', 'h', 'o', 'r', 't'};
    private static final char[] VOID = new char[]{'v', 'o', 'i', 'd'};

    public static String toString(String signature) throws IllegalArgumentException {
        return new String(RuntimeSignature.toCharArray(signature.toCharArray()));
    }

    public static char[] toCharArray(char[] signature) throws IllegalArgumentException {
        try {
            int sigLength = signature.length;
            if (sigLength == 0 || signature[0] == '(') {
                return RuntimeSignature.toCharArray(signature, NO_CHAR, null, true, true);
            }
            int resultLength = 0;
            int index = -1;
            while (signature[++index] == '[') {
                resultLength += 2;
            }
            switch (signature[index]) {
                case 'Z': {
                    resultLength += BOOLEAN.length;
                    break;
                }
                case 'B': {
                    resultLength += BYTE.length;
                    break;
                }
                case 'C': {
                    resultLength += CHAR.length;
                    break;
                }
                case 'D': {
                    resultLength += DOUBLE.length;
                    break;
                }
                case 'F': {
                    resultLength += FLOAT.length;
                    break;
                }
                case 'I': {
                    resultLength += INT.length;
                    break;
                }
                case 'J': {
                    resultLength += LONG.length;
                    break;
                }
                case 'S': {
                    resultLength += SHORT.length;
                    break;
                }
                case 'V': {
                    resultLength += VOID.length;
                    break;
                }
                case 'L': 
                case 'Q': {
                    int end = CharOperation.indexOf((char)';', (char[])signature, (int)index);
                    if (end == -1) {
                        throw new IllegalArgumentException();
                    }
                    int start = index + 1;
                    resultLength += end - start;
                    break;
                }
                default: {
                    throw new IllegalArgumentException();
                }
            }
            char[] result = new char[resultLength];
            RuntimeSignature.copyType(signature, 0, result, 0, true);
            return result;
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static char[] toCharArray(char[] methodSignature, char[] methodName, char[][] parameterNames, boolean fullyQualifyTypeNames, boolean includeReturnType) {
        try {
            int firstParen = CharOperation.indexOf((char)'(', (char[])methodSignature);
            if (firstParen == -1) {
                throw new IllegalArgumentException();
            }
            int sigLength = methodSignature.length;
            int paramCount = 0;
            int lastParen = -1;
            int resultLength = 0;
            int i = firstParen;
            block17: while (i < sigLength) {
                block34: {
                    switch (methodSignature[i]) {
                        case '[': {
                            resultLength += 2;
                            break block34;
                        }
                        case 'Z': {
                            resultLength += BOOLEAN.length;
                            break;
                        }
                        case 'B': {
                            resultLength += BYTE.length;
                            break;
                        }
                        case 'C': {
                            resultLength += CHAR.length;
                            break;
                        }
                        case 'D': {
                            resultLength += DOUBLE.length;
                            break;
                        }
                        case 'F': {
                            resultLength += FLOAT.length;
                            break;
                        }
                        case 'I': {
                            resultLength += INT.length;
                            break;
                        }
                        case 'J': {
                            resultLength += LONG.length;
                            break;
                        }
                        case 'S': {
                            resultLength += SHORT.length;
                            break;
                        }
                        case 'V': {
                            resultLength += VOID.length;
                            break;
                        }
                        case 'L': 
                        case 'Q': {
                            int start;
                            int end = CharOperation.indexOf((char)';', (char[])methodSignature, (int)i);
                            if (end == -1) {
                                throw new IllegalArgumentException();
                            }
                            if (fullyQualifyTypeNames) {
                                start = i + 1;
                            } else {
                                start = CharOperation.lastIndexOf((char)'.', (char[])methodSignature, (int)i, (int)end) + 1;
                                if (start == 0) {
                                    start = i + 1;
                                }
                            }
                            resultLength += end - start;
                            i = end;
                            break;
                        }
                        case '(': {
                            ++resultLength;
                            break block34;
                        }
                        case ')': {
                            lastParen = i;
                            if (includeReturnType) {
                                if (paramCount > 0) {
                                    resultLength -= 2;
                                }
                                --paramCount;
                                break block34;
                            } else {
                                if (paramCount > 0) {
                                    --resultLength;
                                    break block17;
                                }
                                ++resultLength;
                                break block17;
                            }
                        }
                        default: {
                            throw new IllegalArgumentException();
                        }
                    }
                    resultLength += 2;
                    ++paramCount;
                }
                ++i;
            }
            int parameterNamesLength = parameterNames == null ? 0 : parameterNames.length;
            int i2 = 0;
            while (true) {
                block35: {
                    if (i2 < parameterNamesLength) break block35;
                }
                resultLength += parameterNames[i2].length + 1;
                ++i2;
            }
            int selectorLength = methodName == null ? 0 : methodName.length;
            char[] result = new char[resultLength += selectorLength];
            int index = 0;
            if (includeReturnType) {
                long pos = RuntimeSignature.copyType(methodSignature, lastParen + 1, result, index, fullyQualifyTypeNames);
                index = (int)(pos >>> 32);
                result[index++] = 32;
            }
            if (methodName != null) {
                System.arraycopy(methodName, 0, result, index, selectorLength);
                index += selectorLength;
            }
            result[index++] = 40;
            int sigPos = firstParen + 1;
            int i3 = 0;
            while (true) {
                if (i3 >= paramCount) {
                    if (sigPos < sigLength) break;
                    throw new IllegalArgumentException();
                }
                long pos = RuntimeSignature.copyType(methodSignature, sigPos, result, index, fullyQualifyTypeNames);
                index = (int)(pos >>> 32);
                sigPos = (int)pos;
                if (parameterNames != null) {
                    result[index++] = 32;
                    char[] parameterName = parameterNames[i3];
                    int paramLength = parameterName.length;
                    System.arraycopy(parameterName, 0, result, index, paramLength);
                    index += paramLength;
                }
                if (i3 != paramCount - 1) {
                    result[index++] = 44;
                    result[index++] = 32;
                }
                ++i3;
            }
            result[index++] = 41;
            return result;
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException();
        }
    }

    /*
     * Unable to fully structure code
     */
    private static long copyType(char[] signature, int sigPos, char[] dest, int index, boolean fullyQualifyTypeNames) {
        arrayCount = 0;
        while (true) {
            switch (signature[sigPos++]) {
                case '[': {
                    ++arrayCount;
                    break;
                }
                case 'Z': {
                    length = RuntimeSignature.BOOLEAN.length;
                    System.arraycopy(RuntimeSignature.BOOLEAN, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'B': {
                    length = RuntimeSignature.BYTE.length;
                    System.arraycopy(RuntimeSignature.BYTE, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'C': {
                    length = RuntimeSignature.CHAR.length;
                    System.arraycopy(RuntimeSignature.CHAR, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'D': {
                    length = RuntimeSignature.DOUBLE.length;
                    System.arraycopy(RuntimeSignature.DOUBLE, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'F': {
                    length = RuntimeSignature.FLOAT.length;
                    System.arraycopy(RuntimeSignature.FLOAT, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'I': {
                    length = RuntimeSignature.INT.length;
                    System.arraycopy(RuntimeSignature.INT, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'J': {
                    length = RuntimeSignature.LONG.length;
                    System.arraycopy(RuntimeSignature.LONG, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'S': {
                    length = RuntimeSignature.SHORT.length;
                    System.arraycopy(RuntimeSignature.SHORT, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'V': {
                    length = RuntimeSignature.VOID.length;
                    System.arraycopy(RuntimeSignature.VOID, 0, dest, index, length);
                    index += length;
                    ** GOTO lbl71
                }
                case 'L': 
                case 'Q': {
                    end = CharOperation.indexOf((char)';', (char[])signature, (int)sigPos);
                    if (end == -1) {
                        throw new IllegalArgumentException();
                    }
                    if (fullyQualifyTypeNames) {
                        start = sigPos;
                    } else {
                        start = CharOperation.lastIndexOf((char)'.', (char[])signature, (int)sigPos, (int)end) + 1;
                        if (start == 0) {
                            start = sigPos;
                        }
                    }
                    length = end - start;
                    System.arraycopy(signature, start, dest, index, length);
                    sigPos = end + 1;
                    index += length;
                    if (true) ** GOTO lbl71
                }
            }
        }
        do {
            dest[index++] = 91;
            dest[index++] = 93;
lbl71:
            // 11 sources

        } while (arrayCount-- > 0);
        return ((long)index << 32) + (long)sigPos;
    }
}

