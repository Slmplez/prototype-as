/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.viewers.deferred;

import org.eclipse.swt.widgets.Control;

abstract class AbstractVirtualTable {
    AbstractVirtualTable() {
    }

    public abstract void clear(int var1);

    public abstract void replace(Object var1, int var2);

    public abstract void setItemCount(int var1);

    public abstract int getTopIndex();

    public abstract int getVisibleItemCount();

    public abstract int getItemCount();

    public abstract Control getControl();
}

