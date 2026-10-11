/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

public interface KeyedElement {
    public int getKeyHashCode();

    public boolean compare(KeyedElement var1);

    public Object getKey();
}

