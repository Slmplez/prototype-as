/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkingSet;

public interface IWorkingSetUpdater {
    public void add(IWorkingSet var1);

    public boolean remove(IWorkingSet var1);

    public boolean contains(IWorkingSet var1);

    public void dispose();
}

