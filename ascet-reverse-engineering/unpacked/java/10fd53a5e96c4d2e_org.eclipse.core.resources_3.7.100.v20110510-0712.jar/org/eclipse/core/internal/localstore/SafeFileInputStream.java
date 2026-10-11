/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class SafeFileInputStream
extends FilterInputStream {
    protected static final String EXTENSION = ".bak";
    private static final int DEFAUT_BUFFER_SIZE = 2048;

    public SafeFileInputStream(File file) throws IOException {
        this(file.getAbsolutePath(), null);
    }

    public SafeFileInputStream(String targetPath, String tempPath) throws IOException {
        super(SafeFileInputStream.getInputStream(targetPath, tempPath, 2048));
    }

    public SafeFileInputStream(String targetPath, String tempPath, int bufferSize) throws IOException {
        super(SafeFileInputStream.getInputStream(targetPath, tempPath, bufferSize));
    }

    private static InputStream getInputStream(String targetPath, String tempPath, int bufferSize) throws IOException {
        File target = new File(targetPath);
        if (!target.exists()) {
            if (tempPath == null) {
                tempPath = String.valueOf(target.getAbsolutePath()) + EXTENSION;
            }
            target = new File(tempPath);
        }
        return new BufferedInputStream(new FileInputStream(target), bufferSize);
    }
}

