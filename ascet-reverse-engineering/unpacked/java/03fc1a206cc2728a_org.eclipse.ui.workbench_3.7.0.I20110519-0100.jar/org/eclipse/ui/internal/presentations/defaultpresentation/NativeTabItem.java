/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.TabItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.presentations.defaultpresentation.NativeTabFolder;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.WidgetTabItem;
import org.eclipse.ui.internal.util.Util;

public class NativeTabItem
extends WidgetTabItem {
    public NativeTabItem(NativeTabFolder parent, int index) {
        super((Widget)new TabItem(parent.getTabFolder(), 0, index));
    }

    public Rectangle getBounds() {
        return new Rectangle(0, 0, 0, 0);
    }

    public void setInfo(PartInfo info) {
        String oldToolTip;
        TabItem widget = (TabItem)this.getWidget();
        if (!Util.equals(widget.getText(), info.name)) {
            widget.setText(info.name);
        }
        if (!Util.equals(info.toolTip, oldToolTip = Util.safeString(widget.getToolTipText()))) {
            String toolTip = info.toolTip;
            if (toolTip.length() == 0) {
                toolTip = null;
            }
            widget.setToolTipText(toolTip);
        }
    }
}

