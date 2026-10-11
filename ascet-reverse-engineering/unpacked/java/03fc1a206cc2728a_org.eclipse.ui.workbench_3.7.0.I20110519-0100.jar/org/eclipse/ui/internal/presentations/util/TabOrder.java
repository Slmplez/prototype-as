/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.ui.IMemento;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IPresentationSerializer;

public abstract class TabOrder {
    public abstract void add(IPresentablePart var1);

    public abstract void addInitial(IPresentablePart var1);

    public abstract void restoreState(IPresentationSerializer var1, IMemento var2);

    public abstract void saveState(IPresentationSerializer var1, IMemento var2);

    public abstract void insert(IPresentablePart var1, int var2);

    public abstract void move(IPresentablePart var1, int var2);

    public abstract void remove(IPresentablePart var1);

    public abstract void select(IPresentablePart var1);

    public abstract IPresentablePart[] getPartList();
}

