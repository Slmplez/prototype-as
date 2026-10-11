/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.text.NumberFormat;
import java.util.Date;
import org.eclipse.jdt.internal.core.ElementCache;
import org.eclipse.jdt.internal.core.JavaElement;

public class VerboseElementCache
extends ElementCache {
    private Object beingAdded;
    private String name;

    public VerboseElementCache(int size, String name) {
        super(size);
        this.name = name;
    }

    protected boolean makeSpace(int space) {
        if (this.beingAdded == null) {
            return super.makeSpace(space);
        }
        String fillingRatio = this.toStringFillingRation(this.name);
        boolean result = super.makeSpace(space);
        String newFillingRatio = this.toStringFillingRation(this.name);
        if (!fillingRatio.equals(newFillingRatio)) {
            System.out.println(Thread.currentThread() + " " + new Date(System.currentTimeMillis()).toString());
            System.out.println(Thread.currentThread() + " MADE SPACE FOR " + fillingRatio + " (NOW " + NumberFormat.getInstance().format(this.fillingRatio()) + "% full)");
            System.out.println(Thread.currentThread() + " WHILE OPENING " + ((JavaElement)this.beingAdded).toStringWithAncestors());
            System.out.println();
        }
        return result;
    }

    public Object put(Object key, Object value) {
        try {
            if (this.beingAdded == null) {
                this.beingAdded = key;
            }
            Object object = super.put(key, value);
            return object;
        }
        finally {
            if (key.equals(this.beingAdded)) {
                this.beingAdded = null;
            }
        }
    }
}

