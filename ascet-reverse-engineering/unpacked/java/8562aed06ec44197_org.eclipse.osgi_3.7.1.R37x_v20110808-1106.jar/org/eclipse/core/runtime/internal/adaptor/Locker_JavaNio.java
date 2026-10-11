/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import org.eclipse.core.runtime.internal.adaptor.BasicLocation;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.Locker;
import org.eclipse.osgi.util.NLS;

public class Locker_JavaNio
implements Locker {
    private final File lockFile;
    private FileLock fileLock;
    private RandomAccessFile raFile;

    public Locker_JavaNio(File lockFile) {
        this.lockFile = lockFile;
    }

    public synchronized boolean lock() throws IOException {
        this.raFile = new RandomAccessFile(this.lockFile, "rw");
        try {
            try {
                this.fileLock = this.raFile.getChannel().tryLock(0L, 1L, false);
            }
            catch (IOException ioe) {
                if (BasicLocation.DEBUG) {
                    System.out.println(NLS.bind(EclipseAdaptorMsg.location_cannotLock, this.lockFile));
                }
                String specificMessage = NLS.bind(EclipseAdaptorMsg.location_cannotLockNIO, new Object[]{this.lockFile, ioe.getMessage(), "\"-Dosgi.locking=none\""});
                throw new IOException(specificMessage);
            }
            catch (OverlappingFileLockException overlappingFileLockException) {
                this.fileLock = null;
                if (this.fileLock != null) {
                    return true;
                }
                this.raFile.close();
                this.raFile = null;
            }
        }
        finally {
            if (this.fileLock != null) {
                return true;
            }
            this.raFile.close();
            this.raFile = null;
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
        if (this.raFile != null) {
            try {
                this.raFile.close();
            }
            catch (IOException iOException) {}
            this.raFile = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public synchronized boolean isLocked() throws IOException {
        if (this.fileLock != null) {
            return true;
        }
        try {
            RandomAccessFile temp = new RandomAccessFile(this.lockFile, "rw");
            FileLock tempLock = null;
            try {
                try {
                    tempLock = temp.getChannel().tryLock(0L, 1L, false);
                }
                catch (IOException ioe) {
                    if (BasicLocation.DEBUG) {
                        System.out.println(NLS.bind(EclipseAdaptorMsg.location_cannotLock, this.lockFile));
                    }
                    String specificMessage = NLS.bind(EclipseAdaptorMsg.location_cannotLockNIO, new Object[]{this.lockFile, ioe.getMessage(), "\"-Dosgi.locking=none\""});
                    throw new IOException(specificMessage);
                }
                if (tempLock == null) return true;
                tempLock.release();
                return false;
            }
            catch (OverlappingFileLockException overlappingFileLockException) {
                return true;
            }
            finally {
                temp.close();
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            return false;
        }
    }
}

