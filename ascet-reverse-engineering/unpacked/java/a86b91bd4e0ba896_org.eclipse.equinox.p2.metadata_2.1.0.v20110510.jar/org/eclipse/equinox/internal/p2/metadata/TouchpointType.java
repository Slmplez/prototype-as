/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.Version;

public class TouchpointType
implements ITouchpointType {
    private String id;
    private Version version;

    public TouchpointType(String id, Version aVersion) {
        this.id = id;
        this.version = aVersion;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return true;
        }
        if (obj == null || !(obj instanceof ITouchpointType)) {
            return false;
        }
        ITouchpointType other = (ITouchpointType)obj;
        return this.id.equals(other.getId()) && this.version.equals(other.getVersion());
    }

    public String getId() {
        return this.id;
    }

    public Version getVersion() {
        return this.version;
    }

    public int hashCode() {
        return 31 * this.id.hashCode() + this.version.hashCode();
    }

    public String toString() {
        return "Touchpoint: " + this.id + ' ' + this.getVersion();
    }
}

