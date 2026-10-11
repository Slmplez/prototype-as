/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.watson;

import org.eclipse.core.internal.watson.IElementComparator;

public final class DefaultElementComparator
implements IElementComparator {
    private static DefaultElementComparator singleton;

    protected DefaultElementComparator() {
    }

    public int compare(Object oldInfo, Object newInfo) {
        if (oldInfo == null && newInfo == null) {
            return 0;
        }
        if (oldInfo == null || newInfo == null) {
            return 1;
        }
        return this.testEquality(oldInfo, newInfo) ? 0 : 1;
    }

    public static IElementComparator getComparator() {
        if (singleton == null) {
            singleton = new DefaultElementComparator();
        }
        return singleton;
    }

    protected boolean testEquality(Object oldInfo, Object newInfo) {
        if (oldInfo == null && newInfo == null) {
            return true;
        }
        if (oldInfo == null || newInfo == null) {
            return false;
        }
        return oldInfo.equals(newInfo);
    }
}

