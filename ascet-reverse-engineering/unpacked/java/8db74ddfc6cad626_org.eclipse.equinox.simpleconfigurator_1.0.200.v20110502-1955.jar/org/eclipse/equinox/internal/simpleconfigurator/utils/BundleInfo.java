/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.net.URI;
import org.eclipse.equinox.internal.simpleconfigurator.utils.URIUtil;

public class BundleInfo {
    public static final int NO_LEVEL = -1;
    private String symbolicName = null;
    private String version = null;
    private URI location;
    private URI baseLocation;
    private boolean markedAsStarted = false;
    private int startLevel = -1;

    public BundleInfo(String symbolic, String version, URI location, int startLevel, boolean started) {
        this.symbolicName = symbolic;
        this.version = version;
        this.location = location;
        this.markedAsStarted = started;
        this.startLevel = startLevel;
    }

    public URI getLocation() {
        return this.location;
    }

    public int getStartLevel() {
        return this.startLevel;
    }

    public String getSymbolicName() {
        return this.symbolicName;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isMarkedAsStarted() {
        return this.markedAsStarted;
    }

    public URI getBaseLocation() {
        return this.baseLocation;
    }

    public void setBaseLocation(URI baseLocation) {
        this.baseLocation = baseLocation;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("BundleInfo(");
        if (this.symbolicName != null) {
            buffer.append(this.symbolicName);
        }
        buffer.append(", ");
        if (this.version != null) {
            buffer.append(this.version);
        }
        if (this.baseLocation != null) {
            buffer.append(", baseLocation=");
            buffer.append(this.baseLocation);
        }
        buffer.append(", location=");
        buffer.append(this.location);
        buffer.append(", startLevel=");
        buffer.append(this.startLevel);
        buffer.append(", toBeStarted=");
        buffer.append(this.markedAsStarted);
        buffer.append(')');
        return buffer.toString();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.symbolicName == null ? 0 : this.symbolicName.hashCode());
        result = 31 * result + (this.version == null ? 0 : this.version.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        BundleInfo other = (BundleInfo)obj;
        if (this.symbolicName == null ? other.symbolicName != null : !this.symbolicName.equals(other.symbolicName)) {
            return false;
        }
        if (this.version == null ? other.version != null : !this.version.equals(other.version)) {
            return false;
        }
        if (this.location == null || other.location == null) {
            return true;
        }
        URI absoluteLocation = this.baseLocation == null ? this.location : URIUtil.append(this.baseLocation, this.location.toString());
        URI otherAbsoluteLocation = other.baseLocation == null ? other.location : URIUtil.append(other.baseLocation, other.location.toString());
        return URIUtil.sameURI(absoluteLocation, otherAbsoluteLocation);
    }
}

