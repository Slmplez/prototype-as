/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.presentations.util.PartInfo;

public abstract class AbstractTabItem {
    public abstract Rectangle getBounds();

    public abstract void setInfo(PartInfo var1);

    public abstract void dispose();

    public void setBusy(boolean busy) {
    }

    public void setBold(boolean bold) {
    }

    public abstract Object getData();

    public abstract void setData(Object var1);

    public boolean isShowing() {
        return true;
    }
}

