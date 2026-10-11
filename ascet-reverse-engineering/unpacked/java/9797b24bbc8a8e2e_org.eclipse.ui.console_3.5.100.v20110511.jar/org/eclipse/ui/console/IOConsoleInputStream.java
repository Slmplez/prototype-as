/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.ui.console;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.swt.graphics.Color;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IOConsole;

public class IOConsoleInputStream
extends InputStream {
    private byte[] input = new byte[100];
    private int inPointer = 0;
    private int outPointer = 0;
    private int size = 0;
    private boolean eofSent = false;
    private boolean closed = false;
    private IOConsole console;
    private Color color;
    private int fontStyle = 0;

    IOConsoleInputStream(IOConsole console) {
        this.console = console;
    }

    public synchronized int read(byte[] b, int off, int len) throws IOException {
        this.waitForData();
        if (this.available() == -1) {
            return -1;
        }
        int toCopy = Math.min(len, this.size);
        if (this.input.length - this.outPointer > toCopy) {
            System.arraycopy(this.input, this.outPointer, b, off, toCopy);
            this.outPointer += toCopy;
            this.size -= toCopy;
        } else {
            int bytesToEnd = this.input.length - this.outPointer;
            System.arraycopy(this.input, this.outPointer, b, off, bytesToEnd);
            System.arraycopy(this.input, 0, b, off + bytesToEnd, toCopy - bytesToEnd);
            this.outPointer = toCopy - bytesToEnd;
            this.size -= toCopy;
        }
        return toCopy;
    }

    public int read(byte[] b) throws IOException {
        return this.read(b, 0, b.length);
    }

    public synchronized int read() throws IOException {
        this.waitForData();
        if (this.available() == -1) {
            return -1;
        }
        byte b = this.input[this.outPointer];
        ++this.outPointer;
        if (this.outPointer == this.input.length) {
            this.outPointer = 0;
        }
        --this.size;
        return b;
    }

    private void waitForData() {
        while (this.size == 0 && !this.closed) {
            try {
                this.wait();
            }
            catch (InterruptedException interruptedException) {}
        }
    }

    public synchronized void appendData(String text) {
        byte[] newData;
        String encoding = this.console.getEncoding();
        if (encoding != null) {
            try {
                newData = text.getBytes(encoding);
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                newData = text.getBytes();
            }
        } else {
            newData = text.getBytes();
        }
        while (this.input.length - this.size < newData.length) {
            this.growArray();
        }
        if (this.size == 0) {
            System.arraycopy(newData, 0, this.input, 0, newData.length);
            this.inPointer = newData.length;
            this.size = newData.length;
            this.outPointer = 0;
        } else if (this.inPointer < this.outPointer || this.input.length - this.inPointer > newData.length) {
            System.arraycopy(newData, 0, this.input, this.inPointer, newData.length);
            this.inPointer += newData.length;
            this.size += newData.length;
        } else {
            System.arraycopy(newData, 0, this.input, this.inPointer, this.input.length - this.inPointer);
            System.arraycopy(newData, this.input.length - this.inPointer, this.input, 0, newData.length - (this.input.length - this.inPointer));
            this.inPointer = newData.length - (this.input.length - this.inPointer);
            this.size += newData.length;
        }
        if (this.inPointer == this.input.length) {
            this.inPointer = 0;
        }
        this.notifyAll();
    }

    private void growArray() {
        byte[] newInput = new byte[this.input.length + 1024];
        if (this.outPointer < this.inPointer) {
            System.arraycopy(this.input, this.outPointer, newInput, 0, this.size);
        } else {
            System.arraycopy(this.input, this.outPointer, newInput, 0, this.input.length - this.outPointer);
            System.arraycopy(this.input, 0, newInput, this.input.length - this.outPointer, this.inPointer);
        }
        this.outPointer = 0;
        this.inPointer = this.size;
        this.input = newInput;
        newInput = null;
    }

    public int getFontStyle() {
        return this.fontStyle;
    }

    public void setFontStyle(int newFontStyle) {
        if (newFontStyle != this.fontStyle) {
            int old = this.fontStyle;
            this.fontStyle = newFontStyle;
            this.console.firePropertyChange(this, IConsoleConstants.P_FONT_STYLE, new Integer(old), new Integer(this.fontStyle));
        }
    }

    public void setColor(Color newColor) {
        Color old = this.color;
        if (old == null || !old.equals((Object)newColor)) {
            this.color = newColor;
            this.console.firePropertyChange(this, IConsoleConstants.P_STREAM_COLOR, old, newColor);
        }
    }

    public Color getColor() {
        return this.color;
    }

    public int available() throws IOException {
        if (this.closed && this.eofSent) {
            throw new IOException("Input Stream Closed");
        }
        if (this.size == 0) {
            if (!this.eofSent) {
                this.eofSent = true;
                return -1;
            }
            throw new IOException("Input Stream Closed");
        }
        return this.size;
    }

    public synchronized void close() throws IOException {
        if (this.closed) {
            throw new IOException("Input Stream Closed");
        }
        this.closed = true;
        this.notifyAll();
        this.console.streamClosed(this);
    }
}

