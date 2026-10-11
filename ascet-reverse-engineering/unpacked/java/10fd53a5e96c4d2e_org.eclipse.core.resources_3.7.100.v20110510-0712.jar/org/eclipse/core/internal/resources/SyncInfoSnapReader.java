/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.core.internal.resources.SyncInfoSnapReader_3;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.osgi.util.NLS;

public class SyncInfoSnapReader {
    protected Workspace workspace;
    protected Synchronizer synchronizer;

    public SyncInfoSnapReader(Workspace workspace, Synchronizer synchronizer) {
        this.workspace = workspace;
        this.synchronizer = synchronizer;
    }

    protected SyncInfoSnapReader getReader(int formatVersion) throws IOException {
        switch (formatVersion) {
            case 3: {
                return new SyncInfoSnapReader_3(this.workspace, this.synchronizer);
            }
        }
        throw new IOException(NLS.bind((String)Messages.resources_format, (Object)new Integer(formatVersion)));
    }

    public void readSyncInfo(DataInputStream input) throws IOException {
        int formatVersion = SyncInfoSnapReader.readVersionNumber(input);
        SyncInfoSnapReader reader = this.getReader(formatVersion);
        reader.readSyncInfo(input);
    }

    protected static int readVersionNumber(DataInputStream input) throws IOException {
        return input.readInt();
    }
}

