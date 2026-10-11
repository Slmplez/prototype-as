/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.layout.IWindowTrim;

public class WindowTrimProxy
implements IWindowTrim {
    private Control fTrimControl;
    private String fId;
    private String fDisplayName;
    private int fValidSides;
    private boolean fIsResizeable = false;
    private int fWidthHint = -1;
    private int fHeightHint = -1;

    public WindowTrimProxy(Control c, String id, String displayName, int validSides) {
        this.fTrimControl = c;
        this.fId = id;
        this.fDisplayName = displayName;
        this.fValidSides = validSides;
    }

    public WindowTrimProxy(Control c, String id, String displayName, int validSides, boolean resizeable) {
        this(c, id, displayName, validSides);
        this.fIsResizeable = resizeable;
    }

    public Control getControl() {
        return this.fTrimControl;
    }

    public int getValidSides() {
        return this.fValidSides;
    }

    public void dock(int dropSide) {
    }

    public String getId() {
        return this.fId;
    }

    public String getDisplayName() {
        return this.fDisplayName;
    }

    public boolean isCloseable() {
        return false;
    }

    public void handleClose() {
    }

    public int getWidthHint() {
        return this.fWidthHint;
    }

    public void setWidthHint(int w) {
        this.fWidthHint = w;
    }

    public int getHeightHint() {
        return this.fHeightHint;
    }

    public void setHeightHint(int h) {
        this.fHeightHint = h;
    }

    public boolean isResizeable() {
        return this.fIsResizeable;
    }
}

