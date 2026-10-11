/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.Transfer
 */
package org.eclipse.jface.util;

import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.Transfer;

public interface TransferDragSourceListener
extends DragSourceListener {
    public Transfer getTransfer();
}

