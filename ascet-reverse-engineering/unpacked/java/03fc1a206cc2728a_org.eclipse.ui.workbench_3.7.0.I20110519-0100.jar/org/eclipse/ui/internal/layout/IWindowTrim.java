/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.widgets.Control;

public interface IWindowTrim {
    public Control getControl();

    public int getValidSides();

    public void dock(int var1);

    public String getId();

    public String getDisplayName();

    public boolean isCloseable();

    public void handleClose();

    public int getWidthHint();

    public int getHeightHint();

    public boolean isResizeable();
}

