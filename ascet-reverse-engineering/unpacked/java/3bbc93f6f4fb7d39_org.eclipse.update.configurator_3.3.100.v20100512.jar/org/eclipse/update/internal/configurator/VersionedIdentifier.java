/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Version
 */
package org.eclipse.update.internal.configurator;

import org.osgi.framework.Version;

public class VersionedIdentifier {
    private String identifier;
    private Version version;

    public VersionedIdentifier(String id, String version) {
        this.identifier = id;
        this.version = Version.parseVersion((String)version);
    }

    public Version getVersion() {
        return this.version;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    private boolean equalIdentifiers(VersionedIdentifier id) {
        if (id == null) {
            return this.identifier == null;
        }
        return id.identifier.equals(this.identifier);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VersionedIdentifier)) {
            return false;
        }
        VersionedIdentifier other = (VersionedIdentifier)obj;
        if (!this.equalIdentifiers(other)) {
            return false;
        }
        return this.version.equals((Object)other.getVersion());
    }

    public int hashCode() {
        return (String.valueOf(this.identifier) + "_" + this.getVersion()).hashCode();
    }

    public String toString() {
        return String.valueOf(this.identifier) + "_" + this.getVersion();
    }
}

