/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.publisher;

import java.io.IOException;
import java.io.StreamTokenizer;
import java.io.StringReader;
import java.util.Enumeration;
import java.util.NoSuchElementException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QuotedTokenizer
implements Enumeration<String> {
    private StreamTokenizer tokenizer = null;

    public QuotedTokenizer(String str) {
        this(str, null);
    }

    public QuotedTokenizer(String str, String delim) {
        if (delim != null && delim.indexOf(34) > -1) {
            throw new IllegalArgumentException();
        }
        StringReader reader = new StringReader(str);
        this.tokenizer = new StreamTokenizer(reader);
        this.tokenizer.resetSyntax();
        if (delim == null) {
            this.tokenizer.ordinaryChars(0, 32);
        } else {
            this.tokenizer.wordChars(0, 32);
        }
        this.tokenizer.wordChars(33, 255);
        this.tokenizer.quoteChar(34);
        if (delim != null) {
            int i = 0;
            while (i < delim.length()) {
                this.tokenizer.ordinaryChar(delim.charAt(i));
                ++i;
            }
        }
    }

    public boolean hasMoreTokens() {
        return this.token(null) != -1;
    }

    public String nextToken() {
        StringBuffer buffer = new StringBuffer(10);
        int tokenType = this.token(buffer);
        if (tokenType == -1) {
            throw new NoSuchElementException();
        }
        return buffer.toString();
    }

    private int token(StringBuffer buffer) {
        int tokenType = 0;
        int next = 0;
        block8: while (true) {
            try {
                tokenType = this.tokenizer.nextToken();
            }
            catch (IOException iOException) {
                tokenType = -1;
            }
            switch (tokenType) {
                case -3: 
                case 34: {
                    if (buffer == null) {
                        this.tokenizer.pushBack();
                        return tokenType;
                    }
                    buffer.append(this.tokenizer.sval);
                    try {
                        next = this.tokenizer.nextToken();
                        this.tokenizer.pushBack();
                    }
                    catch (IOException iOException) {
                        next = -1;
                    }
                    if (next != 34) break block8;
                    continue block8;
                }
                case -1: {
                    break block8;
                }
                default: {
                    if (buffer != null && buffer.length() > 0) break block8;
                    continue block8;
                }
            }
            break;
        }
        return tokenType;
    }

    @Override
    public boolean hasMoreElements() {
        return this.hasMoreTokens();
    }

    @Override
    public String nextElement() {
        return this.nextToken();
    }
}

