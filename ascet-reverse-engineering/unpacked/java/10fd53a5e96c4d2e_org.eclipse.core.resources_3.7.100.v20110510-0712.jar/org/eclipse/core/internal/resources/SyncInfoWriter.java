/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.ObjectMap;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.runtime.QualifiedName;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SyncInfoWriter {
    protected Synchronizer synchronizer;
    protected Workspace workspace;
    public static final int SYNCINFO_SAVE_VERSION = 3;
    public static final int SYNCINFO_SNAP_VERSION = 3;
    public static final byte INDEX = 1;
    public static final byte QNAME = 2;

    public SyncInfoWriter(Workspace workspace, Synchronizer synchronizer) {
        this.workspace = workspace;
        this.synchronizer = synchronizer;
    }

    public void savePartners(DataOutputStream output) throws IOException {
        Set<QualifiedName> registry = this.synchronizer.getRegistry();
        output.writeInt(registry.size());
        for (QualifiedName qname : registry) {
            output.writeUTF(qname.getQualifier());
            output.writeUTF(qname.getLocalName());
        }
    }

    public void saveSyncInfo(ResourceInfo info, IPathRequestor requestor, DataOutputStream output, List<QualifiedName> writtenPartners) throws IOException {
        ObjectMap<QualifiedName, Object> table = info.getSyncInfo(false);
        if (table == null) {
            return;
        }
        if (output.size() == 0) {
            output.writeInt(3);
        }
        output.writeUTF(requestor.requestPath().toString());
        output.writeInt(table.size());
        for (Map.Entry entry : table.entrySet()) {
            QualifiedName name = (QualifiedName)entry.getKey();
            int index = writtenPartners.indexOf(name);
            if (index == -1) {
                output.writeByte(2);
                output.writeUTF(name.getQualifier());
                output.writeUTF(name.getLocalName());
                writtenPartners.add(name);
            } else {
                output.writeByte(1);
                output.writeInt(index);
            }
            byte[] bytes = (byte[])entry.getValue();
            output.writeInt(bytes.length);
            output.write(bytes);
        }
    }

    public void snapSyncInfo(ResourceInfo info, IPathRequestor requestor, DataOutputStream output) throws IOException {
        if (!info.isSet(8192)) {
            return;
        }
        ObjectMap<QualifiedName, Object> table = info.getSyncInfo(false);
        if (table == null) {
            return;
        }
        output.writeInt(3);
        output.writeUTF(requestor.requestPath().toString());
        output.writeInt(table.size());
        for (Map.Entry entry : table.entrySet()) {
            QualifiedName name = (QualifiedName)entry.getKey();
            output.writeUTF(name.getQualifier());
            output.writeUTF(name.getLocalName());
            byte[] bytes = (byte[])entry.getValue();
            output.writeInt(bytes.length);
            output.write(bytes);
        }
        info.clear(8192);
    }
}

