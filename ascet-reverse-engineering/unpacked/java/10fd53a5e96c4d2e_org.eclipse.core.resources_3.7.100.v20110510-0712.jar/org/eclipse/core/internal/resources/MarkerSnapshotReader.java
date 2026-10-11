/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.core.internal.resources.MarkerSnapshotReader_1;
import org.eclipse.core.internal.resources.MarkerSnapshotReader_2;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.util.NLS;

public class MarkerSnapshotReader {
    protected Workspace workspace;

    public MarkerSnapshotReader(Workspace workspace) {
        this.workspace = workspace;
    }

    protected MarkerSnapshotReader getReader(int formatVersion) throws IOException {
        switch (formatVersion) {
            case 1: {
                return new MarkerSnapshotReader_1(this.workspace);
            }
            case 2: {
                return new MarkerSnapshotReader_2(this.workspace);
            }
        }
        throw new IOException(NLS.bind((String)Messages.resources_format, (Object)new Integer(formatVersion)));
    }

    public void read(DataInputStream input) throws IOException, CoreException {
        int formatVersion = MarkerSnapshotReader.readVersionNumber(input);
        MarkerSnapshotReader reader = this.getReader(formatVersion);
        reader.read(input);
    }

    protected static int readVersionNumber(DataInputStream input) throws IOException {
        return input.readInt();
    }
}

