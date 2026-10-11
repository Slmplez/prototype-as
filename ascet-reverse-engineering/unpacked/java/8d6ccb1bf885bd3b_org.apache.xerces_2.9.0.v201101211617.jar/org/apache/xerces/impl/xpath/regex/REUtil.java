/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xpath.regex;

import java.text.CharacterIterator;
import org.apache.xerces.impl.xpath.regex.Match;
import org.apache.xerces.impl.xpath.regex.ParseException;
import org.apache.xerces.impl.xpath.regex.RegularExpression;

public final class REUtil {
    static final int CACHESIZE = 20;
    static final RegularExpression[] regexCache = new RegularExpression[20];

    private REUtil() {
    }

    static final int composeFromSurrogates(int n, int n2) {
        return 65536 + (n - 55296 << 10) + n2 - 56320;
    }

    static final boolean isLowSurrogate(int n) {
        return (n & 0xFC00) == 56320;
    }

    static final boolean isHighSurrogate(int n) {
        return (n & 0xFC00) == 55296;
    }

    static final String decomposeToSurrogates(int n) {
        char[] cArray = new char[]{(char)(((n -= 65536) >> 10) + 55296), (char)((n & 0x3FF) + 56320)};
        return new String(cArray);
    }

    static final String substring(CharacterIterator characterIterator, int n, int n2) {
        char[] cArray = new char[n2 - n];
        int n3 = 0;
        while (n3 < cArray.length) {
            cArray[n3] = characterIterator.setIndex(n3 + n);
            ++n3;
        }
        return new String(cArray);
    }

    static final int getOptionValue(int n) {
        int n2 = 0;
        switch (n) {
            case 105: {
                n2 = 2;
                break;
            }
            case 109: {
                n2 = 8;
                break;
            }
            case 115: {
                n2 = 4;
                break;
            }
            case 120: {
                n2 = 16;
                break;
            }
            case 117: {
                n2 = 32;
                break;
            }
            case 119: {
                n2 = 64;
                break;
            }
            case 70: {
                n2 = 256;
                break;
            }
            case 72: {
                n2 = 128;
                break;
            }
            case 88: {
                n2 = 512;
                break;
            }
            case 44: {
                n2 = 1024;
                break;
            }
        }
        return n2;
    }

    static final int parseOptions(String string) throws ParseException {
        if (string == null) {
            return 0;
        }
        int n = 0;
        int n2 = 0;
        while (n2 < string.length()) {
            int n3 = REUtil.getOptionValue(string.charAt(n2));
            if (n3 == 0) {
                throw new ParseException("Unknown Option: " + string.substring(n2), -1);
            }
            n |= n3;
            ++n2;
        }
        return n;
    }

    static final String createOptionString(int n) {
        StringBuffer stringBuffer = new StringBuffer(9);
        if ((n & 0x100) != 0) {
            stringBuffer.append('F');
        }
        if ((n & 0x80) != 0) {
            stringBuffer.append('H');
        }
        if ((n & 0x200) != 0) {
            stringBuffer.append('X');
        }
        if ((n & 2) != 0) {
            stringBuffer.append('i');
        }
        if ((n & 8) != 0) {
            stringBuffer.append('m');
        }
        if ((n & 4) != 0) {
            stringBuffer.append('s');
        }
        if ((n & 0x20) != 0) {
            stringBuffer.append('u');
        }
        if ((n & 0x40) != 0) {
            stringBuffer.append('w');
        }
        if ((n & 0x10) != 0) {
            stringBuffer.append('x');
        }
        if ((n & 0x400) != 0) {
            stringBuffer.append(',');
        }
        return stringBuffer.toString().intern();
    }

    static String stripExtendedComment(String string) {
        int n = string.length();
        StringBuffer stringBuffer = new StringBuffer(n);
        int n2 = 0;
        block0: while (n2 < n) {
            char c;
            if ((c = string.charAt(n2++)) == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') continue;
            if (c == '#') {
                while (n2 < n) {
                    if ((c = string.charAt(n2++)) == '\r' || c == '\n') continue block0;
                }
                continue;
            }
            if (c == '\\' && n2 < n) {
                char c2 = string.charAt(n2);
                if (c2 == '#' || c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
                    stringBuffer.append(c2);
                    ++n2;
                    continue;
                }
                stringBuffer.append('\\');
                stringBuffer.append(c2);
                ++n2;
                continue;
            }
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void main(String[] var0) {
        var1_1 = null;
        try {
            var2_2 = "";
            var3_4 = null;
            if (var0.length == 0) {
                System.out.println("Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String");
                System.exit(0);
            }
            var4_7 = 0;
            while (var4_7 < var0.length) {
                if (var0[var4_7].length() == 0 || var0[var4_7].charAt(0) != '-') {
                    if (var1_1 == null) {
                        var1_1 = var0[var4_7];
                    } else if (var3_4 == null) {
                        var3_4 = var0[var4_7];
                    } else {
                        System.err.println("Unnecessary: " + var0[var4_7]);
                    }
                } else if (var0[var4_7].equals("-i")) {
                    var2_2 = var2_2 + "i";
                } else if (var0[var4_7].equals("-m")) {
                    var2_2 = var2_2 + "m";
                } else if (var0[var4_7].equals("-s")) {
                    var2_2 = var2_2 + "s";
                } else if (var0[var4_7].equals("-u")) {
                    var2_2 = var2_2 + "u";
                } else if (var0[var4_7].equals("-w")) {
                    var2_2 = var2_2 + "w";
                } else if (var0[var4_7].equals("-X")) {
                    var2_2 = var2_2 + "X";
                } else {
                    System.err.println("Unknown option: " + var0[var4_7]);
                }
                ++var4_7;
            }
            var5_9 = new RegularExpression(var1_1, var2_2);
            System.out.println("RegularExpression: " + var5_9);
            var6_11 = new Match();
            var5_9.matches(var3_4, var6_11);
            var7_12 = 0;
            while (var7_12 < var6_11.getNumberOfGroups()) {
                if (var7_12 == 0) {
                    System.out.print("Matched range for the whole pattern: ");
                } else {
                    System.out.print("[" + var7_12 + "]: ");
                }
                if (var6_11.getBeginning(var7_12) < 0) {
                    System.out.println("-1");
                } else {
                    System.out.print(var6_11.getBeginning(var7_12) + ", " + var6_11.getEnd(var7_12) + ", ");
                    System.out.println("\"" + var6_11.getCapturedText(var7_12) + "\"");
                }
                ++var7_12;
            }
            return;
        }
        catch (ParseException var2_3) {
            if (var1_1 == null) {
                var2_3.printStackTrace();
                return;
            }
            System.err.println("org.apache.xerces.utils.regex.ParseException: " + var2_3.getMessage());
            var3_5 = "        ";
            System.err.println(var3_5 + var1_1);
            var4_8 = var2_3.getLocation();
            if (var4_8 < 0) return;
            System.err.print(var3_5);
            var5_10 = 0;
            ** while (var5_10 < var4_8)
        }
lbl-1000:
        // 1 sources

        {
            System.err.print("-");
            ++var5_10;
            continue;
        }
lbl74:
        // 1 sources

        System.err.println("^");
        return;
        catch (Exception var3_6) {
            var3_6.printStackTrace();
        }
    }

    public static RegularExpression createRegex(String string, String string2) throws ParseException {
        RegularExpression regularExpression = null;
        int n = REUtil.parseOptions(string2);
        RegularExpression[] regularExpressionArray = regexCache;
        synchronized (regularExpressionArray) {
            int n2 = 0;
            while (n2 < 20) {
                RegularExpression regularExpression2 = regexCache[n2];
                if (regularExpression2 == null) {
                    n2 = -1;
                    break;
                }
                if (regularExpression2.equals(string, n)) {
                    regularExpression = regularExpression2;
                    break;
                }
                ++n2;
            }
            if (regularExpression != null) {
                if (n2 != 0) {
                    System.arraycopy(regexCache, 0, regexCache, 1, n2);
                    REUtil.regexCache[0] = regularExpression;
                }
            } else {
                regularExpression = new RegularExpression(string, string2);
                System.arraycopy(regexCache, 0, regexCache, 1, 19);
                REUtil.regexCache[0] = regularExpression;
            }
        }
        return regularExpression;
    }

    public static boolean matches(String string, String string2) throws ParseException {
        return REUtil.createRegex(string, null).matches(string2);
    }

    public static boolean matches(String string, String string2, String string3) throws ParseException {
        return REUtil.createRegex(string, string2).matches(string3);
    }

    public static String quoteMeta(String string) {
        int n = string.length();
        StringBuffer stringBuffer = null;
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (".*+?{[()|\\^$".indexOf(c) >= 0) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(n2 + (n - n2) * 2);
                    if (n2 > 0) {
                        stringBuffer.append(string.substring(0, n2));
                    }
                }
                stringBuffer.append('\\');
                stringBuffer.append(c);
            } else if (stringBuffer != null) {
                stringBuffer.append(c);
            }
            ++n2;
        }
        return stringBuffer != null ? stringBuffer.toString() : string;
    }

    static void dumpString(String string) {
        int n = 0;
        while (n < string.length()) {
            System.out.print(Integer.toHexString(string.charAt(n)));
            System.out.print(" ");
            ++n;
        }
        System.out.println();
    }
}

