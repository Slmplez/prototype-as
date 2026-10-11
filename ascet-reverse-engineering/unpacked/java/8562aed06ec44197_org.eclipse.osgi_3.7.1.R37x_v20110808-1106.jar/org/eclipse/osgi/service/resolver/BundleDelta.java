/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleDelta
extends Comparable<BundleDelta> {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    public static final int UPDATED = 4;
    public static final int RESOLVED = 8;
    public static final int UNRESOLVED = 16;
    public static final int LINKAGE_CHANGED = 32;
    public static final int OPTIONAL_LINKAGE_CHANGED = 64;
    public static final int REMOVAL_PENDING = 128;
    public static final int REMOVAL_COMPLETE = 256;

    public BundleDescription getBundle();

    public int getType();

    @Override
    public int compareTo(BundleDelta var1);
}

