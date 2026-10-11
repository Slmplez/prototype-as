/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

import org.eclipse.swt.internal.win32.OS;

public class TCHAR {
    int codePage;
    public char[] chars;
    public byte[] bytes;
    int byteCount;
    public static final int sizeof = OS.IsUnicode ? 2 : 1;

    public TCHAR(int codePage, int length) {
        this.codePage = codePage;
        if (OS.IsUnicode) {
            this.chars = new char[length];
        } else {
            this.byteCount = length;
            this.bytes = new byte[this.byteCount];
        }
    }

    public TCHAR(int codePage, char ch, boolean terminate) {
        char[] cArray;
        if (terminate) {
            char[] cArray2 = new char[2];
            cArray = cArray2;
            cArray2[0] = ch;
        } else {
            char[] cArray3 = new char[1];
            cArray = cArray3;
            cArray3[0] = ch;
        }
        this(codePage, cArray, false);
    }

    public TCHAR(int codePage, char[] chars, boolean terminate) {
        this.codePage = codePage;
        int charCount = chars.length;
        if (OS.IsUnicode) {
            if (terminate && (charCount == 0 || charCount > 0 && chars[charCount - 1] != '\u0000')) {
                char[] newChars = new char[charCount + 1];
                System.arraycopy(chars, 0, newChars, 0, charCount);
                chars = newChars;
            }
            this.chars = chars;
        } else {
            int cp = codePage != 0 ? codePage : 0;
            this.byteCount = charCount * 2 + (terminate ? 1 : 0);
            this.bytes = new byte[this.byteCount];
            this.byteCount = OS.WideCharToMultiByte(cp, 0, chars, charCount, this.bytes, this.byteCount, null, null);
            if (terminate) {
                ++this.byteCount;
            }
        }
    }

    public TCHAR(int codePage, String string, boolean terminate) {
        this(codePage, TCHAR.getChars(string, terminate), false);
    }

    static char[] getChars(String string, boolean terminate) {
        int length = string.length();
        char[] chars = new char[length + (terminate ? 1 : 0)];
        string.getChars(0, length, chars, 0);
        return chars;
    }

    public int length() {
        if (OS.IsUnicode) {
            return this.chars.length;
        }
        return this.byteCount;
    }

    public int strlen() {
        if (OS.IsUnicode) {
            int i = 0;
            while (i < this.chars.length) {
                if (this.chars[i] == '\u0000') {
                    return i;
                }
                ++i;
            }
            return this.chars.length;
        }
        int i = 0;
        while (i < this.byteCount) {
            if (this.bytes[i] == 0) {
                return i;
            }
            ++i;
        }
        return this.byteCount;
    }

    public int tcharAt(int index) {
        if (OS.IsUnicode) {
            return this.chars[index];
        }
        int ch = this.bytes[index] & 0xFF;
        if (OS.IsDBCSLeadByte((byte)ch)) {
            ch = ch << 8 | this.bytes[index + 1] & 0xFF;
        }
        return ch;
    }

    public String toString() {
        return this.toString(0, this.length());
    }

    public String toString(int start, int length) {
        if (OS.IsUnicode) {
            return new String(this.chars, start, length);
        }
        byte[] bytes = this.bytes;
        if (start != 0) {
            bytes = new byte[length];
            System.arraycopy(this.bytes, start, bytes, 0, length);
        }
        char[] chars = new char[length];
        int cp = this.codePage != 0 ? this.codePage : 0;
        int charCount = OS.MultiByteToWideChar(cp, 1, bytes, length, chars, length);
        return new String(chars, 0, charCount);
    }
}

