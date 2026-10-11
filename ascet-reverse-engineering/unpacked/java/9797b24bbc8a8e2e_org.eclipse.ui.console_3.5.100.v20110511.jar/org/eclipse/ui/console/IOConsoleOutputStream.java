/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.ui.WorkbenchEncoding
 */
package org.eclipse.ui.console;

import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.swt.graphics.Color;
import org.eclipse.ui.WorkbenchEncoding;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IOConsole;
import org.eclipse.ui.internal.console.IOConsolePartitioner;

public class IOConsoleOutputStream
extends OutputStream {
    private boolean closed = false;
    private IOConsolePartitioner partitioner;
    private IOConsole console;
    private boolean activateOnWrite = false;
    private Color color;
    private int fontStyle;
    private String fEncoding;
    private String fDefaultEncoding = WorkbenchEncoding.getWorkbenchDefaultEncoding();
    private boolean fNeedsEncoding = false;
    private boolean prependCR;

    IOConsoleOutputStream(IOConsole console) {
        this.console = console;
        this.partitioner = (IOConsolePartitioner)console.getPartitioner();
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

    public boolean isActivateOnWrite() {
        return this.activateOnWrite;
    }

    public void setActivateOnWrite(boolean activateOnWrite) {
        this.activateOnWrite = activateOnWrite;
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

    public synchronized boolean isClosed() {
        return this.closed;
    }

    public synchronized void close() throws IOException {
        if (this.closed) {
            throw new IOException("Output Stream is closed");
        }
        if (this.prependCR) {
            this.prependCR = false;
            this.notifyParitioner("\r");
        }
        this.console.streamClosed(this);
        this.closed = true;
        this.partitioner = null;
    }

    public void flush() throws IOException {
        if (this.closed) {
            throw new IOException("Output Stream is closed");
        }
    }

    public void write(byte[] b, int off, int len) throws IOException {
        if (this.fNeedsEncoding) {
            this.encodedWrite(new String(b, off, len, this.fEncoding));
        } else {
            this.encodedWrite(new String(b, off, len));
        }
    }

    public void write(byte[] b) throws IOException {
        this.write(b, 0, b.length);
    }

    public void write(int b) throws IOException {
        this.write(new byte[]{(byte)b}, 0, 1);
    }

    public synchronized void write(String str) throws IOException {
        if (this.fNeedsEncoding) {
            byte[] defaultBytes = str.getBytes();
            str = new String(defaultBytes, this.fEncoding);
        }
        this.encodedWrite(str);
    }

    private void encodedWrite(String encodedString) throws IOException {
        if (this.closed) {
            throw new IOException("Output Stream is closed");
        }
        if (this.prependCR) {
            encodedString = "\r" + encodedString;
            this.prependCR = false;
        }
        if (encodedString.endsWith("\r")) {
            this.prependCR = true;
            encodedString = new String(encodedString.substring(0, encodedString.length() - 1));
        }
        this.notifyParitioner(encodedString);
    }

    private void notifyParitioner(String encodedString) throws IOException {
        try {
            this.partitioner.streamAppended(this, encodedString);
            if (this.activateOnWrite) {
                this.console.activate();
            } else {
                ConsolePlugin.getDefault().getConsoleManager().warnOfContentChange(this.console);
            }
        }
        catch (IOException e) {
            if (!this.closed) {
                this.close();
            }
            throw e;
        }
    }

    public void setEncoding(String encoding) {
        this.fEncoding = encoding;
        this.fNeedsEncoding = this.fEncoding != null && !this.fEncoding.equals(this.fDefaultEncoding);
    }
}

