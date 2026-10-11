/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.presentations.IPresentablePart;

public final class PartInfo {
    public String name;
    public String title;
    public String contentDescription;
    public String toolTip;
    public Image image;
    public boolean dirty;

    public PartInfo() {
        this.name = "";
        this.title = "";
        this.contentDescription = "";
        this.toolTip = "";
        this.image = null;
    }

    public PartInfo(IPresentablePart part) {
        this.set(part);
    }

    public void set(IPresentablePart part) {
        this.name = part.getName();
        this.title = part.getTitle();
        this.contentDescription = part.getTitleStatus();
        this.image = part.getTitleImage();
        this.toolTip = part.getTitleToolTip();
        this.dirty = part.isDirty();
    }
}

