/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal;

import java.util.List;
import org.eclipse.swt.graphics.Rectangle;

public class TrimArea {
    String areaId;
    int orientation;
    int defaultMinor;
    boolean cacheOK;
    Rectangle areaBounds;
    List trimContents;
    List trimLines;

    public TrimArea(String id, int orientation, int defaultMinor) {
        this.areaId = id;
        this.orientation = orientation;
        this.defaultMinor = defaultMinor;
        this.areaBounds = new Rectangle(0, 0, 0, 0);
        this.cacheOK = false;
    }
}

