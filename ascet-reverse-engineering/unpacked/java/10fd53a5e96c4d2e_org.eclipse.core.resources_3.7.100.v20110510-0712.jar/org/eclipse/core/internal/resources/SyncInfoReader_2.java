/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.SyncInfoReader;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.ObjectMap;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SyncInfoReader_2
extends SyncInfoReader {
    public static final int INDEX = 1;
    public static final int QNAME = 2;

    public SyncInfoReader_2(Workspace workspace, Synchronizer synchronizer) {
        super(workspace, synchronizer);
    }

    @Override
    public void readSyncInfo(DataInputStream input) throws IOException, CoreException {
        try {
            ArrayList<QualifiedName> readPartners = new ArrayList<QualifiedName>(5);
            while (true) {
                Path path = new Path(input.readUTF());
                this.readSyncInfo((IPath)path, input, readPartners);
            }
        }
        catch (EOFException eOFException) {
            return;
        }
    }

    private void readSyncInfo(IPath path, DataInputStream input, List<QualifiedName> readPartners) throws IOException, CoreException {
        int size = input.readInt();
        ObjectMap<QualifiedName, Object> table = new ObjectMap<QualifiedName, Object>(size);
        int i = 0;
        while (i < size) {
            QualifiedName name = null;
            int type = input.readInt();
            switch (type) {
                case 2: {
                    String qualifier = input.readUTF();
                    String local = input.readUTF();
                    name = new QualifiedName(qualifier, local);
                    readPartners.add(name);
                    break;
                }
                case 1: {
                    name = readPartners.get(input.readInt());
                    break;
                }
                default: {
                    String msg = NLS.bind((String)Messages.resources_readSync, (Object)(path == null ? "" : path.toString()));
                    throw new ResourceException(567, path, msg, null);
                }
            }
            int length = input.readInt();
            byte[] bytes = new byte[length];
            input.readFully(bytes);
            table.put(name, bytes);
            ++i;
        }
        ResourceInfo info = this.workspace.getResourceInfo(path, true, false);
        if (info == null) {
            return;
        }
        info.setSyncInfo(table);
        info.clear(8192);
    }
}

