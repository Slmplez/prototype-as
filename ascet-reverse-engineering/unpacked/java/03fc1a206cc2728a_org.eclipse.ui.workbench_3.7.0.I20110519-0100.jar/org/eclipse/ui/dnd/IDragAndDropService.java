/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.dnd;

import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.widgets.Control;

public interface IDragAndDropService {
    public void addMergedDropTarget(Control var1, int var2, Transfer[] var3, DropTargetListener var4);

    public void removeMergedDropTarget(Control var1);
}

