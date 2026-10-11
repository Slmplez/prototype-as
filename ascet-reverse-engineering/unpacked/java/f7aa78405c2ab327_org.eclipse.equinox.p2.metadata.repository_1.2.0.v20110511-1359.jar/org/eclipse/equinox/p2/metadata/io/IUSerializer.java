/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.metadata.io;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataWriter;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IUSerializer {
    MetadataWriter writer;

    public IUSerializer(OutputStream os) throws UnsupportedEncodingException {
        this.writer = new MetadataWriter(os, null);
    }

    public void write(Collection<IInstallableUnit> ius) {
        this.writer.writeInstallableUnits(ius.iterator(), ius.size());
        this.writer.flush();
    }
}

