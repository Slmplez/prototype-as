/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.Map;
import org.eclipse.core.internal.localstore.FileStoreRoot;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.ObjectMap;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.internal.watson.IElementTreeData;
import org.eclipse.core.runtime.QualifiedName;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceInfo
implements IElementTreeData,
ICoreConstants,
IStringPoolParticipant {
    protected static final int LOWER = 65535;
    protected static final int UPPER = -65536;
    protected volatile int charsetAndContentId = 0;
    protected FileStoreRoot fileStoreRoot;
    protected int flags = 0;
    protected volatile long localInfo = -1L;
    protected volatile int markerAndSyncStamp;
    protected MarkerSet markers = null;
    protected long modStamp = 0L;
    protected volatile long nodeId = 0L;
    protected ObjectMap<QualifiedName, Object> sessionProperties = null;
    protected ObjectMap<QualifiedName, Object> syncInfo = null;

    protected static int getBits(int flags, int mask, int start) {
        return (flags & mask) >> start;
    }

    public static int getType(int flags) {
        return ResourceInfo.getBits(flags, 3840, 8);
    }

    public static boolean isSet(int flags, int mask) {
        return (flags & mask) == mask;
    }

    public void clear(int mask) {
        this.flags &= ~mask;
    }

    public void clearModificationStamp() {
        this.modStamp = -1L;
    }

    public synchronized void clearSessionProperties() {
        this.sessionProperties = null;
    }

    @Override
    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public int getCharsetGenerationCount() {
        return this.charsetAndContentId >> 16;
    }

    public int getContentId() {
        return this.charsetAndContentId & 0xFFFF;
    }

    public FileStoreRoot getFileStoreRoot() {
        return this.fileStoreRoot;
    }

    public int getFlags() {
        return this.flags;
    }

    public long getLocalSyncInfo() {
        return this.localInfo;
    }

    public int getMarkerGenerationCount() {
        return this.markerAndSyncStamp >> 16;
    }

    public MarkerSet getMarkers() {
        return this.getMarkers(true);
    }

    public MarkerSet getMarkers(boolean makeCopy) {
        if (this.markers == null) {
            return null;
        }
        return makeCopy ? (MarkerSet)this.markers.clone() : this.markers;
    }

    public long getModificationStamp() {
        return this.modStamp;
    }

    public long getNodeId() {
        return this.nodeId;
    }

    public Object getPropertyStore() {
        return null;
    }

    public Map<QualifiedName, Object> getSessionProperties() {
        ObjectMap<Object, Object> temp = this.sessionProperties;
        temp = temp == null ? new ObjectMap(5) : (ObjectMap)this.sessionProperties.clone();
        return temp;
    }

    public Object getSessionProperty(QualifiedName name) {
        ObjectMap<QualifiedName, Object> temp = this.sessionProperties;
        if (temp == null) {
            return null;
        }
        return temp.get(name);
    }

    public synchronized ObjectMap<QualifiedName, Object> getSyncInfo(boolean makeCopy) {
        if (this.syncInfo == null) {
            return null;
        }
        return makeCopy ? (ObjectMap)this.syncInfo.clone() : this.syncInfo;
    }

    public synchronized byte[] getSyncInfo(QualifiedName id, boolean makeCopy) {
        if (this.syncInfo == null) {
            return null;
        }
        byte[] b = (byte[])this.syncInfo.get(id);
        return b == null ? null : (makeCopy ? (byte[])b.clone() : b);
    }

    public int getSyncInfoGenerationCount() {
        return this.markerAndSyncStamp & 0xFFFF;
    }

    public int getType() {
        return ResourceInfo.getType(this.flags);
    }

    public void incrementCharsetGenerationCount() {
        this.charsetAndContentId = (this.charsetAndContentId + 65535 + 1 & 0xFFFF0000) + (this.charsetAndContentId & 0xFFFF);
    }

    public void incrementContentId() {
        this.charsetAndContentId = (this.charsetAndContentId & 0xFFFF0000) + (this.charsetAndContentId + 1 & 0xFFFF);
    }

    public void incrementMarkerGenerationCount() {
        this.markerAndSyncStamp = (this.markerAndSyncStamp + 65535 + 1 & 0xFFFF0000) + (this.markerAndSyncStamp & 0xFFFF);
    }

    public void incrementModificationStamp() {
        ++this.modStamp;
    }

    public void incrementSyncInfoGenerationCount() {
        this.markerAndSyncStamp = (this.markerAndSyncStamp & 0xFFFF0000) + (this.markerAndSyncStamp + 1 & 0xFFFF);
    }

    public boolean isSet(int mask) {
        return (this.flags & mask) == mask;
    }

    public void readFrom(int newFlags, DataInput input) throws IOException {
        this.flags = newFlags;
        this.localInfo = input.readLong();
        this.nodeId = input.readLong();
        this.charsetAndContentId = input.readInt() & 0xFFFF;
        this.modStamp = input.readLong();
    }

    public void set(int mask) {
        this.flags |= mask;
    }

    protected void setBits(int mask, int start, int value) {
        int baseMask = mask >> start;
        int newValue = (value & baseMask) << start;
        int temp = this.flags;
        temp &= ~mask;
        this.flags = temp |= newValue;
    }

    public void setFileStoreRoot(FileStoreRoot fileStoreRoot) {
        this.fileStoreRoot = fileStoreRoot;
    }

    protected void setFlags(int value) {
        this.flags = value;
    }

    public void setLocalSyncInfo(long info) {
        this.localInfo = info;
    }

    public void setMarkers(MarkerSet value) {
        this.markers = value;
    }

    public void setModificationStamp(long value) {
        this.modStamp = value;
    }

    public void setNodeId(long id) {
        this.nodeId = id;
        if (this.modStamp == 0L) {
            this.modStamp = this.nodeId;
        }
    }

    public void setPropertyStore(Object value) {
    }

    public synchronized void setSessionProperty(QualifiedName name, Object value) {
        if (value == null) {
            if (this.sessionProperties == null) {
                return;
            }
            ObjectMap temp = (ObjectMap)this.sessionProperties.clone();
            temp.remove(name);
            this.sessionProperties = temp.isEmpty() ? null : temp;
        } else {
            ObjectMap<Object, Object> temp = this.sessionProperties;
            temp = temp == null ? new ObjectMap(5) : (ObjectMap)this.sessionProperties.clone();
            temp.put(name, value);
            this.sessionProperties = temp;
        }
    }

    protected void setSyncInfo(ObjectMap<QualifiedName, Object> syncInfo) {
        this.syncInfo = syncInfo;
    }

    public synchronized void setSyncInfo(QualifiedName id, byte[] value) {
        if (value == null) {
            if (this.syncInfo == null) {
                return;
            }
            this.syncInfo.remove(id);
            if (this.syncInfo.isEmpty()) {
                this.syncInfo = null;
            }
        } else {
            if (this.syncInfo == null) {
                this.syncInfo = new ObjectMap(5);
            }
            this.syncInfo.put(id, value.clone());
        }
    }

    public void setType(int value) {
        this.setBits(3840, 8, value);
    }

    @Override
    public void shareStrings(StringPool set) {
        MarkerSet markerSet;
        ObjectMap<QualifiedName, Object> map = this.syncInfo;
        if (map != null) {
            map.shareStrings(set);
        }
        if ((map = this.sessionProperties) != null) {
            map.shareStrings(set);
        }
        if ((markerSet = this.markers) != null) {
            markerSet.shareStrings(set);
        }
    }

    public void writeTo(DataOutput output) throws IOException {
        output.writeLong(this.localInfo);
        output.writeLong(this.nodeId);
        output.writeInt(this.getContentId());
        output.writeLong(this.modStamp);
    }
}

