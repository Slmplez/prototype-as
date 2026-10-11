/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.DirZipBundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.MRUBundleFileList;
import org.eclipse.osgi.baseadaptor.bundlefile.ZipBundleEntry;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ZipBundleFile
extends BundleFile {
    private final MRUBundleFileList mruList;
    protected BaseData bundledata;
    protected volatile ZipFile zipFile;
    protected volatile boolean closed = true;
    private int referenceCount = 0;

    public ZipBundleFile(File basefile, BaseData bundledata) throws IOException {
        this(basefile, bundledata, null);
    }

    public ZipBundleFile(File basefile, BaseData bundledata, MRUBundleFileList mruList) throws IOException {
        super(basefile);
        if (!BundleFile.secureAction.exists(basefile)) {
            throw new IOException(NLS.bind(AdaptorMsg.ADAPTER_FILEEXIST_EXCEPTION, basefile));
        }
        this.bundledata = bundledata;
        this.closed = true;
        this.mruList = mruList;
    }

    protected boolean checkedOpen() {
        try {
            return this.getZipFile() != null;
        }
        catch (IOException e) {
            if (this.bundledata != null) {
                this.bundledata.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.bundledata.getBundle(), e);
            }
            return false;
        }
    }

    protected ZipFile basicOpen() throws IOException {
        return BundleFile.secureAction.getZipFile(this.basefile);
    }

    protected synchronized ZipFile getZipFile() throws IOException {
        if (this.closed) {
            this.mruListAdd();
            this.zipFile = this.basicOpen();
            this.closed = false;
        } else {
            this.mruListUse();
        }
        return this.zipFile;
    }

    protected ZipEntry getZipEntry(String path) {
        ZipEntry dirEntry;
        ZipEntry entry;
        if (path.length() > 0 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        if ((entry = this.zipFile.getEntry(path)) != null && entry.getSize() == 0L && !entry.isDirectory() && (dirEntry = this.zipFile.getEntry(new StringBuffer(String.valueOf(path)).append('/').toString())) != null) {
            entry = dirEntry;
        }
        return entry;
    }

    protected synchronized File extractDirectory(String dirName) {
        if (!this.checkedOpen()) {
            return null;
        }
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            String entryPath = entries.nextElement().getName();
            if (!entryPath.startsWith(dirName) || entryPath.endsWith("/")) continue;
            this.getFile(entryPath, false);
        }
        return this.getExtractFile(dirName);
    }

    protected File getExtractFile(String entryName) {
        if (this.bundledata == null) {
            return null;
        }
        String path = ".cp";
        String name = entryName.replace('/', File.separatorChar);
        path = name.length() > 1 && name.charAt(0) == File.separatorChar ? path.concat(name) : new StringBuffer(String.valueOf(path)).append(File.separator).append(name).toString();
        return this.bundledata.getExtractFile(path);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public synchronized File getFile(String entry, boolean nativeCode) {
        InputStream in;
        File nested;
        block11: {
            if (!this.checkedOpen()) {
                return null;
            }
            ZipEntry zipEntry = this.getZipEntry(entry);
            if (zipEntry == null) {
                return null;
            }
            nested = this.getExtractFile(zipEntry.getName());
            if (nested == null) return null;
            if (nested.exists()) {
                if (Debug.DEBUG_GENERAL) {
                    Debug.println(new StringBuffer("File already present: ").append(nested.getPath()).toString());
                }
                if (!nested.isDirectory()) return nested;
                this.extractDirectory(zipEntry.getName());
                return nested;
            }
            if (zipEntry.getName().endsWith("/")) {
                if (!nested.mkdirs()) {
                    if (!Debug.DEBUG_GENERAL) throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, nested.getAbsolutePath()));
                    Debug.println(new StringBuffer("Unable to create directory: ").append(nested.getPath()).toString());
                    throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, nested.getAbsolutePath()));
                }
                this.extractDirectory(zipEntry.getName());
                return nested;
            }
            in = this.zipFile.getInputStream(zipEntry);
            if (in != null) break block11;
            return null;
        }
        try {
            File dir;
            if (Debug.DEBUG_GENERAL) {
                Debug.println(new StringBuffer("Creating file: ").append(nested.getPath()).toString());
            }
            if (!(dir = new File(nested.getParent())).exists() && !dir.mkdirs()) {
                if (!Debug.DEBUG_GENERAL) throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, dir.getAbsolutePath()));
                Debug.println(new StringBuffer("Unable to create directory: ").append(dir.getPath()).toString());
                throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_CREATE_EXCEPTION, dir.getAbsolutePath()));
            }
            AdaptorUtil.readFile(in, nested);
            if (!nativeCode) return nested;
            ZipBundleFile.setPermissions(nested);
            return nested;
        }
        catch (IOException e) {
            if (!Debug.DEBUG_GENERAL) return null;
            Debug.printStackTrace(e);
        }
        return null;
    }

    @Override
    public synchronized boolean containsDir(String dir) {
        if (!this.checkedOpen()) {
            return false;
        }
        if (dir == null) {
            return false;
        }
        if (dir.length() == 0) {
            return true;
        }
        if (dir.charAt(0) == '/') {
            if (dir.length() == 1) {
                return true;
            }
            dir = dir.substring(1);
        }
        if (dir.length() > 0 && dir.charAt(dir.length() - 1) != '/') {
            dir = new StringBuffer(String.valueOf(dir)).append('/').toString();
        }
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = entries.nextElement();
            String entryPath = zipEntry.getName();
            if (!entryPath.startsWith(dir)) continue;
            return true;
        }
        return false;
    }

    @Override
    public synchronized BundleEntry getEntry(String path) {
        if (!this.checkedOpen()) {
            return null;
        }
        ZipEntry zipEntry = this.getZipEntry(path);
        if (zipEntry == null) {
            if ((path.length() == 0 || path.charAt(path.length() - 1) == '/') && this.containsDir(path)) {
                return new DirZipBundleEntry(this, path);
            }
            return null;
        }
        return new ZipBundleEntry(zipEntry, this);
    }

    @Override
    public synchronized Enumeration<String> getEntryPaths(String path) {
        if (!this.checkedOpen()) {
            return null;
        }
        if (path == null) {
            throw new NullPointerException();
        }
        if (path.length() > 0 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        if (path.length() > 0 && path.charAt(path.length() - 1) != '/') {
            path = new StringBuffer(path).append("/").toString();
        }
        ArrayList<String> vEntries = new ArrayList<String>();
        Enumeration<? extends ZipEntry> entries = this.zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = entries.nextElement();
            String entryPath = zipEntry.getName();
            if (!entryPath.startsWith(path) || path.length() >= entryPath.length()) continue;
            if (entryPath.lastIndexOf(47) < path.length()) {
                vEntries.add(entryPath);
                continue;
            }
            entryPath = entryPath.substring(path.length());
            int slash = entryPath.indexOf(47);
            entryPath = new StringBuffer(String.valueOf(path)).append(entryPath.substring(0, slash + 1)).toString();
            if (vEntries.contains(entryPath)) continue;
            vEntries.add(entryPath);
        }
        return vEntries.size() == 0 ? null : Collections.enumeration(vEntries);
    }

    @Override
    public synchronized void close() throws IOException {
        if (!this.closed) {
            if (this.referenceCount > 0 && this.isMruListClosing()) {
                try {
                    this.wait(1000L);
                }
                catch (InterruptedException interruptedException) {}
                if (this.referenceCount != 0 || this.closed) {
                    return;
                }
            }
            this.closed = true;
            this.zipFile.close();
            this.mruListRemove();
        }
    }

    private boolean isMruListClosing() {
        return this.mruList != null && this.mruList.isClosing(this);
    }

    boolean isMruEnabled() {
        return this.mruList != null && this.mruList.isEnabled();
    }

    private void mruListRemove() {
        if (this.mruList != null) {
            this.mruList.remove(this);
        }
    }

    private void mruListUse() {
        if (this.mruList != null) {
            this.mruList.use(this);
        }
    }

    private void mruListAdd() {
        if (this.mruList != null) {
            this.mruList.add(this);
        }
    }

    @Override
    public void open() {
    }

    synchronized void incrementReference() {
        ++this.referenceCount;
    }

    synchronized void decrementReference() {
        this.referenceCount = Math.max(0, this.referenceCount - 1);
        if (this.referenceCount == 0) {
            this.notify();
        }
    }
}

