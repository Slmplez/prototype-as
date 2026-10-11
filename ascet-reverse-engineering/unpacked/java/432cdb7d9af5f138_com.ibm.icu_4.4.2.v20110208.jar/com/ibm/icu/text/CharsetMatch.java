/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.CharsetDetector;
import com.ibm.icu.text.CharsetRecognizer;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CharsetMatch
implements Comparable<CharsetMatch> {
    public static final int ENCODING_SCHEME = 1;
    public static final int BOM = 2;
    public static final int DECLARED_ENCODING = 4;
    public static final int LANG_STATISTICS = 8;
    private int fConfidence;
    private CharsetRecognizer fRecognizer;
    private byte[] fRawInput = null;
    private int fRawLength;
    private InputStream fInputStream = null;

    public Reader getReader() {
        InputStream inputStream = this.fInputStream;
        if (inputStream == null) {
            inputStream = new ByteArrayInputStream(this.fRawInput, 0, this.fRawLength);
        }
        try {
            inputStream.reset();
            return new InputStreamReader(inputStream, this.getName());
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public String getString() throws IOException {
        return this.getString(-1);
    }

    public String getString(int maxLength) throws IOException {
        String result = null;
        if (this.fInputStream != null) {
            StringBuilder sb = new StringBuilder();
            char[] buffer = new char[1024];
            Reader reader = this.getReader();
            int max = maxLength < 0 ? Integer.MAX_VALUE : maxLength;
            int bytesRead = 0;
            while ((bytesRead = reader.read(buffer, 0, Math.min(max, 1024))) >= 0) {
                sb.append(buffer, 0, bytesRead);
                max -= bytesRead;
            }
            reader.close();
            return sb.toString();
        }
        result = new String(this.fRawInput, this.getName());
        return result;
    }

    public int getConfidence() {
        return this.fConfidence;
    }

    public int getMatchType() {
        return 0;
    }

    public String getName() {
        return this.fRecognizer.getName();
    }

    public String getLanguage() {
        return this.fRecognizer.getLanguage();
    }

    @Override
    public int compareTo(CharsetMatch other) {
        int compareResult = 0;
        if (this.fConfidence > other.fConfidence) {
            compareResult = 1;
        } else if (this.fConfidence < other.fConfidence) {
            compareResult = -1;
        }
        return compareResult;
    }

    CharsetMatch(CharsetDetector det, CharsetRecognizer rec, int conf) {
        this.fRecognizer = rec;
        this.fConfidence = conf;
        if (det.fInputStream == null) {
            this.fRawInput = det.fRawInput;
            this.fRawLength = det.fRawLength;
        }
        this.fInputStream = det.fInputStream;
    }
}

