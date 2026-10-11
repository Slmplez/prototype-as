/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 */
package org.eclipse.ui.texteditor;

import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;

public interface ITextEditorDropTargetListener
extends DropTargetListener {
    public Transfer[] getTransfers();
}

