/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import org.eclipse.update.internal.configurator.Locker;

public class Locker_JavaNio
implements Locker {
    private File lockFile;
    private RandomAccessFile raf;
    private FileLock fileLock;

    public Locker_JavaNio(File lockFile) {
        this.lockFile = lockFile;
    }

    public synchronized boolean lock() throws IOException {
        this.raf = new RandomAccessFile(this.lockFile, "rw");
        try {
            try {
                this.fileLock = this.raf.getChannel().tryLock(0L, 1L, false);
            }
            catch (OverlappingFileLockException overlappingFileLockException) {
                this.fileLock = null;
                if (this.fileLock != null) {
                    return true;
                }
                this.raf.close();
                this.raf = null;
            }
        }
        finally {
            if (this.fileLock != null) {
                return true;
            }
            this.raf.close();
            this.raf = null;
        }
        return false;
    }

    public synchronized void release() {
        if (this.fileLock != null) {
            try {
                this.fileLock.release();
            }
            catch (IOException iOException) {}
            this.fileLock = null;
        }
        if (this.raf != null) {
            try {
                this.raf.close();
            }
            catch (IOException iOException) {}
            this.raf = null;
        }
        if (this.lockFile != null) {
            this.lockFile.delete();
            this.lockFile = null;
        }
    }
}

