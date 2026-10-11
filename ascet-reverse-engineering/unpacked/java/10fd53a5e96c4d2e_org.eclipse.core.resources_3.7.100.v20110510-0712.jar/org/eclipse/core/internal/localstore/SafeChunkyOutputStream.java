/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.localstore;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import org.eclipse.core.internal.localstore.ILocalStoreConstants;
import org.eclipse.core.internal.utils.FileUtil;

public class SafeChunkyOutputStream
extends FilterOutputStream {
    protected String filePath;
    protected boolean isOpen;

    public SafeChunkyOutputStream(File target) throws IOException {
        this(target.getAbsolutePath());
    }

    public SafeChunkyOutputStream(String filePath) throws IOException {
        super(new BufferedOutputStream(new FileOutputStream(filePath, true)));
        this.filePath = filePath;
        this.isOpen = true;
        this.beginChunk();
    }

    protected void beginChunk() throws IOException {
        this.write(ILocalStoreConstants.BEGIN_CHUNK);
    }

    protected void endChunk() throws IOException {
        this.write(ILocalStoreConstants.END_CHUNK);
    }

    protected void open() throws IOException {
        this.out = new BufferedOutputStream(new FileOutputStream(this.filePath, true));
        this.isOpen = true;
        this.beginChunk();
    }

    public void succeed() throws IOException {
        try {
            this.endChunk();
            this.close();
        }
        finally {
            this.isOpen = false;
            FileUtil.safeClose(this);
        }
    }

    public void write(int b) throws IOException {
        if (!this.isOpen) {
            this.open();
        }
        super.write(b);
    }
}

