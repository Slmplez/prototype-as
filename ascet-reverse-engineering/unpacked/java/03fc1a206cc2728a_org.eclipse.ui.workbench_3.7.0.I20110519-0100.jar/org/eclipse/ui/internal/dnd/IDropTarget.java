/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.dnd;

import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Rectangle;

public interface IDropTarget {
    public void drop();

    public Cursor getCursor();

    public Rectangle getSnapRectangle();
}

