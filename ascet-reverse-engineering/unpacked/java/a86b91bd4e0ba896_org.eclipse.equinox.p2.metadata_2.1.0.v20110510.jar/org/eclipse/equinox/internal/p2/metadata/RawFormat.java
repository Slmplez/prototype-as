/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.OmniVersion;
import org.eclipse.equinox.internal.p2.metadata.VersionFormat;
import org.eclipse.equinox.internal.p2.metadata.VersionFormatParser;
import org.eclipse.equinox.p2.metadata.Version;

class RawFormat
extends VersionFormat {
    private static final long serialVersionUID = -6070590518921019745L;

    RawFormat(VersionFormatParser.Fragment topFragment) {
        super(topFragment);
    }

    public Version parse(String version) {
        List<Comparable<?>> vector = this.parse(version, 0, version.length());
        return OmniVersion.fromVector(vector, null, null);
    }

    private Object readResolve() {
        return RAW_FORMAT;
    }
}

