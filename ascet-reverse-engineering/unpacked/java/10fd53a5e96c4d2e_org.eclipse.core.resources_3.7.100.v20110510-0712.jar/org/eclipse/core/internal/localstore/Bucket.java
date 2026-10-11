/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public abstract class Bucket {
    static final String INDEXES_DIR_NAME = ".indexes";
    private final Map<String, Object> entries = new HashMap<String, Object>();
    private File location;
    private boolean needSaving = false;
    protected String projectName;

    public final int accept(Visitor visitor, IPath filter, int depth) throws CoreException {
        if (this.entries.isEmpty()) {
            return 0;
        }
        try {
            Iterator<Map.Entry<String, Object>> i = this.entries.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry<String, Object> mapEntry = i.next();
                Path path = new Path(mapEntry.getKey());
                int matchingSegments = filter.matchingFirstSegments((IPath)path);
                if (!filter.isPrefixOf((IPath)path) || path.segmentCount() - matchingSegments > depth) continue;
                Entry bucketEntry = this.createEntry((IPath)path, mapEntry.getValue());
                int outcome = visitor.visit(bucketEntry);
                bucketEntry.visited();
                if (bucketEntry.isDeleted()) {
                    this.needSaving = true;
                    i.remove();
                } else if (bucketEntry.isDirty()) {
                    this.needSaving = true;
                    mapEntry.setValue(bucketEntry.getValue());
                }
                if (outcome == 0) continue;
                int n = outcome;
                return n;
            }
            return 0;
        }
        finally {
            visitor.beforeSaving(this);
            this.save();
            visitor.afterSaving(this);
        }
    }

    private void cleanUp(File toDelete) {
        if (!toDelete.delete()) {
            return;
        }
        if (toDelete.getName().equals(INDEXES_DIR_NAME)) {
            return;
        }
        this.cleanUp(toDelete.getParentFile());
    }

    protected abstract Entry createEntry(IPath var1, Object var2);

    public void flush() {
        this.projectName = null;
        this.location = null;
        this.entries.clear();
        this.needSaving = false;
    }

    public final int getEntryCount() {
        return this.entries.size();
    }

    public final Object getEntryValue(String path) {
        return this.entries.get(path);
    }

    protected abstract String getIndexFileName();

    protected abstract byte getVersion();

    protected abstract String getVersionFileName();

    public void load(String newProjectName, File baseLocation) throws CoreException {
        this.load(newProjectName, baseLocation, false);
    }

    public void load(String newProjectName, File baseLocation, boolean force) throws CoreException {
        try {
            if (!force && this.location != null && baseLocation.equals(this.location.getParentFile()) && (this.projectName == null ? newProjectName == null : this.projectName.equals(newProjectName))) {
                this.projectName = newProjectName;
                return;
            }
            this.save();
            this.projectName = newProjectName;
            this.location = new File(baseLocation, this.getIndexFileName());
            this.entries.clear();
            if (!this.location.isFile()) {
                return;
            }
            DataInputStream source = new DataInputStream(new BufferedInputStream(new FileInputStream(this.location), 8192));
            try {
                byte version = source.readByte();
                if (version != this.getVersion()) {
                    String message = NLS.bind((String)Messages.resources_readMetaWrongVersion, (Object)this.location.getAbsolutePath(), (Object)Integer.toString(version));
                    ResourceStatus status = new ResourceStatus(567, message);
                    throw new ResourceException(status);
                }
                int entryCount = source.readInt();
                int i = 0;
                while (i < entryCount) {
                    this.entries.put(this.readEntryKey(source), this.readEntryValue(source));
                    ++i;
                }
            }
            finally {
                source.close();
            }
        }
        catch (IOException ioe) {
            String message = NLS.bind((String)Messages.resources_readMeta, (Object)this.location.getAbsolutePath());
            ResourceStatus status = new ResourceStatus(567, null, message, ioe);
            throw new ResourceException(status);
        }
    }

    private String readEntryKey(DataInputStream source) throws IOException {
        if (this.projectName == null) {
            return source.readUTF();
        }
        return String.valueOf('/') + this.projectName + source.readUTF();
    }

    protected abstract Object readEntryValue(DataInputStream var1) throws IOException, CoreException;

    public void save() throws CoreException {
        if (!this.needSaving) {
            return;
        }
        try {
            if (this.entries.isEmpty()) {
                this.needSaving = false;
                this.cleanUp(this.location);
                return;
            }
            File parent = this.location.getParentFile();
            if (parent == null) {
                throw new IOException();
            }
            parent.mkdirs();
            DataOutputStream destination = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(this.location), 8192));
            try {
                destination.write(this.getVersion());
                destination.writeInt(this.entries.size());
                for (Map.Entry<String, Object> entry : this.entries.entrySet()) {
                    this.writeEntryKey(destination, entry.getKey());
                    this.writeEntryValue(destination, entry.getValue());
                }
                destination.close();
            }
            finally {
                FileUtil.safeClose(destination);
            }
            this.needSaving = false;
        }
        catch (IOException ioe) {
            String message = NLS.bind((String)Messages.resources_writeMeta, (Object)this.location.getAbsolutePath());
            ResourceStatus status = new ResourceStatus(568, null, message, ioe);
            throw new ResourceException(status);
        }
    }

    public final void setEntryValue(String path, Object value) {
        if (value == null) {
            this.entries.remove(path);
        } else {
            this.entries.put(path, value);
        }
        this.needSaving = true;
    }

    private void writeEntryKey(DataOutputStream destination, String path) throws IOException {
        int projectLength;
        if (this.projectName == null) {
            destination.writeUTF(path);
            return;
        }
        int pathLength = path.length();
        String key = pathLength == (projectLength = this.projectName.length()) + 1 ? "" : path.substring(projectLength + 1);
        destination.writeUTF(key);
    }

    protected abstract void writeEntryValue(DataOutputStream var1, Object var2) throws IOException, CoreException;

    public static abstract class Entry {
        private static final int STATE_CLEAR = 0;
        private static final int STATE_DELETED = 2;
        private static final int STATE_DIRTY = 1;
        private IPath path;
        private byte state = 0;

        protected Entry(IPath path) {
            this.path = path;
        }

        public void delete() {
            this.state = (byte)2;
        }

        public abstract int getOccurrences();

        public IPath getPath() {
            return this.path;
        }

        public abstract Object getValue();

        public boolean isDeleted() {
            return this.state == 2;
        }

        public boolean isDirty() {
            return this.state == 1;
        }

        public boolean isEmpty() {
            return this.getOccurrences() == 0;
        }

        public void markDirty() {
            Assert.isTrue((this.state != 2 ? 1 : 0) != 0);
            this.state = 1;
        }

        public void visited() {
        }
    }

    public static abstract class Visitor {
        public static final int CONTINUE = 0;
        public static final int STOP = 1;
        public static final int RETURN = 2;

        public void afterSaving(Bucket bucket) throws CoreException {
        }

        public void beforeSaving(Bucket bucket) throws CoreException {
        }

        public abstract int visit(Entry var1);
    }
}

