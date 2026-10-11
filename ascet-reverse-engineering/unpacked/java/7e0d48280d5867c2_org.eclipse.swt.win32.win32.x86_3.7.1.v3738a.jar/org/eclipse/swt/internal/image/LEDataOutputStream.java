/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.OutputStream;

final class LEDataOutputStream
extends OutputStream {
    OutputStream out;

    public LEDataOutputStream(OutputStream output) {
        this.out = output;
    }

    public void write(byte[] b, int off, int len) throws IOException {
        this.out.write(b, off, len);
    }

    public void write(int b) throws IOException {
        this.out.write(b);
    }

    public void writeByte(byte b) throws IOException {
        this.out.write(b & 0xFF);
    }

    public void writeInt(int theInt) throws IOException {
        this.out.write(theInt & 0xFF);
        this.out.write(theInt >> 8 & 0xFF);
        this.out.write(theInt >> 16 & 0xFF);
        this.out.write(theInt >> 24 & 0xFF);
    }

    public void writeShort(int theShort) throws IOException {
        this.out.write(theShort & 0xFF);
        this.out.write(theShort >> 8 & 0xFF);
    }
}

