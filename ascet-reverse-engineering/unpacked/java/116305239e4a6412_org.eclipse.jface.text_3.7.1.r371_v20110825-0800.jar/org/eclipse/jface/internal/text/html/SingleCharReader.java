/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.Reader;

public abstract class SingleCharReader
extends Reader {
    public abstract int read() throws IOException;

    public int read(char[] cbuf, int off, int len) throws IOException {
        int end = off + len;
        int i = off;
        while (i < end) {
            int ch = this.read();
            if (ch == -1) {
                if (i == off) {
                    return -1;
                }
                return i - off;
            }
            cbuf[i] = (char)ch;
            ++i;
        }
        return len;
    }

    public boolean ready() throws IOException {
        return true;
    }

    public String getString() throws IOException {
        int ch;
        StringBuffer buf = new StringBuffer();
        while ((ch = this.read()) != -1) {
            buf.append((char)ch);
        }
        return buf.toString();
    }
}

