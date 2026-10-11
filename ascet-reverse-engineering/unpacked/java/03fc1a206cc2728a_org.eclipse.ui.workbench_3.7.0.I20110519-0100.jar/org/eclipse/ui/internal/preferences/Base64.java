/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

class Base64 {
    private static final byte equalSign = 61;
    static char[] digits = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    Base64() {
    }

    public static byte[] decode(byte[] data) {
        if (data.length == 0) {
            return data;
        }
        int lastRealDataIndex = data.length - 1;
        while (data[lastRealDataIndex] == 61) {
            --lastRealDataIndex;
        }
        int padBytes = data.length - 1 - lastRealDataIndex;
        int byteLength = data.length * 6 / 8 - padBytes;
        byte[] result = new byte[byteLength];
        int dataIndex = 0;
        int resultIndex = 0;
        int allBits = 0;
        int resultChunks = (lastRealDataIndex + 1) / 4;
        int i = 0;
        while (i < resultChunks) {
            allBits = 0;
            int j = 0;
            while (j < 4) {
                allBits = allBits << 6 | Base64.decodeDigit(data[dataIndex++]);
                ++j;
            }
            j = resultIndex + 2;
            while (j >= resultIndex) {
                result[j] = (byte)(allBits & 0xFF);
                allBits >>>= 8;
                --j;
            }
            resultIndex += 3;
            ++i;
        }
        switch (padBytes) {
            case 1: {
                allBits = 0;
                int j = 0;
                while (j < 3) {
                    allBits = allBits << 6 | Base64.decodeDigit(data[dataIndex++]);
                    ++j;
                }
                allBits <<= 6;
                allBits >>>= 8;
                j = resultIndex + 1;
                while (j >= resultIndex) {
                    result[j] = (byte)(allBits & 0xFF);
                    allBits >>>= 8;
                    --j;
                }
                break;
            }
            case 2: {
                allBits = 0;
                int j = 0;
                while (j < 2) {
                    allBits = allBits << 6 | Base64.decodeDigit(data[dataIndex++]);
                    ++j;
                }
                allBits <<= 6;
                allBits <<= 6;
                allBits >>>= 8;
                result[resultIndex] = (byte)((allBits >>>= 8) & 0xFF);
            }
        }
        return result;
    }

    static int decodeDigit(byte data) {
        char charData = (char)data;
        if (charData <= 'Z' && charData >= 'A') {
            return charData - 65;
        }
        if (charData <= 'z' && charData >= 'a') {
            return charData - 97 + 26;
        }
        if (charData <= '9' && charData >= '0') {
            return charData - 48 + 52;
        }
        switch (charData) {
            case '+': {
                return 62;
            }
            case '/': {
                return 63;
            }
        }
        throw new IllegalArgumentException("Invalid char to decode: " + data);
    }

    public static byte[] encode(byte[] data) {
        int sourceChunks = data.length / 3;
        int len = (data.length + 2) / 3 * 4;
        byte[] result = new byte[len];
        int extraBytes = data.length - sourceChunks * 3;
        int dataIndex = 0;
        int resultIndex = 0;
        int allBits = 0;
        int i = 0;
        while (i < sourceChunks) {
            allBits = 0;
            int j = 0;
            while (j < 3) {
                allBits = allBits << 8 | data[dataIndex++] & 0xFF;
                ++j;
            }
            j = resultIndex + 3;
            while (j >= resultIndex) {
                result[j] = (byte)digits[allBits & 0x3F];
                allBits >>>= 6;
                --j;
            }
            resultIndex += 4;
            ++i;
        }
        switch (extraBytes) {
            case 1: {
                allBits = data[dataIndex++];
                allBits <<= 8;
                allBits <<= 8;
                int j = resultIndex + 3;
                while (j >= resultIndex) {
                    result[j] = (byte)digits[allBits & 0x3F];
                    allBits >>>= 6;
                    --j;
                }
                result[result.length - 1] = 61;
                result[result.length - 2] = 61;
                break;
            }
            case 2: {
                allBits = data[dataIndex++];
                allBits = allBits << 8 | data[dataIndex++] & 0xFF;
                allBits <<= 8;
                int j = resultIndex + 3;
                while (j >= resultIndex) {
                    result[j] = (byte)digits[allBits & 0x3F];
                    allBits >>>= 6;
                    --j;
                }
                result[result.length - 1] = 61;
            }
        }
        return result;
    }
}

