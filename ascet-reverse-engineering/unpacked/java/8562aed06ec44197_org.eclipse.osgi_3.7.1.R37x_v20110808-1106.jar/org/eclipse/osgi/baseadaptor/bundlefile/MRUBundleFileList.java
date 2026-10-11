/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.IOException;
import java.util.Map;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventManager;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MRUBundleFileList
implements EventDispatcher<Object, Object, BundleFile> {
    private static final String PROP_FILE_LIMIT = "osgi.bundlefile.limit";
    private static final int MIN = 10;
    private static final int PROP_FILE_LIMIT_VALUE;
    private static final ThreadLocal<BundleFile> closingBundleFile;
    private final BundleFile[] bundleFileList;
    private final long[] useStampList;
    private final int fileLimit;
    private final EventManager bundleFileCloserManager;
    private final Map<Object, Object> bundleFileCloser;
    private int numOpen = 0;
    private long curUseStamp = 0L;
    private boolean firstDispatch = true;

    static {
        closingBundleFile = new ThreadLocal();
        int propValue = 100;
        try {
            String prop = BundleFile.secureAction.getProperty(PROP_FILE_LIMIT);
            if (prop != null) {
                propValue = Integer.parseInt(prop);
            }
        }
        catch (NumberFormatException numberFormatException) {}
        PROP_FILE_LIMIT_VALUE = propValue;
    }

    public MRUBundleFileList() {
        this(PROP_FILE_LIMIT_VALUE);
    }

    public MRUBundleFileList(int fileLimit) {
        this.fileLimit = fileLimit;
        if (fileLimit >= 10) {
            this.bundleFileList = new BundleFile[fileLimit];
            this.useStampList = new long[fileLimit];
            this.bundleFileCloserManager = new EventManager("Bundle File Closer");
            this.bundleFileCloser = new CopyOnWriteIdentityMap<Object, Object>();
            this.bundleFileCloser.put(this, this);
        } else {
            this.bundleFileList = null;
            this.useStampList = null;
            this.bundleFileCloserManager = null;
            this.bundleFileCloser = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void add(BundleFile bundleFile) {
        if (this.fileLimit < 10) {
            return;
        }
        BundleFile toRemove = null;
        MRUBundleFileList mRUBundleFileList = this;
        synchronized (mRUBundleFileList) {
            if (bundleFile.getMruIndex() >= 0) {
                return;
            }
            int index = 0;
            if (this.numOpen < this.fileLimit) {
                int i = 0;
                while (i < this.fileLimit) {
                    if (this.bundleFileList[i] == null) {
                        index = i;
                        break;
                    }
                    ++i;
                }
            } else {
                index = 0;
                int i = 1;
                while (i < this.fileLimit) {
                    if (this.useStampList[i] < this.useStampList[index]) {
                        index = i;
                    }
                    ++i;
                }
                toRemove = this.bundleFileList[index];
                if (toRemove.getMruIndex() != index) {
                    throw new IllegalStateException(new StringBuffer("The BundleFile has the incorrect mru index: ").append(index).append(" != ").append(toRemove.getMruIndex()).toString());
                }
                this.removeInternal(toRemove);
            }
            this.bundleFileList[index] = bundleFile;
            bundleFile.setMruIndex(index);
            this.incUseStamp(index);
            ++this.numOpen;
        }
        this.closeBundleFile(toRemove);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean remove(BundleFile bundleFile) {
        if (this.fileLimit < 10) {
            return false;
        }
        MRUBundleFileList mRUBundleFileList = this;
        synchronized (mRUBundleFileList) {
            block5: {
                int index = bundleFile.getMruIndex();
                if (index < 0 || index >= this.fileLimit || this.bundleFileList[index] != bundleFile) break block5;
                this.removeInternal(bundleFile);
                return true;
            }
        }
        return false;
    }

    private void removeInternal(BundleFile bundleFile) {
        int index = bundleFile.getMruIndex();
        bundleFile.setMruIndex(-1);
        this.bundleFileList[index] = null;
        this.useStampList[index] = -1L;
        --this.numOpen;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void use(BundleFile bundleFile) {
        if (this.fileLimit < 10) {
            return;
        }
        MRUBundleFileList mRUBundleFileList = this;
        synchronized (mRUBundleFileList) {
            int index = bundleFile.getMruIndex();
            if (index >= 0 && index < this.fileLimit && this.bundleFileList[index] == bundleFile) {
                this.incUseStamp(index);
            }
        }
    }

    private void incUseStamp(int index) {
        if (this.curUseStamp == Long.MAX_VALUE) {
            int i = 0;
            while (i < this.fileLimit) {
                this.useStampList[i] = 0L;
                ++i;
            }
            this.curUseStamp = 0L;
        }
        this.useStampList[index] = ++this.curUseStamp;
    }

    @Override
    public final void dispatchEvent(Object eventListener, Object listenerObject, int eventAction, BundleFile eventObject) {
        if (this.firstDispatch) {
            Thread.currentThread().setContextClassLoader(null);
            this.firstDispatch = false;
        }
        try {
            try {
                closingBundleFile.set(eventObject);
                eventObject.close();
            }
            catch (IOException iOException) {
                closingBundleFile.set(null);
            }
        }
        finally {
            closingBundleFile.set(null);
        }
    }

    private void closeBundleFile(BundleFile toRemove) {
        if (toRemove == null) {
            return;
        }
        try {
            ListenerQueue<Object, Object, BundleFile> queue = new ListenerQueue<Object, Object, BundleFile>(this.bundleFileCloserManager);
            queue.queueListeners(this.bundleFileCloser.entrySet(), this);
            queue.dispatchEventAsynchronous(0, toRemove);
        }
        catch (Throwable throwable) {}
    }

    public void shutdown() {
        if (this.bundleFileCloserManager != null) {
            this.bundleFileCloserManager.close();
        }
    }

    public boolean isClosing(BundleFile bundleFile) {
        if (this.fileLimit < 10) {
            return false;
        }
        return closingBundleFile.get() == bundleFile;
    }

    public boolean isEnabled() {
        return this.fileLimit >= 10;
    }
}

