/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.BundleDescription;

final class BundleDeltaImpl
implements BundleDelta {
    private volatile BundleDescription bundleDescription;
    private volatile int type;

    public BundleDeltaImpl(BundleDescription bundleDescription) {
        this(bundleDescription, 0);
    }

    public BundleDeltaImpl(BundleDescription bundleDescription, int type) {
        this.bundleDescription = bundleDescription;
        this.type = type;
    }

    public BundleDescription getBundle() {
        return this.bundleDescription;
    }

    public int getType() {
        return this.type;
    }

    protected void setBundle(BundleDescription bundleDescription) {
        this.bundleDescription = bundleDescription;
    }

    protected void setType(int type) {
        this.type = type;
    }

    public String toString() {
        return String.valueOf(this.bundleDescription.getSymbolicName()) + '_' + this.bundleDescription.getVersion() + " (" + BundleDeltaImpl.toTypeString(this.type) + ")";
    }

    private static String toTypeString(int type) {
        StringBuffer typeStr = new StringBuffer();
        if ((type & 1) != 0) {
            typeStr.append("ADDED,");
        }
        if ((type & 2) != 0) {
            typeStr.append("REMOVED,");
        }
        if ((type & 8) != 0) {
            typeStr.append("RESOLVED,");
        }
        if ((type & 0x10) != 0) {
            typeStr.append("UNRESOLVED,");
        }
        if ((type & 0x20) != 0) {
            typeStr.append("LINKAGE_CHANGED,");
        }
        if ((type & 4) != 0) {
            typeStr.append("UPDATED,");
        }
        if ((type & 0x80) != 0) {
            typeStr.append("REMOVAL_PENDING,");
        }
        if ((type & 0x100) != 0) {
            typeStr.append("REMOVAL_COMPLETE,");
        }
        if (typeStr.length() > 0) {
            typeStr.deleteCharAt(typeStr.length() - 1);
        }
        return typeStr.toString();
    }

    public int compareTo(BundleDelta obj) {
        long idcomp = this.getBundle().getBundleId() - obj.getBundle().getBundleId();
        return idcomp < 0L ? -1 : (idcomp > 0L ? 1 : 0);
    }
}

