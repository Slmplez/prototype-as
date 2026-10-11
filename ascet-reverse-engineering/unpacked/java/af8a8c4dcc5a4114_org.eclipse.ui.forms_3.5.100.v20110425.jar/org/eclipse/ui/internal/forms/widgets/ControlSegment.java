/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.forms.widgets.FormUtil;
import org.eclipse.ui.internal.forms.widgets.IFocusSelectable;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.ObjectSegment;

public class ControlSegment
extends ObjectSegment
implements IFocusSelectable {
    private boolean fill;
    private int width = -1;
    private int height = -1;

    public void setFill(boolean fill) {
        this.fill = fill;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public Control getControl(Hashtable resourceTable) {
        Control c;
        Object obj = resourceTable.get(this.getObjectId());
        if (obj instanceof Control && !(c = (Control)obj).isDisposed()) {
            return c;
        }
        return null;
    }

    protected Point getObjectSize(Hashtable resourceTable, int wHint) {
        Control control = this.getControl(resourceTable);
        if (control == null) {
            return new Point(0, 0);
        }
        int realWhint = FormUtil.getWidthHint(wHint, control);
        Point size = control.computeSize(realWhint, -1);
        if (realWhint != -1 && this.fill) {
            size.x = Math.max(size.x, realWhint);
        }
        if (this.width != -1) {
            size.x = this.width;
        }
        if (this.height != -1) {
            size.y = this.height;
        }
        return size;
    }

    public void layout(GC gc, int width, Locator loc, Hashtable resourceTable, boolean selected) {
        super.layout(gc, width, loc, resourceTable, selected);
        Control control = this.getControl(resourceTable);
        if (control != null) {
            control.setBounds(this.getBounds());
        }
    }

    public boolean setFocus(Hashtable resourceTable, boolean next) {
        Control c = this.getControl(resourceTable);
        if (c != null) {
            return this.setFocus(c, next);
        }
        return false;
    }

    private boolean setFocus(Control c, boolean direction) {
        if (c instanceof Composite) {
            Composite comp = (Composite)c;
            Control[] tabList = comp.getTabList();
            if (direction) {
                int i = 0;
                while (i < tabList.length) {
                    if (this.setFocus(tabList[i], direction)) {
                        return true;
                    }
                    ++i;
                }
            } else {
                int i = tabList.length - 1;
                while (i >= 0) {
                    if (this.setFocus(tabList[i], direction)) {
                        return true;
                    }
                    --i;
                }
            }
            if (!(c instanceof Canvas)) {
                return false;
            }
        }
        return c.setFocus();
    }

    public boolean isFocusSelectable(Hashtable resourceTable) {
        Control c = this.getControl(resourceTable);
        return c != null;
    }
}

