/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.search.IJavaSearchScope;

public abstract class AbstractSearchScope
implements IJavaSearchScope {
    public boolean includesBinaries() {
        return true;
    }

    public boolean includesClasspaths() {
        return true;
    }

    public abstract void processDelta(IJavaElementDelta var1, int var2);

    public void setIncludesBinaries(boolean includesBinaries) {
    }

    public void setIncludesClasspaths(boolean includesClasspaths) {
    }
}

