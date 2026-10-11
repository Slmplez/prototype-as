/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnLayoutData;

public class ColumnPixelData
extends ColumnLayoutData {
    public int width;
    public boolean addTrim = false;

    public ColumnPixelData(int widthInPixels) {
        this(widthInPixels, true, false);
    }

    public ColumnPixelData(int widthInPixels, boolean resizable) {
        this(widthInPixels, resizable, false);
    }

    public ColumnPixelData(int widthInPixels, boolean resizable, boolean addTrim) {
        super(resizable);
        Assert.isTrue((widthInPixels >= 0 ? 1 : 0) != 0);
        this.width = widthInPixels;
        this.addTrim = addTrim;
    }
}

