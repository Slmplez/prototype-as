/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;

public interface IControlContentAdapter {
    public void setControlContents(Control var1, String var2, int var3);

    public void insertControlContents(Control var1, String var2, int var3);

    public String getControlContents(Control var1);

    public int getCursorPosition(Control var1);

    public Rectangle getInsertionBounds(Control var1);

    public void setCursorPosition(Control var1, int var2);
}

