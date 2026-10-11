/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Punycode;
import com.ibm.icu.text.StringPrep;
import com.ibm.icu.text.StringPrepParseException;
import com.ibm.icu.text.UCharacterIterator;

public final class IDNA {
    private static char[] ACE_PREFIX = new char[]{'x', 'n', '-', '-'};
    private static final int MAX_LABEL_LENGTH = 63;
    private static final int HYPHEN = 45;
    private static final int CAPITAL_A = 65;
    private static final int CAPITAL_Z = 90;
    private static final int LOWER_CASE_DELTA = 32;
    private static final int FULL_STOP = 46;
    private static final int MAX_DOMAIN_NAME_LENGTH = 255;
    public static final int DEFAULT = 0;
    public static final int ALLOW_UNASSIGNED = 1;
    public static final int USE_STD3_RULES = 2;
    private static final IDNA singleton = new IDNA();
    private StringPrep namePrep = StringPrep.getInstance(0);

    private IDNA() {
    }

    private static boolean startsWithPrefix(StringBuffer src) {
        boolean startsWithPrefix = true;
        if (src.length() < ACE_PREFIX.length) {
            return false;
        }
        int i = 0;
        while (i < ACE_PREFIX.length) {
            if (IDNA.toASCIILower(src.charAt(i)) != ACE_PREFIX[i]) {
                startsWithPrefix = false;
            }
            ++i;
        }
        return startsWithPrefix;
    }

    private static char toASCIILower(char ch) {
        if ('A' <= ch && ch <= 'Z') {
            return (char)(ch + 32);
        }
        return ch;
    }

    private static StringBuffer toASCIILower(StringBuffer src) {
        StringBuffer dest = new StringBuffer();
        int i = 0;
        while (i < src.length()) {
            dest.append(IDNA.toASCIILower(src.charAt(i)));
            ++i;
        }
        return dest;
    }

    private static int compareCaseInsensitiveASCII(StringBuffer s1, StringBuffer s2) {
        int i = 0;
        while (i != s1.length()) {
            int rc;
            char c2;
            char c1 = s1.charAt(i);
            if (c1 != (c2 = s2.charAt(i)) && (rc = IDNA.toASCIILower(c1) - IDNA.toASCIILower(c2)) != 0) {
                return rc;
            }
            ++i;
        }
        return 0;
    }

    private static int getSeparatorIndex(char[] src, int start, int limit) {
        while (start < limit) {
            if (IDNA.isLabelSeparator(src[start])) {
                return start;
            }
            ++start;
        }
        return start;
    }

    private static boolean isLDHChar(int ch) {
        if (ch > 122) {
            return false;
        }
        return ch == 45 || 48 <= ch && ch <= 57 || 65 <= ch && ch <= 90 || 97 <= ch && ch <= 122;
    }

    private static boolean isLabelSeparator(int ch) {
        switch (ch) {
            case 46: 
            case 12290: 
            case 65294: 
            case 65377: {
                return true;
            }
        }
        return false;
    }

    public static StringBuffer convertToASCII(String src, int options) throws StringPrepParseException {
        UCharacterIterator iter = UCharacterIterator.getInstance(src);
        return IDNA.convertToASCII(iter, options);
    }

    public static StringBuffer convertToASCII(StringBuffer src, int options) throws StringPrepParseException {
        UCharacterIterator iter = UCharacterIterator.getInstance(src);
        return IDNA.convertToASCII(iter, options);
    }

    public static StringBuffer convertToASCII(UCharacterIterator src, int options) throws StringPrepParseException {
        int ch;
        boolean[] caseFlags = null;
        boolean srcIsASCII = true;
        boolean srcIsLDH = true;
        boolean useSTD3ASCIIRules = (options & 2) != 0;
        while ((ch = src.next()) != -1) {
            if (ch <= 127) continue;
            srcIsASCII = false;
        }
        int failPos = -1;
        src.setToStart();
        StringBuffer processOut = null;
        processOut = !srcIsASCII ? IDNA.singleton.namePrep.prepare(src, options) : new StringBuffer(src.getText());
        int poLen = processOut.length();
        if (poLen == 0) {
            throw new StringPrepParseException("Found zero length lable after NamePrep.", 10);
        }
        StringBuffer dest = new StringBuffer();
        srcIsASCII = true;
        int j = 0;
        while (j < poLen) {
            ch = processOut.charAt(j);
            if (ch > 127) {
                srcIsASCII = false;
            } else if (!IDNA.isLDHChar(ch)) {
                srcIsLDH = false;
                failPos = j;
            }
            ++j;
        }
        if (useSTD3ASCIIRules && (!srcIsLDH || processOut.charAt(0) == '-' || processOut.charAt(processOut.length() - 1) == '-')) {
            if (!srcIsLDH) {
                throw new StringPrepParseException("The input does not conform to the STD 3 ASCII rules", 5, processOut.toString(), failPos > 0 ? failPos - 1 : failPos);
            }
            if (processOut.charAt(0) == '-') {
                throw new StringPrepParseException("The input does not conform to the STD 3 ASCII rules", 5, processOut.toString(), 0);
            }
            throw new StringPrepParseException("The input does not conform to the STD 3 ASCII rules", 5, processOut.toString(), poLen > 0 ? poLen - 1 : poLen);
        }
        if (srcIsASCII) {
            dest = processOut;
        } else if (!IDNA.startsWithPrefix(processOut)) {
            caseFlags = new boolean[poLen];
            StringBuffer punyout = Punycode.encode(processOut, caseFlags);
            StringBuffer lowerOut = IDNA.toASCIILower(punyout);
            dest.append(ACE_PREFIX, 0, ACE_PREFIX.length);
            dest.append(lowerOut);
        } else {
            throw new StringPrepParseException("The input does not start with the ACE Prefix.", 6, processOut.toString(), 0);
        }
        if (dest.length() > 63) {
            throw new StringPrepParseException("The labels in the input are too long. Length > 63.", 8, dest.toString(), 0);
        }
        return dest;
    }

    public static StringBuffer convertIDNToASCII(UCharacterIterator src, int options) throws StringPrepParseException {
        return IDNA.convertIDNToASCII(src.getText(), options);
    }

    public static StringBuffer convertIDNToASCII(StringBuffer src, int options) throws StringPrepParseException {
        return IDNA.convertIDNToASCII(src.toString(), options);
    }

    public static StringBuffer convertIDNToASCII(String src, int options) throws StringPrepParseException {
        char[] srcArr = src.toCharArray();
        StringBuffer result = new StringBuffer();
        int sepIndex = 0;
        int oldSepIndex = 0;
        while (true) {
            String label;
            if ((label = new String(srcArr, oldSepIndex, (sepIndex = IDNA.getSeparatorIndex(srcArr, sepIndex, srcArr.length)) - oldSepIndex)).length() != 0 || sepIndex != srcArr.length) {
                UCharacterIterator iter = UCharacterIterator.getInstance(label);
                result.append(IDNA.convertToASCII(iter, options));
            }
            if (sepIndex == srcArr.length) break;
            oldSepIndex = ++sepIndex;
            result.append('.');
        }
        if (result.length() > 255) {
            throw new StringPrepParseException("The output exceed the max allowed length.", 11);
        }
        return result;
    }

    public static StringBuffer convertToUnicode(String src, int options) throws StringPrepParseException {
        UCharacterIterator iter = UCharacterIterator.getInstance(src);
        return IDNA.convertToUnicode(iter, options);
    }

    public static StringBuffer convertToUnicode(StringBuffer src, int options) throws StringPrepParseException {
        UCharacterIterator iter = UCharacterIterator.getInstance(src);
        return IDNA.convertToUnicode(iter, options);
    }

    public static StringBuffer convertToUnicode(UCharacterIterator src, int options) throws StringPrepParseException {
        StringBuffer processOut;
        int ch;
        boolean[] caseFlags = null;
        boolean srcIsASCII = true;
        int saveIndex = src.getIndex();
        while ((ch = src.next()) != -1) {
            if (ch <= 127) continue;
            srcIsASCII = false;
        }
        if (!srcIsASCII) {
            try {
                src.setIndex(saveIndex);
                processOut = IDNA.singleton.namePrep.prepare(src, options);
            }
            catch (StringPrepParseException stringPrepParseException) {
                return new StringBuffer(src.getText());
            }
        } else {
            processOut = new StringBuffer(src.getText());
        }
        if (IDNA.startsWithPrefix(processOut)) {
            StringBuffer toASCIIOut;
            StringBuffer decodeOut = null;
            String temp = processOut.substring(ACE_PREFIX.length, processOut.length());
            try {
                decodeOut = Punycode.decode(new StringBuffer(temp), caseFlags);
            }
            catch (StringPrepParseException stringPrepParseException) {
                decodeOut = null;
            }
            if (decodeOut != null && IDNA.compareCaseInsensitiveASCII(processOut, toASCIIOut = IDNA.convertToASCII(decodeOut, options)) != 0) {
                decodeOut = null;
            }
            if (decodeOut != null) {
                return decodeOut;
            }
        }
        return new StringBuffer(src.getText());
    }

    public static StringBuffer convertIDNToUnicode(UCharacterIterator src, int options) throws StringPrepParseException {
        return IDNA.convertIDNToUnicode(src.getText(), options);
    }

    public static StringBuffer convertIDNToUnicode(StringBuffer src, int options) throws StringPrepParseException {
        return IDNA.convertIDNToUnicode(src.toString(), options);
    }

    public static StringBuffer convertIDNToUnicode(String src, int options) throws StringPrepParseException {
        char[] srcArr = src.toCharArray();
        StringBuffer result = new StringBuffer();
        int sepIndex = 0;
        int oldSepIndex = 0;
        while (true) {
            String label;
            if ((label = new String(srcArr, oldSepIndex, (sepIndex = IDNA.getSeparatorIndex(srcArr, sepIndex, srcArr.length)) - oldSepIndex)).length() == 0 && sepIndex != srcArr.length) {
                throw new StringPrepParseException("Found zero length lable after NamePrep.", 10);
            }
            UCharacterIterator iter = UCharacterIterator.getInstance(label);
            result.append(IDNA.convertToUnicode(iter, options));
            if (sepIndex == srcArr.length) break;
            result.append(srcArr[sepIndex]);
            oldSepIndex = ++sepIndex;
        }
        if (result.length() > 255) {
            throw new StringPrepParseException("The output exceed the max allowed length.", 11);
        }
        return result;
    }

    public static int compare(StringBuffer s1, StringBuffer s2, int options) throws StringPrepParseException {
        if (s1 == null || s2 == null) {
            throw new IllegalArgumentException("One of the source buffers is null");
        }
        StringBuffer s1Out = IDNA.convertIDNToASCII(s1.toString(), options);
        StringBuffer s2Out = IDNA.convertIDNToASCII(s2.toString(), options);
        return IDNA.compareCaseInsensitiveASCII(s1Out, s2Out);
    }

    public static int compare(String s1, String s2, int options) throws StringPrepParseException {
        if (s1 == null || s2 == null) {
            throw new IllegalArgumentException("One of the source buffers is null");
        }
        StringBuffer s1Out = IDNA.convertIDNToASCII(s1, options);
        StringBuffer s2Out = IDNA.convertIDNToASCII(s2, options);
        return IDNA.compareCaseInsensitiveASCII(s1Out, s2Out);
    }

    public static int compare(UCharacterIterator s1, UCharacterIterator s2, int options) throws StringPrepParseException {
        if (s1 == null || s2 == null) {
            throw new IllegalArgumentException("One of the source buffers is null");
        }
        StringBuffer s1Out = IDNA.convertIDNToASCII(s1.getText(), options);
        StringBuffer s2Out = IDNA.convertIDNToASCII(s2.getText(), options);
        return IDNA.compareCaseInsensitiveASCII(s1Out, s2Out);
    }
}

