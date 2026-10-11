/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.List;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EList<E>
extends List<E> {
    public void move(int var1, E var2);

    public E move(int var1, int var2);
}

