/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import org.apache.xerces.impl.io.MalformedByteSequenceException;
import org.apache.xerces.util.MessageFormatter;

public class ASCIIReader
extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 2048;
    protected final InputStream fInputStream;
    protected final byte[] fBuffer;
    private final MessageFormatter fFormatter;
    private final Locale fLocale;

    public ASCIIReader(InputStream inputStream, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, 2048, messageFormatter, locale);
    }

    public ASCIIReader(InputStream inputStream, int n, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, new byte[n], messageFormatter, locale);
    }

    public ASCIIReader(InputStream inputStream, byte[] byArray, MessageFormatter messageFormatter, Locale locale) {
        this.fInputStream = inputStream;
        this.fBuffer = byArray;
        this.fFormatter = messageFormatter;
        this.fLocale = locale;
    }

    public int read() throws IOException {
        int n = this.fInputStream.read();
        if (n >= 128) {
            throw new MalformedByteSequenceException(this.fFormatter, this.fLocale, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidASCII", new Object[]{Integer.toString(n)});
        }
        return n;
    }

    public int read(char[] cArray, int n, int n2) throws IOException {
        if (n2 > this.fBuffer.length) {
            n2 = this.fBuffer.length;
        }
        int n3 = this.fInputStream.read(this.fBuffer, 0, n2);
        int n4 = 0;
        while (n4 < n3) {
            byte by = this.fBuffer[n4];
            if (by < 0) {
                throw new MalformedByteSequenceException(this.fFormatter, this.fLocale, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidASCII", new Object[]{Integer.toString(by & 0xFF)});
            }
            cArray[n + n4] = (char)by;
            ++n4;
        }
        return n3;
    }

    public long skip(long l) throws IOException {
        return this.fInputStream.skip(l);
    }

    public boolean ready() throws IOException {
        return false;
    }

    public boolean markSupported() {
        return this.fInputStream.markSupported();
    }

    public void mark(int n) throws IOException {
        this.fInputStream.mark(n);
    }

    public void reset() throws IOException {
        this.fInputStream.reset();
    }

    public void close() throws IOException {
        this.fInputStream.close();
    }
}

