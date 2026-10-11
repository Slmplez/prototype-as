/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;

public class FeatureEntry
implements IPlatformEntry {
    private final String id;
    private String versionOrRange;
    private String url;
    private String os;
    private String ws;
    private String arch;
    private String nl;
    private String match;
    private final boolean isPlugin;
    private boolean isFragment = false;
    private boolean isRequires = false;
    private Boolean unpack = null;
    private boolean optional = false;
    private boolean isPatch = false;
    private String filter;

    public static FeatureEntry createRequires(String id, String version, String match, String filter, boolean isPlugin) {
        FeatureEntry result = new FeatureEntry(id, version, isPlugin);
        result.match = match;
        result.isRequires = true;
        result.unpack = new Boolean(false);
        if (filter != null) {
            result.setFilter(filter);
        }
        return result;
    }

    public static FeatureEntry createRequires(String id, VersionRange versionRange, String match, String filter, boolean isPlugin) {
        FeatureEntry result = new FeatureEntry(id, versionRange, isPlugin);
        result.match = match;
        result.isRequires = true;
        result.unpack = new Boolean(false);
        if (filter != null) {
            result.setFilter(filter);
        }
        return result;
    }

    public FeatureEntry(String id, String version, boolean isPlugin) {
        this.id = id;
        this.versionOrRange = Version.parseVersion((String)version).toString();
        this.isPlugin = isPlugin;
    }

    public FeatureEntry(String id, VersionRange versionRange, boolean isPlugin) {
        this.id = id;
        this.versionOrRange = versionRange.toString();
        this.isPlugin = isPlugin;
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
        FeatureEntry other = (FeatureEntry)obj;
        if (this.id == null ? other.id != null : !this.id.equals(other.id)) {
            return false;
        }
        if (this.versionOrRange == null ? other.versionOrRange != null : !this.versionOrRange.equals(other.versionOrRange)) {
            return false;
        }
        if (this.isPlugin() != other.isPlugin()) {
            return false;
        }
        return this.isRequires() == other.isRequires();
    }

    public String getArch() {
        return this.arch;
    }

    public String getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.id;
    }

    public String getMatch() {
        return this.match;
    }

    public String getNL() {
        return this.nl;
    }

    public String getOS() {
        return this.os;
    }

    public String getURL() {
        return this.url;
    }

    public String getVersion() {
        return this.versionOrRange;
    }

    public String getWS() {
        return this.ws;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.id == null ? 0 : this.id.hashCode());
        result = 31 * result + (this.versionOrRange == null ? 0 : this.versionOrRange.hashCode());
        return result;
    }

    public boolean isFragment() {
        return this.isFragment;
    }

    public boolean isOptional() {
        return this.optional;
    }

    public boolean isPlugin() {
        return this.isPlugin;
    }

    public boolean isRequires() {
        return this.isRequires;
    }

    public boolean isUnpack() {
        return this.unpack == null || this.unpack != false;
    }

    public void setEnvironment(String os, String ws, String arch, String nl) {
        this.os = os;
        this.ws = ws;
        this.arch = arch;
        this.nl = nl;
    }

    public void setFilter(String filter) {
        this.filter = filter;
    }

    public void setFragment(boolean value) {
        this.isFragment = value;
    }

    public void setOptional(boolean value) {
        this.optional = value;
    }

    public void setUnpack(boolean value) {
        this.unpack = value;
    }

    public void setURL(String value) {
        this.url = value;
    }

    public void setVersion(String value) {
        this.versionOrRange = Version.parseVersion((String)value).toString();
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append(this.isRequires ? "Requires: " : "");
        result.append(this.isPlugin ? "Plugin: " : "Feature: ");
        result.append(this.id != null ? this.id.toString() : "");
        result.append(this.versionOrRange != null ? " " + this.versionOrRange.toString() : "");
        return result.toString();
    }

    public boolean unpackSet() {
        return this.unpack != null;
    }

    public boolean isPatch() {
        return this.isPatch;
    }

    public void setPatch(boolean patch) {
        this.isPatch = patch;
    }
}

