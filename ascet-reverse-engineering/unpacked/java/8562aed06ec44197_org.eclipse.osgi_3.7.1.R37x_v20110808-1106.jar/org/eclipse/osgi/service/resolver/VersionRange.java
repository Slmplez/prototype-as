/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.osgi.framework.Version;

public class VersionRange {
    private static final Version versionMax = new Version(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    public static final VersionRange emptyRange = new VersionRange(null);
    private final Version minVersion;
    private final boolean includeMin;
    private final Version maxVersion;
    private final boolean includeMax;

    public VersionRange(Version minVersion, boolean includeMin, Version maxVersion, boolean includeMax) {
        this.minVersion = minVersion == null ? Version.emptyVersion : minVersion;
        this.includeMin = includeMin;
        this.maxVersion = maxVersion == null ? versionMax : maxVersion;
        this.includeMax = includeMax;
    }

    public VersionRange(String versionRange) {
        if (versionRange == null || versionRange.length() == 0) {
            this.minVersion = Version.emptyVersion;
            this.includeMin = true;
            this.maxVersion = versionMax;
            this.includeMax = true;
            return;
        }
        if ((versionRange = versionRange.trim()).charAt(0) == '[' || versionRange.charAt(0) == '(') {
            int comma = versionRange.indexOf(44);
            if (comma < 0) {
                throw new IllegalArgumentException();
            }
            char last = versionRange.charAt(versionRange.length() - 1);
            if (last != ']' && last != ')') {
                throw new IllegalArgumentException();
            }
            this.minVersion = Version.parseVersion(versionRange.substring(1, comma).trim());
            this.includeMin = versionRange.charAt(0) == '[';
            this.maxVersion = Version.parseVersion(versionRange.substring(comma + 1, versionRange.length() - 1).trim());
            this.includeMax = last == ']';
        } else {
            this.minVersion = Version.parseVersion(versionRange.trim());
            this.includeMin = true;
            this.maxVersion = versionMax;
            this.includeMax = true;
        }
    }

    public Version getMinimum() {
        return this.minVersion;
    }

    public boolean getIncludeMinimum() {
        return this.includeMin;
    }

    public Version getMaximum() {
        return this.maxVersion;
    }

    public boolean getIncludeMaximum() {
        return this.includeMax;
    }

    public boolean isIncluded(Version version) {
        int maxCheck;
        if (version == null) {
            version = Version.emptyVersion;
        }
        int minCheck = this.includeMin ? 0 : 1;
        int n = maxCheck = this.includeMax ? 0 : -1;
        return version.compareTo(this.minVersion) >= minCheck && version.compareTo(this.maxVersion) <= maxCheck;
    }

    public boolean equals(Object object) {
        if (!(object instanceof VersionRange)) {
            return false;
        }
        VersionRange vr = (VersionRange)object;
        return this.minVersion.equals(vr.getMinimum()) && this.includeMin == vr.includeMin && this.maxVersion.equals(vr.getMaximum()) && this.includeMax == vr.includeMax;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.maxVersion.hashCode();
        result = 31 * result + this.minVersion.hashCode();
        result = 31 * result + (this.includeMax ? 1231 : 1237);
        result = 31 * result + (this.includeMin ? 1231 : 1237);
        return result;
    }

    public String toString() {
        if (versionMax.equals(this.maxVersion)) {
            return this.minVersion.toString();
        }
        StringBuffer result = new StringBuffer();
        result.append(this.includeMin ? (char)'[' : '(');
        result.append(this.minVersion);
        result.append(',');
        result.append(this.maxVersion);
        result.append(this.includeMax ? (char)']' : ')');
        return result.toString();
    }
}

