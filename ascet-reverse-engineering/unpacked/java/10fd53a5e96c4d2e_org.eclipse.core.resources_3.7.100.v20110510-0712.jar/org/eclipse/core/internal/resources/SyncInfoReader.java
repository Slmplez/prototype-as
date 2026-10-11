/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.HashSet;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.SyncInfoReader_2;
import org.eclipse.core.internal.resources.SyncInfoReader_3;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.osgi.util.NLS;

public class SyncInfoReader {
    protected Workspace workspace;
    protected Synchronizer synchronizer;

    public SyncInfoReader(Workspace workspace, Synchronizer synchronizer) {
        this.workspace = workspace;
        this.synchronizer = synchronizer;
    }

    protected SyncInfoReader getReader(int formatVersion) throws IOException {
        switch (formatVersion) {
            case 2: {
                return new SyncInfoReader_2(this.workspace, this.synchronizer);
            }
            case 3: {
                return new SyncInfoReader_3(this.workspace, this.synchronizer);
            }
        }
        throw new IOException(NLS.bind((String)Messages.resources_format, (Object)new Integer(formatVersion)));
    }

    public void readPartners(DataInputStream input) throws CoreException {
        try {
            int size = input.readInt();
            HashSet<QualifiedName> registry = new HashSet<QualifiedName>(size);
            int i = 0;
            while (i < size) {
                String qualifier = input.readUTF();
                String local = input.readUTF();
                registry.add(new QualifiedName(qualifier, local));
                ++i;
            }
            this.synchronizer.setRegistry(registry);
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.resources_readSync, (Object)e);
            throw new ResourceException(new ResourceStatus(566, message));
        }
    }

    public void readSyncInfo(DataInputStream input) throws IOException, CoreException {
        int formatVersion = SyncInfoReader.readVersionNumber(input);
        SyncInfoReader reader = this.getReader(formatVersion);
        reader.readSyncInfo(input);
    }

    protected static int readVersionNumber(DataInputStream input) throws IOException {
        return input.readInt();
    }
}

