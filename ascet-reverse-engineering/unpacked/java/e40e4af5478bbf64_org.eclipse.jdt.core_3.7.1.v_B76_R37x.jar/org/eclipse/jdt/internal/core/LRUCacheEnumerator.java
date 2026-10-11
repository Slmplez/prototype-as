/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Enumeration;

public class LRUCacheEnumerator
implements Enumeration {
    protected LRUEnumeratorElement elementQueue;

    public LRUCacheEnumerator(LRUEnumeratorElement firstElement) {
        this.elementQueue = firstElement;
    }

    public boolean hasMoreElements() {
        return this.elementQueue != null;
    }

    public Object nextElement() {
        Object temp = this.elementQueue.value;
        this.elementQueue = this.elementQueue.next;
        return temp;
    }

    public static class LRUEnumeratorElement {
        public Object value;
        public LRUEnumeratorElement next;

        public LRUEnumeratorElement(Object value) {
            this.value = value;
        }
    }
}

