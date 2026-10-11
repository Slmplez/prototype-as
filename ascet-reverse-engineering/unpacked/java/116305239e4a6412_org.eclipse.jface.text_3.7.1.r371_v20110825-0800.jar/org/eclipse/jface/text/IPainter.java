/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IPaintPositionManager;

public interface IPainter {
    public static final int SELECTION = 0;
    public static final int TEXT_CHANGE = 1;
    public static final int KEY_STROKE = 2;
    public static final int MOUSE_BUTTON = 4;
    public static final int INTERNAL = 8;
    public static final int CONFIGURATION = 16;

    public void dispose();

    public void paint(int var1);

    public void deactivate(boolean var1);

    public void setPositionManager(IPaintPositionManager var1);
}

