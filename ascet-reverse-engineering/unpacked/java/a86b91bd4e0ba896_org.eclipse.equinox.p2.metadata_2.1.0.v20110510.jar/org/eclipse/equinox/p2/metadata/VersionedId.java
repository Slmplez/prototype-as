/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.StringHelper
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.internal.p2.core.helpers.StringHelper;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;

public class VersionedId
implements IVersionedId {
    private final String id;
    private final Version version;

    public static IVersionedId parse(String spec) {
        String[] segments = StringHelper.getArrayFromString((String)spec, (char)'/');
        return new VersionedId(segments[0], segments.length == 1 ? null : segments[1]);
    }

    public VersionedId(String id, String version) {
        this.id = id;
        this.version = Version.parseVersion(version);
    }

    public VersionedId(String id, Version version) {
        this.id = id;
        this.version = version == null ? Version.emptyVersion : version;
    }

    public String getId() {
        return this.id;
    }

    public Version getVersion() {
        return this.version;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VersionedId)) {
            return false;
        }
        VersionedId vname = (VersionedId)obj;
        return this.id.equals(vname.id) && this.version.equals(vname.version);
    }

    public int hashCode() {
        return this.id.hashCode() * 31 + this.version.hashCode();
    }

    public String toString() {
        return Version.emptyVersion.equals(this.version) ? this.id : String.valueOf(this.id) + '/' + this.version.toString();
    }
}

