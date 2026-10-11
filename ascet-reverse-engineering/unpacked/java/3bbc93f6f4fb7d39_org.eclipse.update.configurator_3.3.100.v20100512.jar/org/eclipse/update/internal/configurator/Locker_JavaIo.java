/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.eclipse.update.internal.configurator.Locker;

public class Locker_JavaIo
implements Locker {
    private File lockFile;
    private RandomAccessFile lockRAF;

    public Locker_JavaIo(File lockFile) {
        this.lockFile = lockFile;
    }

    public synchronized boolean lock() throws IOException {
        if (this.lockFile.exists()) {
            this.lockFile.delete();
        }
        if (this.lockFile.exists()) {
            return false;
        }
        this.lockRAF = new RandomAccessFile(this.lockFile, "rw");
        this.lockRAF.writeByte(0);
        return true;
    }

    public synchronized void release() {
        try {
            if (this.lockRAF != null) {
                this.lockRAF.close();
                this.lockRAF = null;
            }
        }
        catch (IOException iOException) {}
        if (this.lockFile != null) {
            this.lockFile.delete();
        }
    }
}

