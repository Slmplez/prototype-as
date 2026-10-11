/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.PartInfo;

public class EmptyTabItem
extends AbstractTabItem {
    public Rectangle getBounds() {
        return new Rectangle(0, 0, 0, 0);
    }

    public void setInfo(PartInfo info) {
    }

    public void dispose() {
    }

    public Object getData() {
        return null;
    }

    public void setData(Object data) {
    }
}

