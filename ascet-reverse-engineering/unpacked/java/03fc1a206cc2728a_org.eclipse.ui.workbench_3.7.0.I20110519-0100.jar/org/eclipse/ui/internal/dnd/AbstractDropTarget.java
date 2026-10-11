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
import org.eclipse.ui.internal.dnd.IDropTarget;

public abstract class AbstractDropTarget
implements IDropTarget {
    public abstract void drop();

    public abstract Cursor getCursor();

    public Rectangle getSnapRectangle() {
        return null;
    }
}

