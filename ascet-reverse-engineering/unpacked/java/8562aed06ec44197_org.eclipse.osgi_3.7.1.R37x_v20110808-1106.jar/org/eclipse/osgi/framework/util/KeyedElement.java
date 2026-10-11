/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.util;

public interface KeyedElement {
    public int getKeyHashCode();

    public boolean compare(KeyedElement var1);

    public Object getKey();
}

