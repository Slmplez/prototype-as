/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.math.BigInteger;
import org.sat4j.reader.ParseFormatException;

public class EfficientScanner
implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final int TAILLE_BUF = 16384;
    private final transient BufferedInputStream in;
    private static final char EOF = '\uffff';
    private final char commentChar;

    public EfficientScanner(InputStream inputStream, char c) {
        this.in = new BufferedInputStream(inputStream, 16384);
        this.commentChar = c;
    }

    public EfficientScanner(InputStream inputStream) {
        this(inputStream, 'c');
    }

    public void close() throws IOException {
        this.in.close();
    }

    public void skipComments() throws IOException {
        char c;
        while ((c = this.currentChar()) == this.commentChar) {
            this.skipRestOfLine();
            if (c != '\uffff') continue;
            break;
        }
    }

    public int nextInt() throws IOException, ParseFormatException {
        int n = 0;
        boolean bl = false;
        char c = this.skipSpaces();
        if (c == '-') {
            bl = true;
            c = (char)this.in.read();
        } else if (c == '+') {
            c = (char)this.in.read();
        } else if (c >= '0' && c <= '9') {
            n = c - 48;
            c = (char)this.in.read();
        } else {
            throw new ParseFormatException("Unknown character " + c);
        }
        while (c >= '0' && c <= '9') {
            n = n * 10 + c - 48;
            c = (char)this.in.read();
        }
        if (c == '\r') {
            this.in.read();
        }
        return bl ? -n : n;
    }

    public BigInteger nextBigInteger() throws IOException, ParseFormatException {
        StringBuffer stringBuffer = new StringBuffer();
        char c = this.skipSpaces();
        if (c == '-') {
            stringBuffer.append(c);
            c = (char)this.in.read();
        } else if (c == '+') {
            c = (char)this.in.read();
        } else if (c >= '0' && c <= '9') {
            stringBuffer.append(c);
            c = (char)this.in.read();
        } else {
            throw new ParseFormatException("Unknown character " + c);
        }
        while (c >= '0' && c <= '9') {
            stringBuffer.append(c);
            c = (char)this.in.read();
        }
        return new BigInteger(stringBuffer.toString());
    }

    public String next() throws IOException, ParseFormatException {
        StringBuffer stringBuffer = new StringBuffer();
        char c = this.skipSpaces();
        while (c != ' ' && c != '\n') {
            stringBuffer.append(c);
            c = (char)this.in.read();
        }
        return stringBuffer.toString();
    }

    public char skipSpaces() throws IOException {
        char c;
        while ((c = (char)this.in.read()) == ' ' || c == '\n') {
        }
        return c;
    }

    public String nextLine() throws IOException {
        char c;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            c = (char)this.in.read();
            stringBuffer.append(c);
        } while (c != '\n' && c != '\uffff');
        return stringBuffer.toString();
    }

    public void skipRestOfLine() throws IOException {
        char c;
        while ((c = (char)this.in.read()) != '\n' && c != '\uffff') {
        }
    }

    public boolean eof() throws IOException {
        return this.currentChar() == '\uffff';
    }

    public char currentChar() throws IOException {
        this.in.mark(10);
        char c = (char)this.in.read();
        this.in.reset();
        return c;
    }
}

