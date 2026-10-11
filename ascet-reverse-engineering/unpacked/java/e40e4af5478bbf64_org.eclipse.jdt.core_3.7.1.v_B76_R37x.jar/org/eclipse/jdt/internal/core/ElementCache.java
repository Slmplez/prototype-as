/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OverflowingLRUCache;
import org.eclipse.jdt.internal.core.util.LRUCache;

public class ElementCache
extends OverflowingLRUCache {
    IJavaElement spaceLimitParent = null;

    public ElementCache(int size) {
        super(size);
    }

    public ElementCache(int size, int overflow) {
        super(size, overflow);
    }

    protected boolean close(LRUCache.LRUCacheEntry entry) {
        Openable element;
        block3: {
            element = (Openable)entry.key;
            try {
                if (element.canBeRemovedFromCache()) break block3;
                return false;
            }
            catch (JavaModelException javaModelException) {
                return false;
            }
        }
        element.close();
        return true;
    }

    protected void ensureSpaceLimit(Object info, IJavaElement parent) {
        int childrenSize = ((JavaElementInfo)info).getChildren().length;
        int spaceNeeded = 1 + (int)((1.0 + this.loadFactor) * (double)(childrenSize + this.overflow));
        if (this.spaceLimit < spaceNeeded) {
            this.shrink();
            this.setSpaceLimit(spaceNeeded);
            this.spaceLimitParent = parent;
        }
    }

    protected LRUCache newInstance(int size, int newOverflow) {
        return new ElementCache(size, newOverflow);
    }

    protected void resetSpaceLimit(int defaultLimit, IJavaElement parent) {
        if (parent.equals(this.spaceLimitParent)) {
            this.setSpaceLimit(defaultLimit);
            this.spaceLimitParent = null;
        }
    }
}

