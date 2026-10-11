/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.presentations.StackDropResult;

public abstract class TabDragHandler {
    public abstract StackDropResult dragOver(Control var1, Point var2, int var3);

    public abstract int getInsertionPosition(Object var1);
}

