/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serializer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import org.apache.xml.serializer.WriterChain;

class WriterToASCI
extends Writer
implements WriterChain {
    private final OutputStream m_os;

    public WriterToASCI(OutputStream os) {
        this.m_os = os;
    }

    public void write(char[] chars, int start, int length) throws IOException {
        int n = length + start;
        int i = start;
        while (i < n) {
            this.m_os.write(chars[i]);
            ++i;
        }
    }

    public void write(int c) throws IOException {
        this.m_os.write(c);
    }

    public void write(String s) throws IOException {
        int n = s.length();
        int i = 0;
        while (i < n) {
            this.m_os.write(s.charAt(i));
            ++i;
        }
    }

    public void flush() throws IOException {
        this.m_os.flush();
    }

    public void close() throws IOException {
        this.m_os.close();
    }

    public OutputStream getOutputStream() {
        return this.m_os;
    }

    public Writer getWriter() {
        return null;
    }
}

