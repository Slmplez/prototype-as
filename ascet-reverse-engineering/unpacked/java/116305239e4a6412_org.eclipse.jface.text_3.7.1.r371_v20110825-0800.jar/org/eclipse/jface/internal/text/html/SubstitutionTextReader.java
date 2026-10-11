/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.Reader;
import org.eclipse.jface.internal.text.html.SingleCharReader;

public abstract class SubstitutionTextReader
extends SingleCharReader {
    protected static final String LINE_DELIM = System.getProperty("line.separator", "\n");
    private Reader fReader;
    protected boolean fWasWhiteSpace;
    private int fCharAfterWhiteSpace;
    private boolean fSkipWhiteSpace = true;
    private boolean fReadFromBuffer;
    private StringBuffer fBuffer;
    private int fIndex;

    protected SubstitutionTextReader(Reader reader) {
        this.fReader = reader;
        this.fBuffer = new StringBuffer();
        this.fIndex = 0;
        this.fReadFromBuffer = false;
        this.fCharAfterWhiteSpace = -1;
        this.fWasWhiteSpace = true;
    }

    protected abstract String computeSubstitution(int var1) throws IOException;

    protected Reader getReader() {
        return this.fReader;
    }

    protected int nextChar() throws IOException {
        boolean bl = this.fReadFromBuffer = this.fBuffer.length() > 0;
        if (this.fReadFromBuffer) {
            char ch = this.fBuffer.charAt(this.fIndex++);
            if (this.fIndex >= this.fBuffer.length()) {
                this.fBuffer.setLength(0);
                this.fIndex = 0;
            }
            return ch;
        }
        int ch = this.fCharAfterWhiteSpace;
        if (ch == -1) {
            ch = this.fReader.read();
        }
        if (this.fSkipWhiteSpace && Character.isWhitespace((char)ch)) {
            while (Character.isWhitespace((char)(ch = this.fReader.read()))) {
            }
            if (ch != -1) {
                this.fCharAfterWhiteSpace = ch;
                return 32;
            }
        } else {
            this.fCharAfterWhiteSpace = -1;
        }
        return ch;
    }

    public int read() throws IOException {
        int c;
        block0: do {
            c = this.nextChar();
            while (!this.fReadFromBuffer) {
                String s = this.computeSubstitution(c);
                if (s == null) continue block0;
                if (s.length() > 0) {
                    this.fBuffer.insert(0, s);
                }
                c = this.nextChar();
            }
        } while (this.fSkipWhiteSpace && this.fWasWhiteSpace && c == 32);
        this.fWasWhiteSpace = c == 32 || c == 13 || c == 10;
        return c;
    }

    public boolean ready() throws IOException {
        return this.fReader.ready();
    }

    public void close() throws IOException {
        this.fReader.close();
    }

    public void reset() throws IOException {
        this.fReader.reset();
        this.fWasWhiteSpace = true;
        this.fCharAfterWhiteSpace = -1;
        this.fBuffer.setLength(0);
        this.fIndex = 0;
    }

    protected final void setSkipWhitespace(boolean state) {
        this.fSkipWhiteSpace = state;
    }

    protected final boolean isSkippingWhitespace() {
        return this.fSkipWhiteSpace;
    }
}

