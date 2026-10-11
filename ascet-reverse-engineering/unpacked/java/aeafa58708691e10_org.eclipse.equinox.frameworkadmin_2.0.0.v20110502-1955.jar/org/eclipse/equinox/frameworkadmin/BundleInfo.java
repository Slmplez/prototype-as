/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.equinox.frameworkadmin;

import java.net.URI;
import org.eclipse.core.runtime.URIUtil;

public class BundleInfo {
    public static final String EMPTY_VERSION = "0.0.0";
    public static final int NO_LEVEL = -1;
    public static final int NO_BUNDLEID = -1;
    private String symbolicName = null;
    private String version = "0.0.0";
    private URI baseLocation = null;
    private URI location = null;
    private long bundleId = -1L;
    private boolean markedAsStarted = false;
    private int startLevel = -1;
    private boolean resolved = false;
    private String manifest = null;
    private String fragmentHost = null;

    public BundleInfo() {
    }

    public BundleInfo(URI location) {
        this.location = location;
    }

    public BundleInfo(URI location, int startLevel, boolean started) {
        this.location = location;
        this.startLevel = startLevel < 0 ? -1 : startLevel;
        this.markedAsStarted = started;
    }

    public BundleInfo(String symbolic, String version, URI location, int startLevel, boolean started) {
        this.symbolicName = symbolic;
        this.version = version != null ? version : EMPTY_VERSION;
        this.location = location;
        this.markedAsStarted = started;
        this.startLevel = startLevel < 0 ? -1 : startLevel;
    }

    public long getBundleId() {
        return this.bundleId;
    }

    public URI getBaseLocation() {
        return this.baseLocation;
    }

    public URI getLocation() {
        return this.location;
    }

    public String getManifest() {
        return this.manifest;
    }

    public int getStartLevel() {
        return this.startLevel;
    }

    public String getSymbolicName() {
        return this.symbolicName;
    }

    public String getVersion() {
        if (this.version == null) {
            return EMPTY_VERSION;
        }
        return this.version;
    }

    public String getFragmentHost() {
        return this.fragmentHost;
    }

    public boolean isMarkedAsStarted() {
        return this.markedAsStarted;
    }

    public boolean isResolved() {
        return this.resolved;
    }

    public void setBundleId(long bundleId) {
        this.bundleId = bundleId;
    }

    public void setBaseLocation(URI baseLocation) {
        this.baseLocation = baseLocation;
    }

    public void setLocation(URI location) {
        this.location = location;
    }

    public void setManifest(String manifest) {
        this.manifest = manifest;
    }

    public void setMarkedAsStarted(boolean markedAsStarted) {
        this.markedAsStarted = markedAsStarted;
    }

    public void setResolved(boolean resolved) {
        this.resolved = resolved;
    }

    public void setStartLevel(int level) {
        this.startLevel = level < 0 ? -1 : level;
    }

    public void setSymbolicName(String symbolicName) {
        this.symbolicName = symbolicName;
    }

    public void setVersion(String value) {
        this.version = value == null ? EMPTY_VERSION : value;
    }

    public void setFragmentHost(String fragmentHost) {
        this.fragmentHost = fragmentHost;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("BundleInfo(");
        if (this.symbolicName != null) {
            buffer.append(this.symbolicName);
        }
        buffer.append(", ");
        buffer.append(this.version);
        if (this.fragmentHost != null) {
            buffer.append(", fragmentHost=");
            buffer.append(this.fragmentHost);
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
        buffer.append(", resolved=");
        buffer.append(this.resolved);
        buffer.append(", id=");
        buffer.append(this.bundleId);
        buffer.append(',').append(this.manifest == null ? "no manifest" : "manifest available");
        buffer.append(')');
        return buffer.toString();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.symbolicName == null ? 0 : this.symbolicName.hashCode());
        result = 31 * result + this.version.hashCode();
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
        if (!this.version.equals(other.getVersion())) {
            return false;
        }
        if (this.location == null || other.location == null) {
            return true;
        }
        URI absoluteLocation = null;
        absoluteLocation = this.location.isAbsolute() || this.baseLocation == null ? this.location : URIUtil.append((URI)this.baseLocation, (String)URIUtil.toUnencodedString((URI)this.location));
        URI otherAbsoluteLocation = null;
        otherAbsoluteLocation = other.location.isAbsolute() || other.baseLocation == null ? other.location : URIUtil.append((URI)other.baseLocation, (String)URIUtil.toUnencodedString((URI)other.location));
        return URIUtil.sameURI((URI)absoluteLocation, (URI)otherAbsoluteLocation);
    }
}

