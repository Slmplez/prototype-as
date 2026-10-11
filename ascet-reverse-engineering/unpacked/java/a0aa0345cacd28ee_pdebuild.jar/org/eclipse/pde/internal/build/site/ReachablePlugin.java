/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.site;

import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.build.Utils;
import org.osgi.framework.Version;

public class ReachablePlugin
implements Comparable {
    public static final VersionRange WIDEST_RANGE = VersionRange.emptyRange;
    public static final VersionRange NARROWEST_RANGE = new VersionRange(Version.emptyVersion, true, Version.emptyVersion, false);
    private final String id;
    private final VersionRange range;

    public ReachablePlugin(String id, VersionRange range) {
        this.id = id;
        this.range = range;
    }

    public ReachablePlugin(FeatureEntry entry) {
        this.id = entry.getId();
        this.range = Utils.createVersionRange(entry);
    }

    public String getId() {
        return this.id;
    }

    public VersionRange getRange() {
        return this.range;
    }

    public int compareTo(Object o) {
        if (o instanceof ReachablePlugin) {
            ReachablePlugin toCompare = (ReachablePlugin)o;
            int result = this.id.compareTo(toCompare.id);
            if (result != 0) {
                return result;
            }
            result = this.substract(toCompare.range.getMaximum(), toCompare.range.getMinimum()).compareTo(this.substract(this.range.getMaximum(), this.range.getMinimum()));
            if (result != 0) {
                return result;
            }
            if (this.range.getIncludeMaximum() && !toCompare.range.getIncludeMaximum()) {
                return -1;
            }
            if (!this.range.getIncludeMaximum() && toCompare.range.getIncludeMaximum()) {
                return 1;
            }
            if (this.equals(o)) {
                return 0;
            }
            result = this.range.getMinimum().compareTo(toCompare.range.getMaximum());
            if (result != 0) {
                return result;
            }
            return -1;
        }
        return -1;
    }

    private Version substract(Version v1, Version v2) {
        int major;
        int minor;
        int micro = 0;
        int carry = 0;
        if (v1.getMicro() < v2.getMicro()) {
            micro = Integer.MAX_VALUE - v2.getMicro() + v1.getMicro();
            carry = 1;
        } else {
            micro = v1.getMicro() - v2.getMicro();
            carry = 0;
        }
        if (v1.getMinor() < v2.getMinor() + carry) {
            minor = Integer.MAX_VALUE - (v2.getMinor() + carry) + v1.getMinor();
            carry = 1;
        } else {
            minor = v1.getMinor() - (v2.getMinor() + carry);
            carry = 0;
        }
        if (v1.getMajor() < v2.getMajor() + carry) {
            major = Integer.MAX_VALUE - (v2.getMajor() + carry) + v1.getMajor();
            carry = 1;
        } else {
            major = v1.getMajor() - (v2.getMajor() + carry);
            carry = 0;
        }
        return new Version(major, minor, micro);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ReachablePlugin) {
            ReachablePlugin toCompare = (ReachablePlugin)obj;
            if (!this.id.equals(toCompare.id)) {
                return false;
            }
            if (this.range.getIncludeMinimum() != toCompare.range.getIncludeMinimum()) {
                return false;
            }
            if (this.range.getIncludeMaximum() != toCompare.range.getIncludeMaximum()) {
                return false;
            }
            return this.range.getMinimum().equals((Object)toCompare.range.getMinimum()) && this.range.getMaximum().equals((Object)toCompare.range.getMaximum());
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode() + this.range.hashCode() * 17;
    }

    public String toString() {
        return String.valueOf(this.id) + ' ' + this.range.toString();
    }
}

