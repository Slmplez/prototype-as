/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import java.util.Set;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.Perspective;

interface IStickyViewManager {
    public void remove(String var1);

    public void add(String var1, Set var2);

    public void clear();

    public void update(Perspective var1, Perspective var2);

    public void save(IMemento var1);

    public void restore(IMemento var1);
}

