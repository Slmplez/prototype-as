/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistable;

public interface IPersistableEditor
extends IPersistable {
    public void restoreState(IMemento var1);
}

