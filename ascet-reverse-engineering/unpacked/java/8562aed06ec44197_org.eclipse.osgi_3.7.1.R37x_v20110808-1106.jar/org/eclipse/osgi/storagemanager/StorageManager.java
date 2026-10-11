/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.storagemanager;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SyncFailedException;
import java.security.AccessController;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.internal.adaptor.BasicLocation;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.Locker;
import org.eclipse.osgi.framework.internal.reliablefile.ReliableFile;
import org.eclipse.osgi.framework.internal.reliablefile.ReliableFileInputStream;
import org.eclipse.osgi.framework.internal.reliablefile.ReliableFileOutputStream;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.storagemanager.ManagedOutputStream;

public final class StorageManager {
    private static final int FILETYPE_STANDARD = 0;
    private static final int FILETYPE_RELIABLEFILE = 1;
    private static final SecureAction secure = AccessController.doPrivileged(SecureAction.createSecureAction());
    private static final String MANAGER_FOLDER = ".manager";
    private static final String TABLE_FILE = ".fileTable";
    private static final String LOCK_FILE = ".fileTableLock";
    private static final int MAX_LOCK_WAIT = 5000;
    private final boolean useReliableFiles = Boolean.valueOf(secure.getProperty("osgi.useReliableFiles"));
    private final boolean tempCleanup = Boolean.valueOf(secure.getProperty("osgi.embedded.cleanTempFiles"));
    private final boolean openCleanup = Boolean.valueOf(secure.getProperty("osgi.embedded.cleanupOnOpen"));
    private final boolean saveCleanup = Boolean.valueOf(secure.getProperty("osgi.embedded.cleanupOnSave"));
    private final File base;
    private final File managerRoot;
    private final String lockMode;
    private final File tableFile;
    private final File lockFile;
    private Locker locker;
    private File instanceFile;
    private Locker instanceLocker = null;
    private final boolean readOnly;
    private boolean open;
    private int tableStamp = -1;
    private final Properties table = new Properties();

    public StorageManager(File base, String lockMode) {
        this(base, lockMode, false);
    }

    public StorageManager(File base, String lockMode, boolean readOnly) {
        this.base = base;
        this.lockMode = lockMode;
        this.managerRoot = new File(base, MANAGER_FOLDER);
        this.tableFile = new File(this.managerRoot, TABLE_FILE);
        this.lockFile = new File(this.managerRoot, LOCK_FILE);
        this.readOnly = readOnly;
        this.open = false;
    }

    private void initializeInstanceFile() throws IOException {
        if (this.instanceFile != null || this.readOnly) {
            return;
        }
        this.instanceFile = File.createTempFile(".tmp", ".instance", this.managerRoot);
        this.instanceFile.deleteOnExit();
        this.instanceLocker = BasicLocation.createLocker(this.instanceFile, this.lockMode);
        this.instanceLocker.lock();
    }

    private String getAbsolutePath(String file) {
        return new File(this.base, file).getAbsolutePath();
    }

    public void add(String managedFile) throws IOException {
        this.add(managedFile, 0);
    }

    private void add(String managedFile, int fileType) throws IOException {
        if (!this.open) {
            throw new IOException(EclipseAdaptorMsg.fileManager_notOpen);
        }
        if (this.readOnly) {
            throw new IOException(EclipseAdaptorMsg.fileManager_illegalInReadOnlyMode);
        }
        if (!this.lock(true)) {
            throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
        }
        try {
            this.updateTable();
            Entry entry = (Entry)this.table.get(managedFile);
            if (entry == null) {
                entry = new Entry(0, 1, fileType);
                this.table.put(managedFile, entry);
                int oldestGeneration = this.findOldestGeneration(managedFile);
                if (oldestGeneration != 0) {
                    entry.setWriteId(oldestGeneration + 1);
                }
                this.save();
            } else if (entry.getFileType() != fileType) {
                entry.setFileType(fileType);
                this.updateTable();
                this.save();
            }
        }
        finally {
            this.release();
        }
    }

    private int findOldestGeneration(String managedFile) {
        String[] files = this.base.list();
        int oldestGeneration = 0;
        if (files != null) {
            String name = String.valueOf(managedFile) + '.';
            int len = name.length();
            int i = 0;
            while (i < files.length) {
                if (files[i].startsWith(name)) {
                    try {
                        int generation = Integer.parseInt(files[i].substring(len));
                        if (generation > oldestGeneration) {
                            oldestGeneration = generation;
                        }
                    }
                    catch (NumberFormatException numberFormatException) {}
                }
                ++i;
            }
        }
        return oldestGeneration;
    }

    public void update(String[] managedFiles, String[] sources) throws IOException {
        if (!this.open) {
            throw new IOException(EclipseAdaptorMsg.fileManager_notOpen);
        }
        if (this.readOnly) {
            throw new IOException(EclipseAdaptorMsg.fileManager_illegalInReadOnlyMode);
        }
        if (!this.lock(true)) {
            throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
        }
        try {
            this.updateTable();
            int[] originalReadIDs = new int[managedFiles.length];
            boolean error = false;
            int i = 0;
            while (i < managedFiles.length) {
                originalReadIDs[i] = this.getId(managedFiles[i]);
                if (!this.update(managedFiles[i], sources[i])) {
                    error = true;
                }
                ++i;
            }
            if (error) {
                i = 0;
                while (i < managedFiles.length) {
                    Entry entry = (Entry)this.table.get(managedFiles[i]);
                    entry.setReadId(originalReadIDs[i]);
                    ++i;
                }
                throw new IOException(EclipseAdaptorMsg.fileManager_updateFailed);
            }
            this.save();
        }
        finally {
            this.release();
        }
    }

    public String[] getManagedFiles() {
        if (!this.open) {
            return null;
        }
        Set set = this.table.keySet();
        String[] keys = set.toArray(new String[set.size()]);
        String[] result = new String[keys.length];
        int i = 0;
        while (i < keys.length) {
            result[i] = new String(keys[i]);
            ++i;
        }
        return result;
    }

    public File getBase() {
        return this.base;
    }

    public int getId(String managedFile) {
        if (!this.open) {
            return -1;
        }
        Entry entry = (Entry)this.table.get(managedFile);
        if (entry == null) {
            return -1;
        }
        return entry.getReadId();
    }

    public boolean isReadOnly() {
        return this.readOnly;
    }

    private boolean lock(boolean wait) throws IOException {
        long time;
        boolean locked;
        if (this.readOnly) {
            return false;
        }
        if (this.locker == null) {
            this.locker = BasicLocation.createLocker(this.lockFile, this.lockMode);
            if (this.locker == null) {
                throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
            }
        }
        if ((locked = this.locker.lock()) || !wait) {
            return locked;
        }
        long start = System.currentTimeMillis();
        do {
            try {
                Thread.sleep(200L);
            }
            catch (InterruptedException interruptedException) {}
            locked = this.locker.lock();
            if (!locked) continue;
            return true;
        } while ((time = System.currentTimeMillis() - start) <= 5000L);
        return false;
    }

    public File lookup(String managedFile, boolean add) throws IOException {
        if (!this.open) {
            throw new IOException(EclipseAdaptorMsg.fileManager_notOpen);
        }
        Entry entry = (Entry)this.table.get(managedFile);
        if (entry == null) {
            if (add) {
                this.add(managedFile);
                entry = (Entry)this.table.get(managedFile);
            } else {
                return null;
            }
        }
        return new File(this.getAbsolutePath(String.valueOf(managedFile) + '.' + entry.getReadId()));
    }

    private boolean move(String source, String managedFile) {
        File original = new File(source);
        File targetFile = new File(managedFile);
        if (!original.exists() || targetFile.exists()) {
            return false;
        }
        return original.renameTo(targetFile);
    }

    private void release() {
        if (this.locker == null) {
            return;
        }
        this.locker.release();
    }

    public void remove(String managedFile) throws IOException {
        if (!this.open) {
            throw new IOException(EclipseAdaptorMsg.fileManager_notOpen);
        }
        if (this.readOnly) {
            throw new IOException(EclipseAdaptorMsg.fileManager_illegalInReadOnlyMode);
        }
        if (!this.lock(true)) {
            throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
        }
        try {
            this.updateTable();
            this.table.remove(managedFile);
            this.save();
        }
        finally {
            this.release();
        }
    }

    private void updateTable() throws IOException {
        int stamp = ReliableFile.lastModifiedVersion(this.tableFile);
        if (stamp == this.tableStamp || stamp == -1) {
            return;
        }
        Properties diskTable = new Properties();
        ReliableFileInputStream input = new ReliableFileInputStream(this.tableFile);
        try {
            diskTable.load(input);
        }
        catch (Throwable throwable) {
            try {
                ((InputStream)input).close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            ((InputStream)input).close();
        }
        catch (IOException iOException) {}
        this.tableStamp = stamp;
        Enumeration e = diskTable.keys();
        while (e.hasMoreElements()) {
            int fileType;
            int id;
            String file = (String)e.nextElement();
            String value = diskTable.getProperty(file);
            if (value == null) continue;
            Entry entry = (Entry)this.table.get(file);
            int idx = value.indexOf(44);
            if (idx != -1) {
                id = Integer.parseInt(value.substring(0, idx));
                fileType = Integer.parseInt(value.substring(idx + 1));
            } else {
                id = Integer.parseInt(value);
                fileType = 0;
            }
            if (entry == null) {
                this.table.put(file, new Entry(id, id + 1, fileType));
                continue;
            }
            entry.setWriteId(id + 1);
        }
    }

    private void save() throws IOException {
        if (this.readOnly) {
            return;
        }
        this.updateTable();
        Properties props = new Properties();
        Enumeration e = this.table.keys();
        while (e.hasMoreElements()) {
            String file = (String)e.nextElement();
            Entry entry = (Entry)this.table.get(file);
            String value = entry.getFileType() != 0 ? String.valueOf(Integer.toString(entry.getWriteId() - 1)) + ',' + Integer.toString(entry.getFileType()) : Integer.toString(entry.getWriteId() - 1);
            props.put(file, value);
        }
        ReliableFileOutputStream fileStream = new ReliableFileOutputStream(this.tableFile);
        boolean error = true;
        try {
            props.store(fileStream, "safe table");
            fileStream.close();
            error = false;
        }
        finally {
            if (error) {
                fileStream.abort();
            }
        }
        if (this.saveCleanup) {
            try {
                this.cleanup(false);
            }
            catch (IOException ex) {
                System.out.println("Unexpected IOException is thrown inside cleanupWithLock. Please look below for stacktrace");
                ex.printStackTrace(System.out);
            }
        }
        this.tableStamp = ReliableFile.lastModifiedVersion(this.tableFile);
    }

    private boolean update(String managedFile, String source) throws IOException {
        Entry entry = (Entry)this.table.get(managedFile);
        if (entry == null) {
            this.add(managedFile);
        }
        int newId = entry.getWriteId();
        boolean success = this.move(this.getAbsolutePath(source), String.valueOf(this.getAbsolutePath(managedFile)) + '.' + newId);
        if (!success) {
            newId = this.findOldestGeneration(managedFile) + 1;
            success = this.move(this.getAbsolutePath(source), String.valueOf(this.getAbsolutePath(managedFile)) + '.' + newId);
        }
        if (!success) {
            return false;
        }
        entry.setReadId(newId);
        entry.setWriteId(newId + 1);
        return true;
    }

    private void cleanup(boolean doLock) throws IOException {
        if (this.readOnly) {
            return;
        }
        if (doLock && !this.lock(true)) {
            throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
        }
        try {
            String[] files = this.managerRoot.list();
            if (files != null) {
                int i = 0;
                while (i < files.length) {
                    if (files[i].endsWith(".instance") && (this.instanceFile == null || !files[i].equalsIgnoreCase(this.instanceFile.getName()))) {
                        Locker tmpLocker = BasicLocation.createLocker(new File(this.managerRoot, files[i]), this.lockMode);
                        if (tmpLocker.lock()) {
                            tmpLocker.release();
                            new File(this.managerRoot, files[i]).delete();
                        } else {
                            tmpLocker.release();
                            return;
                        }
                    }
                    ++i;
                }
            }
            this.updateTable();
            Set managedFiles = this.table.entrySet();
            Iterator iter = managedFiles.iterator();
            while (iter.hasNext()) {
                Map.Entry fileEntry = (Map.Entry)iter.next();
                String fileName = (String)fileEntry.getKey();
                Entry info = (Entry)fileEntry.getValue();
                if (info.getFileType() == 1) {
                    ReliableFile.cleanupGenerations(new File(this.base, fileName));
                    continue;
                }
                String readId = Integer.toString(info.getWriteId() - 1);
                this.deleteCopies(fileName, readId);
            }
            if (this.tempCleanup && (files = this.base.list()) != null) {
                int i = 0;
                while (i < files.length) {
                    if (files[i].endsWith(".tmp")) {
                        new File(this.base, files[i]).delete();
                    }
                    ++i;
                }
            }
        }
        finally {
            if (doLock) {
                this.release();
            }
        }
    }

    private void deleteCopies(String fileName, String exceptionNumber) {
        String notToDelete = String.valueOf(fileName) + '.' + exceptionNumber;
        String[] files = this.base.list();
        if (files == null) {
            return;
        }
        int i = 0;
        while (i < files.length) {
            if (files[i].startsWith(String.valueOf(fileName) + '.') && !files[i].equals(notToDelete)) {
                new File(this.base, files[i]).delete();
            }
            ++i;
        }
    }

    public void close() {
        if (!this.open) {
            return;
        }
        this.open = false;
        if (this.readOnly) {
            return;
        }
        try {
            this.cleanup(true);
        }
        catch (IOException iOException) {}
        if (this.instanceLocker != null) {
            this.instanceLocker.release();
        }
        if (this.instanceFile != null) {
            this.instanceFile.delete();
        }
    }

    public void open(boolean wait) throws IOException {
        if (!this.readOnly) {
            boolean locked;
            this.managerRoot.mkdirs();
            if (!this.managerRoot.exists()) {
                throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
            }
            if (this.openCleanup) {
                this.cleanup(true);
            }
            if (!(locked = this.lock(wait)) && wait) {
                throw new IOException(EclipseAdaptorMsg.fileManager_cannotLock);
            }
        }
        try {
            this.initializeInstanceFile();
            this.updateTable();
            this.open = true;
        }
        finally {
            this.release();
        }
    }

    public File createTempFile(String file) throws IOException {
        if (this.readOnly) {
            throw new IOException(EclipseAdaptorMsg.fileManager_illegalInReadOnlyMode);
        }
        File tmpFile = File.createTempFile(file, ".tmp", this.base);
        tmpFile.deleteOnExit();
        return tmpFile;
    }

    public InputStream getInputStream(String managedFile) throws IOException {
        return this.getInputStream(managedFile, 0);
    }

    public InputStream[] getInputStreamSet(String[] managedFiles) throws IOException {
        InputStream[] streams = new InputStream[managedFiles.length];
        int i = 0;
        while (i < streams.length) {
            streams[i] = this.getInputStream(managedFiles[i], 1);
            ++i;
        }
        return streams;
    }

    private InputStream getInputStream(String managedFiles, int openMask) throws IOException {
        if (this.useReliableFiles) {
            int id = this.getId(managedFiles);
            if (id == -1) {
                return null;
            }
            return new ReliableFileInputStream(new File(this.getBase(), managedFiles), id, openMask);
        }
        File lookup = this.lookup(managedFiles, false);
        if (lookup == null) {
            return null;
        }
        return new FileInputStream(lookup);
    }

    public ManagedOutputStream getOutputStream(String managedFile) throws IOException {
        if (this.useReliableFiles) {
            ReliableFileOutputStream out = new ReliableFileOutputStream(new File(this.getBase(), managedFile));
            return new ManagedOutputStream(out, this, managedFile, null);
        }
        File tmpFile = this.createTempFile(managedFile);
        return new ManagedOutputStream(new FileOutputStream(tmpFile), this, managedFile, tmpFile);
    }

    /*
     * Unable to fully structure code
     */
    public ManagedOutputStream[] getOutputStreamSet(String[] managedFiles) throws IOException {
        block4: {
            count = managedFiles.length;
            streams = new ManagedOutputStream[count];
            idx = 0;
            try {
                while (idx < count) {
                    newStream = this.getOutputStream(managedFiles[idx]);
                    newStream.setStreamSet(streams);
                    streams[idx] = newStream;
                    ++idx;
                }
                break block4;
            }
            catch (IOException e) {
                jdx = 0;
                ** while (jdx < idx)
            }
lbl-1000:
            // 1 sources

            {
                streams[jdx].abort();
                ++jdx;
                continue;
            }
lbl18:
            // 1 sources

            throw e;
        }
        return streams;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void abortOutputStream(ManagedOutputStream out) {
        ManagedOutputStream[] set = out.getStreamSet();
        if (set == null) {
            set = new ManagedOutputStream[]{out};
        }
        ManagedOutputStream[] managedOutputStreamArray = set;
        synchronized (set) {
            int idx = 0;
            while (idx < set.length) {
                out = set[idx];
                if (out.getOutputFile() == null) {
                    ReliableFileOutputStream rfos = (ReliableFileOutputStream)out.getOutputStream();
                    rfos.abort();
                } else {
                    if (out.getState() == 0) {
                        try {
                            out.getOutputStream().close();
                        }
                        catch (IOException iOException) {}
                    }
                    out.getOutputFile().delete();
                }
                out.setState(1);
                ++idx;
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void closeOutputStream(ManagedOutputStream smos) throws IOException {
        if (smos.getState() != 0) {
            return;
        }
        ManagedOutputStream[] streamSet = smos.getStreamSet();
        if (smos.getOutputFile() == null) {
            ReliableFileOutputStream rfos = (ReliableFileOutputStream)smos.getOutputStream();
            File file = rfos.closeIntermediateFile();
            smos.setState(1);
            String target = smos.getTarget();
            if (streamSet == null) {
                this.add(target, 1);
                this.update(new String[]{smos.getTarget()}, new String[]{file.getName()});
                ReliableFile.fileUpdated(new File(this.getBase(), smos.getTarget()));
            }
        } else {
            OutputStream out = smos.getOutputStream();
            out.flush();
            try {
                ((FileOutputStream)out).getFD().sync();
            }
            catch (SyncFailedException syncFailedException) {}
            out.close();
            smos.setState(1);
            String target = smos.getTarget();
            if (streamSet == null) {
                this.add(target, 0);
                this.update(new String[]{target}, new String[]{smos.getOutputFile().getName()});
            }
        }
        if (streamSet == null) return;
        ManagedOutputStream[] managedOutputStreamArray = streamSet;
        synchronized (streamSet) {
            int idx = 0;
            while (idx < streamSet.length) {
                if (streamSet[idx].getState() == 0) {
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return;
                }
                ++idx;
            }
            String[] targets = new String[streamSet.length];
            String[] sources = new String[streamSet.length];
            int idx2 = 0;
            while (idx2 < streamSet.length) {
                smos = streamSet[idx2];
                targets[idx2] = smos.getTarget();
                File outputFile = smos.getOutputFile();
                if (outputFile == null) {
                    this.add(smos.getTarget(), 1);
                    ReliableFileOutputStream rfos = (ReliableFileOutputStream)smos.getOutputStream();
                    File file = rfos.closeIntermediateFile();
                    sources[idx2] = file.getName();
                    ReliableFile.fileUpdated(new File(this.getBase(), smos.getTarget()));
                } else {
                    this.add(smos.getTarget(), 0);
                    sources[idx2] = outputFile.getName();
                }
                ++idx2;
            }
            this.update(targets, sources);
            // ** MonitorExit[var3_3] (shouldn't be in output)
            return;
        }
    }

    private class Entry {
        int readId;
        int writeId;
        int fileType;

        Entry(int readId, int writeId, int type) {
            this.readId = readId;
            this.writeId = writeId;
            this.fileType = type;
        }

        int getReadId() {
            return this.readId;
        }

        int getWriteId() {
            return this.writeId;
        }

        int getFileType() {
            return this.fileType;
        }

        void setReadId(int value) {
            this.readId = value;
        }

        void setWriteId(int value) {
            this.writeId = value;
        }

        void setFileType(int type) {
            this.fileType = type;
        }
    }
}

