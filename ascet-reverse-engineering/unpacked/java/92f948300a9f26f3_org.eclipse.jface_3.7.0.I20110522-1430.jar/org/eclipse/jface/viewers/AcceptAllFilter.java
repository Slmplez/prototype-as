/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IFilter;

public final class AcceptAllFilter
implements IFilter {
    private static IFilter singleton = new AcceptAllFilter();

    public static IFilter getInstance() {
        return singleton;
    }

    public boolean select(Object toTest) {
        return true;
    }

    public boolean equals(Object other) {
        return other == this || other instanceof AcceptAllFilter;
    }
}

