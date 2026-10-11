/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.theme;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.theme.DrawData;

public class RangeDrawData
extends DrawData {
    public int selection;
    public int minimum;
    public int maximum;

    int getSelection(Point position, Rectangle bounds) {
        return 0;
    }
}

