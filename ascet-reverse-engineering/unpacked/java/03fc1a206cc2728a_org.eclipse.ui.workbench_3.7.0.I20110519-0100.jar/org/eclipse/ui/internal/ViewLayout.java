/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.ui.IViewLayout;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.ViewLayoutRec;

public class ViewLayout
implements IViewLayout {
    private ViewLayoutRec rec;

    public ViewLayout(PageLayout pageLayout, ViewLayoutRec rec) {
        Assert.isNotNull((Object)pageLayout);
        Assert.isNotNull((Object)rec);
        this.rec = rec;
    }

    public boolean getShowTitle() {
        return this.rec.showTitle;
    }

    public boolean isCloseable() {
        return this.rec.isCloseable;
    }

    public boolean isMoveable() {
        return this.rec.isMoveable;
    }

    public boolean isStandalone() {
        return this.rec.isStandalone;
    }

    public void setCloseable(boolean closeable) {
        this.rec.isCloseable = closeable;
    }

    public void setMoveable(boolean moveable) {
        this.rec.isMoveable = moveable;
    }
}

