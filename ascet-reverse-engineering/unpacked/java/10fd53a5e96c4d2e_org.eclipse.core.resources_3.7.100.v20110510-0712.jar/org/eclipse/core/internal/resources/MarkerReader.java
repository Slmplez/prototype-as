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
import org.eclipse.core.internal.resources.MarkerReader_1;
import org.eclipse.core.internal.resources.MarkerReader_2;
import org.eclipse.core.internal.resources.MarkerReader_3;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.util.NLS;

public class MarkerReader {
    protected Workspace workspace;

    public MarkerReader(Workspace workspace) {
        this.workspace = workspace;
    }

    protected MarkerReader getReader(int formatVersion) throws IOException {
        switch (formatVersion) {
            case 1: {
                return new MarkerReader_1(this.workspace);
            }
            case 2: {
                return new MarkerReader_2(this.workspace);
            }
            case 3: {
                return new MarkerReader_3(this.workspace);
            }
        }
        throw new IOException(NLS.bind((String)Messages.resources_format, (Object)new Integer(formatVersion)));
    }

    public void read(DataInputStream input, boolean generateDeltas) throws IOException, CoreException {
        int formatVersion = MarkerReader.readVersionNumber(input);
        MarkerReader reader = this.getReader(formatVersion);
        reader.read(input, generateDeltas);
    }

    protected static int readVersionNumber(DataInputStream input) throws IOException {
        return input.readInt();
    }
}

