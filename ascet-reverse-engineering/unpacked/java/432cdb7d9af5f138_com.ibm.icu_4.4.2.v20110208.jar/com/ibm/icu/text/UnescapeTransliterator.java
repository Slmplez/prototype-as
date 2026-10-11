/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.Replaceable;
import com.ibm.icu.text.Transliterator;
import com.ibm.icu.text.UTF16;

class UnescapeTransliterator
extends Transliterator {
    private char[] spec;
    private static final char END = '\uffff';

    static void register() {
        Transliterator.registerFactory("Hex-Any/Unicode", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                char[] cArray = new char[8];
                cArray[0] = 2;
                cArray[2] = 16;
                cArray[3] = 4;
                cArray[4] = 6;
                cArray[5] = 85;
                cArray[6] = 43;
                cArray[7] = 65535;
                return new UnescapeTransliterator("Hex-Any/Unicode", cArray);
            }
        });
        Transliterator.registerFactory("Hex-Any/Java", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                char[] cArray = new char[8];
                cArray[0] = 2;
                cArray[2] = 16;
                cArray[3] = 4;
                cArray[4] = 4;
                cArray[5] = 92;
                cArray[6] = 117;
                cArray[7] = 65535;
                return new UnescapeTransliterator("Hex-Any/Java", cArray);
            }
        });
        Transliterator.registerFactory("Hex-Any/C", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                char[] cArray = new char[15];
                cArray[0] = 2;
                cArray[2] = 16;
                cArray[3] = 4;
                cArray[4] = 4;
                cArray[5] = 92;
                cArray[6] = 117;
                cArray[7] = 2;
                cArray[9] = 16;
                cArray[10] = 8;
                cArray[11] = 8;
                cArray[12] = 92;
                cArray[13] = 85;
                cArray[14] = 65535;
                return new UnescapeTransliterator("Hex-Any/C", cArray);
            }
        });
        Transliterator.registerFactory("Hex-Any/XML", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new UnescapeTransliterator("Hex-Any/XML", new char[]{'\u0003', '\u0001', '\u0010', '\u0001', '\u0006', '&', '#', 'x', ';', '\uffff'});
            }
        });
        Transliterator.registerFactory("Hex-Any/XML10", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new UnescapeTransliterator("Hex-Any/XML10", new char[]{'\u0002', '\u0001', '\n', '\u0001', '\u0007', '&', '#', ';', '\uffff'});
            }
        });
        Transliterator.registerFactory("Hex-Any/Perl", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                return new UnescapeTransliterator("Hex-Any/Perl", new char[]{'\u0003', '\u0001', '\u0010', '\u0001', '\u0006', '\\', 'x', '{', '}', '\uffff'});
            }
        });
        Transliterator.registerFactory("Hex-Any", new Transliterator.Factory(){

            public Transliterator getInstance(String ID) {
                char[] cArray = new char[48];
                cArray[0] = 2;
                cArray[2] = 16;
                cArray[3] = 4;
                cArray[4] = 6;
                cArray[5] = 85;
                cArray[6] = 43;
                cArray[7] = 2;
                cArray[9] = 16;
                cArray[10] = 4;
                cArray[11] = 4;
                cArray[12] = 92;
                cArray[13] = 117;
                cArray[14] = 2;
                cArray[16] = 16;
                cArray[17] = 8;
                cArray[18] = 8;
                cArray[19] = 92;
                cArray[20] = 85;
                cArray[21] = 3;
                cArray[22] = '\u0001';
                cArray[23] = 16;
                cArray[24] = '\u0001';
                cArray[25] = 6;
                cArray[26] = 38;
                cArray[27] = 35;
                cArray[28] = 120;
                cArray[29] = 59;
                cArray[30] = 2;
                cArray[31] = '\u0001';
                cArray[32] = 10;
                cArray[33] = '\u0001';
                cArray[34] = 7;
                cArray[35] = 38;
                cArray[36] = 35;
                cArray[37] = 59;
                cArray[38] = 3;
                cArray[39] = '\u0001';
                cArray[40] = 16;
                cArray[41] = '\u0001';
                cArray[42] = 6;
                cArray[43] = 92;
                cArray[44] = 120;
                cArray[45] = 123;
                cArray[46] = 125;
                cArray[47] = 65535;
                return new UnescapeTransliterator("Hex-Any", cArray);
            }
        });
    }

    UnescapeTransliterator(String ID, char[] spec) {
        super(ID, null);
        this.spec = spec;
    }

    protected void handleTransliterate(Replaceable text, Transliterator.Position pos, boolean isIncremental) {
        int start = pos.start;
        int limit = pos.limit;
        block0: while (start < limit) {
            int ipat = 0;
            while (this.spec[ipat] != '\uffff') {
                int prefixLen = this.spec[ipat++];
                char suffixLen = this.spec[ipat++];
                char radix = this.spec[ipat++];
                int minDigits = this.spec[ipat++];
                char maxDigits = this.spec[ipat++];
                int s = start;
                boolean match = true;
                int i = 0;
                while (i < prefixLen) {
                    char c;
                    if (s >= limit && i > 0) {
                        if (isIncremental) break block0;
                        match = false;
                        break;
                    }
                    if ((c = text.charAt(s++)) != this.spec[ipat + i]) {
                        match = false;
                        break;
                    }
                    ++i;
                }
                if (match) {
                    int u = 0;
                    int digitCount = 0;
                    do {
                        if (s >= limit) {
                            if (s <= start || !isIncremental) break;
                            break block0;
                        }
                        int ch = text.char32At(s);
                        int digit = UCharacter.digit(ch, radix);
                        if (digit < 0) break;
                        s += UTF16.getCharCount(ch);
                        u = u * radix + digit;
                    } while (++digitCount != maxDigits);
                    boolean bl = match = digitCount >= minDigits;
                    if (match) {
                        i = 0;
                        while (i < suffixLen) {
                            char c;
                            if (s >= limit) {
                                if (s > start && isIncremental) break block0;
                                match = false;
                                break;
                            }
                            if ((c = text.charAt(s++)) != this.spec[ipat + prefixLen + i]) {
                                match = false;
                                break;
                            }
                            ++i;
                        }
                        if (match) {
                            String str = UTF16.valueOf(u);
                            text.replace(start, s, str);
                            limit -= s - start - str.length();
                            break;
                        }
                    }
                }
                ipat += prefixLen + suffixLen;
            }
            if (start >= limit) continue;
            start += UTF16.getCharCount(text.char32At(start));
        }
        pos.contextLimit += limit - pos.limit;
        pos.limit = limit;
        pos.start = start;
    }
}

