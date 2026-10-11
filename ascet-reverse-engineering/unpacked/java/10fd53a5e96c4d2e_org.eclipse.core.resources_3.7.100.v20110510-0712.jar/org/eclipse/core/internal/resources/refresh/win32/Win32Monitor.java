/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.resources.refresh.win32;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.refresh.RefreshManager;
import org.eclipse.core.internal.resources.refresh.win32.Win32Natives;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.resources.refresh.IRefreshResult;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class Win32Monitor
extends Job
implements IRefreshMonitor {
    private static final long RESCHEDULE_DELAY = 1000L;
    private static final String DEBUG_PREFIX = "Win32RefreshMonitor: ";
    private static final int WAIT_FOR_MULTIPLE_OBJECTS_TIMEOUT = 300;
    protected MultiStatus errors;
    protected long[][] fHandleValueArrays;
    protected Map<Long, Handle> fHandleValueToHandle;
    protected IRefreshResult refreshResult;

    public Win32Monitor(IRefreshResult result) {
        super(Messages.WM_jobName);
        this.refreshResult = result;
        this.setPriority(50);
        this.setSystem(true);
        this.fHandleValueToHandle = new HashMap<Long, Handle>(1);
        this.setHandleValueArrays(this.createHandleArrays());
    }

    protected synchronized void addException(String message) {
        if (this.errors == null) {
            String msg = Messages.WM_errors;
            this.errors = new MultiStatus("org.eclipse.core.resources", 1, msg, null);
        }
        this.errors.add((IStatus)new Status(4, "org.eclipse.core.resources", 1, message, null));
    }

    private long[][] balancedSplit(long[] array, int max) {
        int elementCount = array.length;
        int subArrayCount = (elementCount - 1) / max + 1;
        int subArrayBaseLength = elementCount / subArrayCount;
        int overflow = elementCount % subArrayCount;
        long[][] result = new long[subArrayCount][];
        int count = 0;
        int i = 0;
        while (i < subArrayCount) {
            int subArrayLength = subArrayBaseLength + (overflow-- > 0 ? 1 : 0);
            long[] subArray = new long[subArrayLength];
            int j = 0;
            while (j < subArrayLength) {
                subArray[j] = array[count++];
                ++j;
            }
            result[i] = subArray;
            ++i;
        }
        return result;
    }

    private Handle createHandle(IResource resource) {
        if (resource.isLinked()) {
            return new LinkedResourceHandle(resource);
        }
        return new ResourceHandle(resource);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected long[][] createHandleArrays() {
        long[] handles;
        Map<Long, Handle> map = this.fHandleValueToHandle;
        synchronized (map) {
            Set<Long> keys = this.fHandleValueToHandle.keySet();
            int size = keys.size();
            if (size == 0) {
                return new long[0][0];
            }
            handles = new long[size];
            int count = 0;
            Iterator<Long> i = keys.iterator();
            while (i.hasNext()) {
                handles[count++] = i.next();
            }
        }
        return this.balancedSplit(handles, Win32Natives.MAXIMUM_WAIT_OBJECTS);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Handle getHandle(IResource resource) {
        if (resource == null) {
            return null;
        }
        Map<Long, Handle> map = this.fHandleValueToHandle;
        synchronized (map) {
            for (Handle handle : this.fHandleValueToHandle.values()) {
                ResourceHandle resourceHandle;
                if (!(handle instanceof ResourceHandle) || !(resourceHandle = (ResourceHandle)handle).getResource().equals(resource)) continue;
                return handle;
            }
        }
        return null;
    }

    private long[][] getHandleValueArrays() {
        return this.fHandleValueArrays;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean monitor(IResource resource) {
        IPath location = resource.getLocation();
        if (location == null) {
            return false;
        }
        Handle handle = this.createHandle(resource);
        Win32Monitor win32Monitor = this;
        synchronized (win32Monitor) {
            handle.open();
        }
        if (!handle.isOpen()) {
            this.errors = null;
            return false;
        }
        this.schedule(1000L);
        if (RefreshManager.DEBUG) {
            System.out.println("Win32RefreshMonitor:  added monitor for: " + resource);
        }
        return true;
    }

    protected void removeHandle(Handle handle) {
        ArrayList<Handle> handles = new ArrayList<Handle>(1);
        handles.add(handle);
        this.removeHandles(handles);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeHandles(Collection<Handle> handles) {
        Win32Monitor win32Monitor = this;
        synchronized (win32Monitor) {
            for (Handle handle : handles) {
                this.fHandleValueToHandle.remove(new Long(handle.getHandleValue()));
                handle.destroy();
            }
            this.setHandleValueArrays(this.createHandleArrays());
        }
    }

    protected IStatus run(IProgressMonitor monitor) {
        Bundle bundle;
        long start = -System.currentTimeMillis();
        if (RefreshManager.DEBUG) {
            System.out.println("Win32RefreshMonitor: job started.");
        }
        try {
            long[][] handleArrays = this.getHandleValueArrays();
            monitor.beginTask(Messages.WM_beginTask, handleArrays.length);
            int i = 0;
            int length = handleArrays.length;
            while (i < length) {
                if (monitor.isCanceled()) {
                    IStatus iStatus = Status.CANCEL_STATUS;
                    return iStatus;
                }
                this.waitForNotification(handleArrays[i]);
                monitor.worked(1);
                ++i;
            }
        }
        finally {
            monitor.done();
            start += System.currentTimeMillis();
            if (RefreshManager.DEBUG) {
                System.out.println("Win32RefreshMonitor: job finished in: " + start + "ms");
            }
        }
        long delay = Math.max(1000L, start * 30L);
        if (RefreshManager.DEBUG) {
            System.out.println("Win32RefreshMonitor: rescheduling in: " + delay / 1000L + " seconds");
        }
        if ((bundle = Platform.getBundle((String)"org.eclipse.core.resources")) == null) {
            return Status.OK_STATUS;
        }
        if (bundle.getState() == 32) {
            this.schedule(delay);
        }
        MultiStatus result = this.errors;
        this.errors = null;
        if (result != null && !result.isOK()) {
            ResourcesPlugin.getPlugin().getLog().log((IStatus)result);
        }
        return Status.OK_STATUS;
    }

    protected void setHandleValueArrays(long[][] arrays) {
        this.fHandleValueArrays = arrays;
    }

    public boolean shouldRun() {
        return !this.fHandleValueToHandle.isEmpty();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void unmonitor(IResource resource) {
        if (resource == null) {
            Map<Long, Handle> map = this.fHandleValueToHandle;
            synchronized (map) {
                this.removeHandles(new ArrayList<Handle>(this.fHandleValueToHandle.values()));
            }
        } else {
            Handle handle = this.getHandle(resource);
            if (handle != null) {
                this.removeHandle(handle);
            }
        }
        if (this.fHandleValueToHandle.isEmpty()) {
            this.cancel();
        }
    }

    private void waitForNotification(long[] handleValues) {
        int handleCount = handleValues.length;
        int index = Win32Natives.WaitForMultipleObjects(handleCount, handleValues, false, 300);
        if (index == Win32Natives.WAIT_TIMEOUT) {
            return;
        }
        if (index == Win32Natives.WAIT_FAILED) {
            int error = Win32Natives.GetLastError();
            if (error != Win32Natives.ERROR_INVALID_HANDLE && error != Win32Natives.ERROR_SUCCESS) {
                this.addException(NLS.bind((String)Messages.WM_nativeErr, (Object)Integer.toString(error)));
                this.refreshResult.monitorFailed(this, null);
            }
            return;
        }
        Handle handle = this.fHandleValueToHandle.get(new Long(handleValues[index -= Win32Natives.WAIT_OBJECT_0]));
        if (handle != null) {
            handle.handleNotification();
        }
    }

    protected abstract class ChainedHandle
    extends Handle {
        private ChainedHandle next;
        private ChainedHandle previous;

        protected ChainedHandle() {
        }

        public abstract boolean exists();

        public ChainedHandle getNext() {
            return this.next;
        }

        public ChainedHandle getPrevious() {
            return this.previous;
        }

        public void setNext(ChainedHandle next) {
            this.next = next;
        }

        public void setPrevious(ChainedHandle previous) {
            this.previous = previous;
        }
    }

    protected class FileHandle
    extends ChainedHandle {
        private File file;

        public FileHandle(File file) {
            this.file = file;
        }

        public boolean exists() {
            return this.file.exists();
        }

        public void handleNotification() {
            if (!this.isOpen()) {
                return;
            }
            ChainedHandle next = this.getNext();
            if (next != null) {
                if (next.isOpen()) {
                    if (!next.exists()) {
                        if (next instanceof LinkedResourceHandle) {
                            next.close();
                            LinkedResourceHandle linkedResourceHandle = (LinkedResourceHandle)next;
                            linkedResourceHandle.postRefreshRequest();
                        } else {
                            next.close();
                        }
                        ChainedHandle previous = this.getPrevious();
                        if (previous != null) {
                            previous.open();
                        }
                    }
                } else {
                    next.open();
                    if (next.isOpen()) {
                        ChainedHandle previous = this.getPrevious();
                        previous.close();
                        if (next instanceof LinkedResourceHandle) {
                            ((LinkedResourceHandle)next).postRefreshRequest();
                        }
                    }
                }
            }
            this.findNextChange();
        }

        public void open() {
            if (!this.isOpen()) {
                ChainedHandle next = this.getNext();
                if (next != null && next.isOpen()) {
                    this.openHandleOn(this.file);
                } else {
                    ChainedHandle previous;
                    if (this.exists()) {
                        this.openHandleOn(this.file);
                    }
                    if ((previous = this.getPrevious()) != null) {
                        previous.open();
                    }
                }
            }
        }
    }

    protected abstract class Handle {
        protected long handleValue = Win32Natives.INVALID_HANDLE_VALUE;

        public void close() {
            if (this.isOpen()) {
                int error;
                if (!Win32Natives.FindCloseChangeNotification(this.handleValue) && (error = Win32Natives.GetLastError()) != Win32Natives.ERROR_INVALID_HANDLE) {
                    Win32Monitor.this.addException(NLS.bind((String)Messages.WM_errCloseHandle, (Object)Integer.toString(error)));
                }
                if (RefreshManager.DEBUG) {
                    System.out.println("Win32RefreshMonitor: removed handle: " + this.handleValue);
                }
                this.handleValue = Win32Natives.INVALID_HANDLE_VALUE;
            }
        }

        private long createHandleValue(String path, boolean monitorSubtree, int flags) {
            long handle = Win32Natives.FindFirstChangeNotification(path, monitorSubtree, flags);
            if (handle == Win32Natives.INVALID_HANDLE_VALUE) {
                int error = Win32Natives.GetLastError();
                Win32Monitor.this.addException(NLS.bind((String)Messages.WM_errCreateHandle, (Object)path, (Object)Integer.toString(error)));
            }
            return handle;
        }

        public void destroy() {
            this.close();
        }

        protected void findNextChange() {
            if (!Win32Natives.FindNextChangeNotification(this.handleValue)) {
                int error = Win32Natives.GetLastError();
                if (error != Win32Natives.ERROR_INVALID_HANDLE && error != Win32Natives.ERROR_SUCCESS) {
                    Win32Monitor.this.addException(NLS.bind((String)Messages.WM_errFindChange, (Object)Integer.toString(error)));
                }
                Win32Monitor.this.removeHandle(this);
            }
        }

        public long getHandleValue() {
            return this.handleValue;
        }

        public abstract void handleNotification();

        public boolean isOpen() {
            return this.handleValue != Win32Natives.INVALID_HANDLE_VALUE;
        }

        public abstract void open();

        protected void openHandleOn(File file) {
            this.openHandleOn(file.getAbsolutePath(), false);
        }

        protected void openHandleOn(IResource resource) {
            this.openHandleOn(resource.getLocation().toOSString(), true);
        }

        private void openHandleOn(String path, boolean subtree) {
            this.setHandleValue(this.createHandleValue(path, subtree, Win32Natives.FILE_NOTIFY_CHANGE_FILE_NAME | Win32Natives.FILE_NOTIFY_CHANGE_DIR_NAME | Win32Natives.FILE_NOTIFY_CHANGE_LAST_WRITE | Win32Natives.FILE_NOTIFY_CHANGE_SIZE));
            if (this.isOpen()) {
                Win32Monitor.this.fHandleValueToHandle.put(new Long(this.getHandleValue()), this);
                Win32Monitor.this.setHandleValueArrays(Win32Monitor.this.createHandleArrays());
            } else {
                this.close();
            }
        }

        protected void postRefreshRequest(IResource resource) {
            if (!resource.isSynchronized(2)) {
                Win32Monitor.this.refreshResult.refresh(resource);
            }
        }

        public void setHandleValue(long handleValue) {
            this.handleValue = handleValue;
        }
    }

    protected class LinkedResourceHandle
    extends ChainedHandle {
        private List<FileHandle> fileHandleChain;
        private IResource resource;

        public LinkedResourceHandle(IResource resource) {
            this.resource = resource;
            this.createFileHandleChain();
        }

        protected void createFileHandleChain() {
            this.fileHandleChain = new ArrayList<FileHandle>(1);
            File file = new File(this.resource.getLocation().toOSString());
            file = file.getParentFile();
            while (file != null) {
                this.fileHandleChain.add(0, new FileHandle(file));
                file = file.getParentFile();
            }
            int size = this.fileHandleChain.size();
            int i = 0;
            while (i < size) {
                ChainedHandle handle = this.fileHandleChain.get(i);
                handle.setPrevious(i > 0 ? this.fileHandleChain.get(i - 1) : null);
                handle.setNext(i + 1 < size ? (ChainedHandle)this.fileHandleChain.get(i + 1) : this);
                ++i;
            }
            this.setPrevious(size > 0 ? this.fileHandleChain.get(size - 1) : null);
        }

        public void destroy() {
            super.destroy();
            for (Handle handle : this.fileHandleChain) {
                handle.destroy();
            }
        }

        public boolean exists() {
            IPath location = this.resource.getLocation();
            return location == null ? false : location.toFile().exists();
        }

        public void handleNotification() {
            if (this.isOpen()) {
                this.postRefreshRequest(this.resource);
                this.findNextChange();
            }
        }

        public void open() {
            if (!this.isOpen()) {
                FileHandle handle;
                if (this.exists()) {
                    this.openHandleOn(this.resource);
                }
                if ((handle = (FileHandle)this.getPrevious()) != null && !handle.isOpen()) {
                    handle.open();
                }
            }
        }

        public void postRefreshRequest() {
            this.postRefreshRequest(this.resource);
        }
    }

    protected class ResourceHandle
    extends Handle {
        private IResource resource;

        public ResourceHandle(IResource resource) {
            this.resource = resource;
        }

        public IResource getResource() {
            return this.resource;
        }

        public void handleNotification() {
            if (this.isOpen()) {
                this.postRefreshRequest(this.resource);
                this.findNextChange();
            }
        }

        public void open() {
            if (!this.isOpen()) {
                this.openHandleOn(this.resource);
            }
        }
    }
}

