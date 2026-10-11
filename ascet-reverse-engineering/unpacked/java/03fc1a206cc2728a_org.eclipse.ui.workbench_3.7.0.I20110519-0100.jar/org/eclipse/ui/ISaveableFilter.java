/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.Saveable;

public interface ISaveableFilter {
    public boolean select(Saveable var1, IWorkbenchPart[] var2);
}

