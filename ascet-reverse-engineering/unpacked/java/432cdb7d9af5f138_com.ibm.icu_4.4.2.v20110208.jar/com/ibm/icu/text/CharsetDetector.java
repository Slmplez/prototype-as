/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.CharsetMatch;
import com.ibm.icu.text.CharsetRecog_2022;
import com.ibm.icu.text.CharsetRecog_UTF8;
import com.ibm.icu.text.CharsetRecog_Unicode;
import com.ibm.icu.text.CharsetRecog_mbcs;
import com.ibm.icu.text.CharsetRecog_sbcs;
import com.ibm.icu.text.CharsetRecognizer;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CharsetDetector {
    private static final int kBufSize = 8000;
    byte[] fInputBytes = new byte[8000];
    int fInputLen;
    short[] fByteStats = new short[256];
    boolean fC1Bytes = false;
    String fDeclaredEncoding;
    byte[] fRawInput;
    int fRawLength;
    InputStream fInputStream;
    boolean fStripTags = false;
    private static ArrayList<CharsetRecognizer> fCSRecognizers = CharsetDetector.createRecognizers();
    private static String[] fCharsetNames;

    public CharsetDetector setDeclaredEncoding(String encoding) {
        this.fDeclaredEncoding = encoding;
        return this;
    }

    public CharsetDetector setText(byte[] in) {
        this.fRawInput = in;
        this.fRawLength = in.length;
        this.MungeInput();
        return this;
    }

    public CharsetDetector setText(InputStream in) throws IOException {
        this.fInputStream = in;
        this.fInputStream.mark(8000);
        this.fRawInput = new byte[8000];
        this.fRawLength = 0;
        int remainingLength = 8000;
        while (remainingLength > 0) {
            int bytesRead = this.fInputStream.read(this.fRawInput, this.fRawLength, remainingLength);
            if (bytesRead <= 0) break;
            this.fRawLength += bytesRead;
            remainingLength -= bytesRead;
        }
        this.fInputStream.reset();
        this.MungeInput();
        return this;
    }

    public CharsetMatch detect() {
        CharsetMatch[] matches = this.detectAll();
        if (matches == null || matches.length == 0) {
            return null;
        }
        return matches[0];
    }

    public CharsetMatch[] detectAll() {
        ArrayList<CharsetMatch> matches = new ArrayList<CharsetMatch>();
        int i = 0;
        while (i < fCSRecognizers.size()) {
            CharsetRecognizer csr = fCSRecognizers.get(i);
            int detectResults = csr.match(this);
            int confidence = detectResults & 0xFF;
            if (confidence > 0) {
                CharsetMatch m = new CharsetMatch(this, csr, confidence);
                matches.add(m);
            }
            ++i;
        }
        Collections.sort(matches);
        Collections.reverse(matches);
        CharsetMatch[] resultArray = new CharsetMatch[matches.size()];
        resultArray = matches.toArray(resultArray);
        return resultArray;
    }

    public Reader getReader(InputStream in, String declaredEncoding) {
        CharsetMatch match;
        block3: {
            this.fDeclaredEncoding = declaredEncoding;
            try {
                this.setText(in);
                match = this.detect();
                if (match != null) break block3;
                return null;
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return match.getReader();
    }

    public String getString(byte[] in, String declaredEncoding) {
        CharsetMatch match;
        block3: {
            this.fDeclaredEncoding = declaredEncoding;
            try {
                this.setText(in);
                match = this.detect();
                if (match != null) break block3;
                return null;
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return match.getString(-1);
    }

    public static String[] getAllDetectableCharsets() {
        return fCharsetNames;
    }

    public boolean inputFilterEnabled() {
        return this.fStripTags;
    }

    public boolean enableInputFilter(boolean filter) {
        boolean previous = this.fStripTags;
        this.fStripTags = filter;
        return previous;
    }

    private void MungeInput() {
        int srci = 0;
        int dsti = 0;
        boolean inMarkup = false;
        int openTags = 0;
        int badTags = 0;
        if (this.fStripTags) {
            srci = 0;
            while (srci < this.fRawLength && dsti < this.fInputBytes.length) {
                byte b = this.fRawInput[srci];
                if (b == 60) {
                    if (inMarkup) {
                        ++badTags;
                    }
                    inMarkup = true;
                    ++openTags;
                }
                if (!inMarkup) {
                    this.fInputBytes[dsti++] = b;
                }
                if (b == 62) {
                    inMarkup = false;
                }
                ++srci;
            }
            this.fInputLen = dsti;
        }
        if (openTags < 5 || openTags / 5 < badTags || this.fInputLen < 100 && this.fRawLength > 600) {
            int limit = this.fRawLength;
            if (limit > 8000) {
                limit = 8000;
            }
            srci = 0;
            while (srci < limit) {
                this.fInputBytes[srci] = this.fRawInput[srci];
                ++srci;
            }
            this.fInputLen = srci;
        }
        Arrays.fill(this.fByteStats, (short)0);
        srci = 0;
        while (srci < this.fInputLen) {
            int val;
            int n = val = this.fInputBytes[srci] & 0xFF;
            this.fByteStats[n] = (short)(this.fByteStats[n] + 1);
            ++srci;
        }
        this.fC1Bytes = false;
        int i = 128;
        while (i <= 159) {
            if (this.fByteStats[i] != 0) {
                this.fC1Bytes = true;
                break;
            }
            ++i;
        }
    }

    private static ArrayList<CharsetRecognizer> createRecognizers() {
        ArrayList<CharsetRecognizer> recognizers = new ArrayList<CharsetRecognizer>();
        recognizers.add(new CharsetRecog_UTF8());
        recognizers.add(new CharsetRecog_Unicode.CharsetRecog_UTF_16_BE());
        recognizers.add(new CharsetRecog_Unicode.CharsetRecog_UTF_16_LE());
        recognizers.add(new CharsetRecog_Unicode.CharsetRecog_UTF_32_BE());
        recognizers.add(new CharsetRecog_Unicode.CharsetRecog_UTF_32_LE());
        recognizers.add(new CharsetRecog_mbcs.CharsetRecog_sjis());
        recognizers.add(new CharsetRecog_2022.CharsetRecog_2022JP());
        recognizers.add(new CharsetRecog_2022.CharsetRecog_2022CN());
        recognizers.add(new CharsetRecog_2022.CharsetRecog_2022KR());
        recognizers.add(new CharsetRecog_mbcs.CharsetRecog_gb_18030());
        recognizers.add(new CharsetRecog_mbcs.CharsetRecog_euc.CharsetRecog_euc_jp());
        recognizers.add(new CharsetRecog_mbcs.CharsetRecog_euc.CharsetRecog_euc_kr());
        recognizers.add(new CharsetRecog_mbcs.CharsetRecog_big5());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_da());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_de());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_en());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_es());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_fr());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_it());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_nl());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_no());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_pt());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_1_sv());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_2_cs());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_2_hu());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_2_pl());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_2_ro());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_5_ru());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_6_ar());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_7_el());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_8_I_he());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_8_he());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_windows_1251());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_windows_1256());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_KOI8_R());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_8859_9_tr());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_IBM424_he_rtl());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_IBM424_he_ltr());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_IBM420_ar_rtl());
        recognizers.add(new CharsetRecog_sbcs.CharsetRecog_IBM420_ar_ltr());
        String[] charsetNames = new String[recognizers.size()];
        int out = 0;
        int i = 0;
        while (i < recognizers.size()) {
            String name = ((CharsetRecognizer)recognizers.get(i)).getName();
            if (out == 0 || !name.equals(charsetNames[out - 1])) {
                charsetNames[out++] = name;
            }
            ++i;
        }
        fCharsetNames = new String[out];
        System.arraycopy(charsetNames, 0, fCharsetNames, 0, out);
        return recognizers;
    }
}

