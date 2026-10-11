/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.eclipse.core.internal.utils.FileUtil;

public class SafeFileOutputStream
extends OutputStream {
    protected File temp;
    protected File target;
    protected OutputStream output;
    protected boolean failed = false;
    protected static final String EXTENSION = ".bak";

    public SafeFileOutputStream(File file) throws IOException {
        this(file.getAbsolutePath(), null);
    }

    public SafeFileOutputStream(String targetPath, String tempPath) throws IOException {
        this.target = new File(targetPath);
        this.createTempFile(tempPath);
        if (!this.target.exists()) {
            if (!this.temp.exists()) {
                this.output = new BufferedOutputStream(new FileOutputStream(this.target));
                return;
            }
            this.copy(this.temp, this.target);
        }
        this.output = new BufferedOutputStream(new FileOutputStream(this.temp));
    }

    public void close() throws IOException {
        try {
            this.output.close();
        }
        catch (IOException e) {
            this.failed = true;
            throw e;
        }
        if (this.failed) {
            this.temp.delete();
        } else {
            this.commit();
        }
    }

    protected void commit() throws IOException {
        if (!this.temp.exists()) {
            return;
        }
        this.target.delete();
        this.copy(this.temp, this.target);
        this.temp.delete();
    }

    protected void copy(File sourceFile, File destinationFile) throws IOException {
        if (!sourceFile.exists()) {
            return;
        }
        if (sourceFile.renameTo(destinationFile)) {
            return;
        }
        BufferedInputStream source = null;
        BufferedOutputStream destination = null;
        try {
            source = new BufferedInputStream(new FileInputStream(sourceFile));
            destination = new BufferedOutputStream(new FileOutputStream(destinationFile));
            this.transferStreams(source, destination);
            ((OutputStream)destination).close();
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(source);
            FileUtil.safeClose(destination);
            throw throwable;
        }
        FileUtil.safeClose(source);
        FileUtil.safeClose(destination);
    }

    protected void createTempFile(String tempPath) {
        if (tempPath == null) {
            tempPath = String.valueOf(this.target.getAbsolutePath()) + EXTENSION;
        }
        this.temp = new File(tempPath);
    }

    public void flush() throws IOException {
        try {
            this.output.flush();
        }
        catch (IOException e) {
            this.failed = true;
            throw e;
        }
    }

    public String getTempFilePath() {
        return this.temp.getAbsolutePath();
    }

    protected void transferStreams(InputStream source, OutputStream destination) throws IOException {
        int bytesRead;
        byte[] buffer = new byte[8192];
        while ((bytesRead = source.read(buffer)) != -1) {
            destination.write(buffer, 0, bytesRead);
        }
    }

    public void write(int b) throws IOException {
        try {
            this.output.write(b);
        }
        catch (IOException e) {
            this.failed = true;
            throw e;
        }
    }
}

