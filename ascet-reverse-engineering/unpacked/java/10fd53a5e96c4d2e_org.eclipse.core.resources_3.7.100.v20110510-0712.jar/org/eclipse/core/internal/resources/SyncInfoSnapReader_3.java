/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.SyncInfoSnapReader;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.ObjectMap;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.QualifiedName;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SyncInfoSnapReader_3
extends SyncInfoSnapReader {
    public SyncInfoSnapReader_3(Workspace workspace, Synchronizer synchronizer) {
        super(workspace, synchronizer);
    }

    private ObjectMap<QualifiedName, Object> internalReadSyncInfo(DataInputStream input) throws IOException {
        int size = input.readInt();
        ObjectMap<QualifiedName, Object> map = new ObjectMap<QualifiedName, Object>(size);
        int i = 0;
        while (i < size) {
            String qualifier = input.readUTF();
            String local = input.readUTF();
            QualifiedName name = new QualifiedName(qualifier, local);
            int length = input.readInt();
            byte[] bytes = new byte[length];
            input.readFully(bytes);
            map.put(name, bytes);
            ++i;
        }
        return map;
    }

    @Override
    public void readSyncInfo(DataInputStream input) throws IOException {
        Path path = new Path(input.readUTF());
        ObjectMap<QualifiedName, Object> map = this.internalReadSyncInfo(input);
        ResourceInfo info = this.workspace.getResourceInfo((IPath)path, true, false);
        if (info == null) {
            return;
        }
        info.setSyncInfo(map);
        info.clear(8192);
    }
}

