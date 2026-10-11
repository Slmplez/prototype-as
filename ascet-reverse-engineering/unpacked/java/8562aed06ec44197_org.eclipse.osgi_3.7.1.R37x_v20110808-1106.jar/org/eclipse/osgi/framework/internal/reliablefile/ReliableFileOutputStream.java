/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.reliablefile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.util.zip.Checksum;
import org.eclipse.osgi.framework.internal.reliablefile.ReliableFile;

public class ReliableFileOutputStream
extends FilterOutputStream {
    private ReliableFile reliable;
    private Checksum crc;
    private boolean outputOpen = false;

    public ReliableFileOutputStream(File file) throws IOException {
        this(ReliableFile.getReliableFile(file), false);
    }

    public ReliableFileOutputStream(File file, boolean append) throws IOException {
        this(ReliableFile.getReliableFile(file), append);
    }

    public ReliableFileOutputStream(String name) throws IOException {
        this(ReliableFile.getReliableFile(name), false);
    }

    public ReliableFileOutputStream(String name, boolean append) throws IOException {
        this(ReliableFile.getReliableFile(name), append);
    }

    private ReliableFileOutputStream(ReliableFile reliable, boolean append) throws IOException {
        super(reliable.getOutputStream(append, 0));
        this.reliable = reliable;
        this.outputOpen = true;
        this.crc = append ? reliable.getFileChecksum() : reliable.getChecksumCalculator();
    }

    public synchronized void close() throws IOException {
        this.closeIntermediateFile();
        this.reliable.closeOutputFile(this.crc);
        this.reliable = null;
    }

    public File closeIntermediateFile() throws IOException {
        if (this.reliable == null) {
            throw new IOException("ReliableFile stream not open");
        }
        if (this.outputOpen) {
            this.reliable.writeChecksumSignature(this.out, this.crc);
            this.out.flush();
            try {
                ((FileOutputStream)this.out).getFD().sync();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            this.out.close();
            this.outputOpen = false;
        }
        return this.reliable.getOutputFile();
    }

    public void write(byte[] b) throws IOException {
        this.write(b, 0, b.length);
    }

    public void write(byte[] b, int off, int len) throws IOException {
        this.out.write(b, off, len);
        this.crc.update(b, off, len);
    }

    public void write(int b) throws IOException {
        this.out.write(b);
        this.crc.update((byte)b);
    }

    public void abort() {
        if (this.reliable == null) {
            return;
        }
        if (this.outputOpen) {
            try {
                this.out.close();
            }
            catch (IOException iOException) {}
            this.outputOpen = false;
        }
        this.reliable.abortOutputFile();
        this.reliable = null;
    }
}

