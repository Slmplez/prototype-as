/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.CharsetDetector;
import com.ibm.icu.text.CharsetRecognizer;

abstract class CharsetRecog_2022
extends CharsetRecognizer {
    CharsetRecog_2022() {
    }

    int match(byte[] text, int textLen, byte[][] escapeSequences) {
        int hits = 0;
        int misses = 0;
        int shifts = 0;
        int i = 0;
        while (i < textLen) {
            block11: {
                if (text[i] == 27) {
                    int escN = 0;
                    while (escN < escapeSequences.length) {
                        block10: {
                            byte[] seq = escapeSequences[escN];
                            if (textLen - i >= seq.length) {
                                int j = 1;
                                while (j < seq.length) {
                                    if (seq[j] == text[i + j]) {
                                        ++j;
                                        continue;
                                    }
                                    break block10;
                                }
                                ++hits;
                                i += seq.length - 1;
                                break block11;
                            }
                        }
                        ++escN;
                    }
                    ++misses;
                }
                if (text[i] == 14 || text[i] == 15) {
                    ++shifts;
                }
            }
            ++i;
        }
        if (hits == 0) {
            return 0;
        }
        int quality = (100 * hits - 100 * misses) / (hits + misses);
        if (hits + shifts < 5) {
            quality -= (5 - (hits + shifts)) * 10;
        }
        if (quality < 0) {
            quality = 0;
        }
        return quality;
    }

    static class CharsetRecog_2022CN
    extends CharsetRecog_2022 {
        private byte[][] escapeSequences = new byte[][]{{27, 36, 41, 65}, {27, 36, 41, 71}, {27, 36, 42, 72}, {27, 36, 41, 69}, {27, 36, 43, 73}, {27, 36, 43, 74}, {27, 36, 43, 75}, {27, 36, 43, 76}, {27, 36, 43, 77}, {27, 78}, {27, 79}};

        CharsetRecog_2022CN() {
        }

        String getName() {
            return "ISO-2022-CN";
        }

        int match(CharsetDetector det) {
            return this.match(det.fInputBytes, det.fInputLen, this.escapeSequences);
        }
    }

    static class CharsetRecog_2022JP
    extends CharsetRecog_2022 {
        private byte[][] escapeSequences = new byte[][]{{27, 36, 40, 67}, {27, 36, 40, 68}, {27, 36, 64}, {27, 36, 65}, {27, 36, 66}, {27, 38, 64}, {27, 40, 66}, {27, 40, 72}, {27, 40, 73}, {27, 40, 74}, {27, 46, 65}, {27, 46, 70}};

        CharsetRecog_2022JP() {
        }

        String getName() {
            return "ISO-2022-JP";
        }

        int match(CharsetDetector det) {
            return this.match(det.fInputBytes, det.fInputLen, this.escapeSequences);
        }
    }

    static class CharsetRecog_2022KR
    extends CharsetRecog_2022 {
        private byte[][] escapeSequences = new byte[][]{{27, 36, 41, 67}};

        CharsetRecog_2022KR() {
        }

        String getName() {
            return "ISO-2022-KR";
        }

        int match(CharsetDetector det) {
            return this.match(det.fInputBytes, det.fInputLen, this.escapeSequences);
        }
    }
}

