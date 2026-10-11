/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.parser;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.eclipse.jdt.core.compiler.InvalidInputException;

public class ScannerHelper {
    public static final long[] Bits = new long[]{1L, 2L, 4L, 8L, 16L, 32L, 64L, 128L, 256L, 512L, 1024L, 2048L, 4096L, 8192L, 16384L, 32768L, 65536L, 131072L, 262144L, 524288L, 0x100000L, 0x200000L, 0x400000L, 0x800000L, 0x1000000L, 0x2000000L, 0x4000000L, 0x8000000L, 0x10000000L, 0x20000000L, 0x40000000L, Integer.MIN_VALUE, 0x100000000L, 0x200000000L, 0x400000000L, 0x800000000L, 0x1000000000L, 0x2000000000L, 0x4000000000L, 0x8000000000L, 0x10000000000L, 0x20000000000L, 0x40000000000L, 0x80000000000L, 0x100000000000L, 0x200000000000L, 0x400000000000L, 0x800000000000L, 0x1000000000000L, 0x2000000000000L, 0x4000000000000L, 0x8000000000000L, 0x10000000000000L, 0x20000000000000L, 0x40000000000000L, 0x80000000000000L, 0x100000000000000L, 0x200000000000000L, 0x400000000000000L, 0x800000000000000L, 0x1000000000000000L, 0x2000000000000000L, 0x4000000000000000L, Long.MIN_VALUE};
    private static final int START_INDEX = 0;
    private static final int PART_INDEX = 1;
    private static long[][][] Tables;
    private static long[][][] Tables7;
    public static final int MAX_OBVIOUS = 128;
    public static final int[] OBVIOUS_IDENT_CHAR_NATURES;
    public static final int C_JLS_SPACE = 256;
    public static final int C_SPECIAL = 128;
    public static final int C_IDENT_START = 64;
    public static final int C_UPPER_LETTER = 32;
    public static final int C_LOWER_LETTER = 16;
    public static final int C_IDENT_PART = 8;
    public static final int C_DIGIT = 4;
    public static final int C_SEPARATOR = 2;
    public static final int C_SPACE = 1;
    static /* synthetic */ Class class$0;

    static {
        OBVIOUS_IDENT_CHAR_NATURES = new int[128];
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[0] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[1] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[2] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[3] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[4] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[5] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[6] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[7] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[8] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[14] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[15] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[16] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[17] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[18] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[19] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[20] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[21] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[22] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[23] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[24] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[25] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[26] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[27] = 8;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[127] = 8;
        int i = 48;
        while (i <= 57) {
            ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[i] = 12;
            ++i;
        }
        i = 97;
        while (i <= 122) {
            ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[i] = 88;
            ++i;
        }
        i = 65;
        while (i <= 90) {
            ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[i] = 104;
            ++i;
        }
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[95] = 200;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[36] = 200;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[9] = 257;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[10] = 257;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[11] = 1;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[12] = 257;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[13] = 257;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[28] = 1;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[29] = 1;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[30] = 1;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[31] = 1;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[32] = 257;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[46] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[58] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[59] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[44] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[91] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[93] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[40] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[41] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[123] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[125] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[43] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[45] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[42] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[47] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[61] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[38] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[124] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[63] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[60] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[62] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[33] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[37] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[94] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[126] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[34] = 2;
        ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[39] = 2;
    }

    static void initializeTable() {
        int i;
        long[] readValues;
        DataInputStream inputStream;
        Tables = new long[2][][];
        ScannerHelper.Tables[0] = new long[3][];
        ScannerHelper.Tables[1] = new long[4][];
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/start0.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[0][0] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/start1.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[0][1] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/start2.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[0][2] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/part0.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[1][0] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/part1.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[1][1] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/part2.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[1][2] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode/part14.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables[1][3] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    static void initializeTable17() {
        int i;
        long[] readValues;
        DataInputStream inputStream;
        Tables7 = new long[2][][];
        ScannerHelper.Tables7[0] = new long[3][];
        ScannerHelper.Tables7[1] = new long[4][];
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/start0.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[0][0] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/start1.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[0][1] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/start2.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[0][2] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/part0.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[1][0] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/part1.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[1][1] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/part2.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[1][2] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.internal.compiler.parser.ScannerHelper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            inputStream = new DataInputStream(new BufferedInputStream(clazz.getResourceAsStream("unicode6/part14.rsc")));
            readValues = new long[1024];
            i = 0;
            while (i < 1024) {
                readValues[i] = inputStream.readLong();
                ++i;
            }
            inputStream.close();
            ScannerHelper.Tables7[1][3] = readValues;
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static final boolean isBitSet(long[] values, int i) {
        try {
            return (values[i / 64] & Bits[i % 64]) != 0L;
        }
        catch (NullPointerException nullPointerException) {
            return false;
        }
    }

    public static boolean isJavaIdentifierPart(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 8) != 0;
        }
        return Character.isJavaIdentifierPart(c);
    }

    public static boolean isJavaIdentifierPart(long complianceLevel, char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 8) != 0;
        }
        return ScannerHelper.isJavaIdentifierPart(complianceLevel, (int)c);
    }

    public static boolean isJavaIdentifierPart(long complianceLevel, int codePoint) {
        if (complianceLevel <= 0x320000L) {
            if (Tables == null) {
                ScannerHelper.initializeTable();
            }
            switch ((codePoint & 0x1F0000) >> 16) {
                case 0: {
                    return ScannerHelper.isBitSet(Tables[1][0], codePoint & 0xFFFF);
                }
                case 1: {
                    return ScannerHelper.isBitSet(Tables[1][1], codePoint & 0xFFFF);
                }
                case 2: {
                    return ScannerHelper.isBitSet(Tables[1][2], codePoint & 0xFFFF);
                }
                case 14: {
                    return ScannerHelper.isBitSet(Tables[1][3], codePoint & 0xFFFF);
                }
            }
        } else {
            if (Tables7 == null) {
                ScannerHelper.initializeTable17();
            }
            switch ((codePoint & 0x1F0000) >> 16) {
                case 0: {
                    return ScannerHelper.isBitSet(Tables7[1][0], codePoint & 0xFFFF);
                }
                case 1: {
                    return ScannerHelper.isBitSet(Tables7[1][1], codePoint & 0xFFFF);
                }
                case 2: {
                    return ScannerHelper.isBitSet(Tables7[1][2], codePoint & 0xFFFF);
                }
                case 14: {
                    return ScannerHelper.isBitSet(Tables7[1][3], codePoint & 0xFFFF);
                }
            }
        }
        return false;
    }

    public static boolean isJavaIdentifierPart(long complianceLevel, char high, char low) {
        return ScannerHelper.isJavaIdentifierPart(complianceLevel, ScannerHelper.toCodePoint(high, low));
    }

    public static boolean isJavaIdentifierStart(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x40) != 0;
        }
        return Character.isJavaIdentifierStart(c);
    }

    public static boolean isJavaIdentifierStart(long complianceLevel, char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x40) != 0;
        }
        return ScannerHelper.isJavaIdentifierStart(complianceLevel, (int)c);
    }

    public static boolean isJavaIdentifierStart(long complianceLevel, char high, char low) {
        return ScannerHelper.isJavaIdentifierStart(complianceLevel, ScannerHelper.toCodePoint(high, low));
    }

    public static boolean isJavaIdentifierStart(long complianceLevel, int codePoint) {
        if (complianceLevel <= 0x320000L) {
            if (Tables == null) {
                ScannerHelper.initializeTable();
            }
            switch ((codePoint & 0x1F0000) >> 16) {
                case 0: {
                    return ScannerHelper.isBitSet(Tables[0][0], codePoint & 0xFFFF);
                }
                case 1: {
                    return ScannerHelper.isBitSet(Tables[0][1], codePoint & 0xFFFF);
                }
                case 2: {
                    return ScannerHelper.isBitSet(Tables[0][2], codePoint & 0xFFFF);
                }
            }
        } else {
            if (Tables7 == null) {
                ScannerHelper.initializeTable17();
            }
            switch ((codePoint & 0x1F0000) >> 16) {
                case 0: {
                    return ScannerHelper.isBitSet(Tables7[0][0], codePoint & 0xFFFF);
                }
                case 1: {
                    return ScannerHelper.isBitSet(Tables7[0][1], codePoint & 0xFFFF);
                }
                case 2: {
                    return ScannerHelper.isBitSet(Tables7[0][2], codePoint & 0xFFFF);
                }
            }
        }
        return false;
    }

    private static int toCodePoint(char high, char low) {
        return (high - 55296) * 1024 + (low - 56320) + 65536;
    }

    public static boolean isDigit(char c) throws InvalidInputException {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 4) != 0;
        }
        if (Character.isDigit(c)) {
            throw new InvalidInputException("Invalid_Digit");
        }
        return false;
    }

    public static int digit(char c, int radix) {
        if (c < '\u0080') {
            switch (radix) {
                case 8: {
                    if (c >= '0' && c <= '7') {
                        return c - 48;
                    }
                    return -1;
                }
                case 10: {
                    if (c >= '0' && c <= '9') {
                        return c - 48;
                    }
                    return -1;
                }
                case 16: {
                    if (c >= '0' && c <= '9') {
                        return c - 48;
                    }
                    if (c >= 'A' && c <= 'F') {
                        return c - 65 + 10;
                    }
                    if (c >= 'a' && c <= 'f') {
                        return c - 97 + 10;
                    }
                    return -1;
                }
            }
        }
        return Character.digit(c, radix);
    }

    public static int getNumericValue(char c) {
        if (c < '\u0080') {
            switch (OBVIOUS_IDENT_CHAR_NATURES[c]) {
                case 4: {
                    return c - 48;
                }
                case 16: {
                    return 10 + c - 97;
                }
                case 32: {
                    return 10 + c - 65;
                }
            }
        }
        return Character.getNumericValue(c);
    }

    public static char toUpperCase(char c) {
        if (c < '\u0080') {
            if ((OBVIOUS_IDENT_CHAR_NATURES[c] & 0x20) != 0) {
                return c;
            }
            if ((OBVIOUS_IDENT_CHAR_NATURES[c] & 0x10) != 0) {
                return (char)(c - 32);
            }
        }
        return Character.toUpperCase(c);
    }

    public static char toLowerCase(char c) {
        if (c < '\u0080') {
            if ((OBVIOUS_IDENT_CHAR_NATURES[c] & 0x10) != 0) {
                return c;
            }
            if ((OBVIOUS_IDENT_CHAR_NATURES[c] & 0x20) != 0) {
                return (char)(32 + c);
            }
        }
        return Character.toLowerCase(c);
    }

    public static boolean isLowerCase(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x10) != 0;
        }
        return Character.isLowerCase(c);
    }

    public static boolean isUpperCase(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x20) != 0;
        }
        return Character.isUpperCase(c);
    }

    public static boolean isWhitespace(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 1) != 0;
        }
        return Character.isWhitespace(c);
    }

    public static boolean isLetter(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x30) != 0;
        }
        return Character.isLetter(c);
    }

    public static boolean isLetterOrDigit(char c) {
        if (c < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c] & 0x34) != 0;
        }
        return Character.isLetterOrDigit(c);
    }
}

