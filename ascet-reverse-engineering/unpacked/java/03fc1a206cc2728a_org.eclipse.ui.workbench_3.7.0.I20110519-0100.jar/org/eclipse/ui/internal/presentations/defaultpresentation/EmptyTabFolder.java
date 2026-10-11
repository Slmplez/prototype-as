/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.presentations.defaultpresentation.EmptyTabItem;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.EnhancedFillLayout;
import org.eclipse.ui.internal.presentations.util.PartInfo;

public class EmptyTabFolder
extends AbstractTabFolder {
    private Composite control;
    private Control childControl;
    private Color borderColor;

    public EmptyTabFolder(Composite parent, boolean showborder) {
        this.control = new Composite(parent, 0);
        EnhancedFillLayout layout = new EnhancedFillLayout();
        this.control.setLayout((Layout)layout);
        this.borderColor = parent.getDisplay().getSystemColor(18);
        if (showborder) {
            layout.xmargin = 1;
            layout.ymargin = 1;
            this.control.addPaintListener(new PaintListener(){

                public void paintControl(PaintEvent e) {
                    e.gc.setForeground(EmptyTabFolder.this.borderColor);
                    Rectangle rect = EmptyTabFolder.this.control.getClientArea();
                    --rect.width;
                    --rect.height;
                    e.gc.drawRectangle(rect);
                }
            });
        }
    }

    public Point computeSize(int widthHint, int heightHint) {
        if (this.childControl != null) {
            Composite composite;
            if (this.childControl instanceof Composite && (composite = (Composite)this.childControl).getChildren().length == 0) {
                EnhancedFillLayout layout = (EnhancedFillLayout)this.control.getLayout();
                int w = widthHint == -1 ? layout.xmargin * 2 : widthHint;
                int h = heightHint == -1 ? layout.ymargin * 2 : heightHint;
                return new Point(w, h);
            }
            return this.childControl.computeSize(widthHint, heightHint);
        }
        return new Point(0, 0);
    }

    public AbstractTabItem add(int index, int flags) {
        return new EmptyTabItem();
    }

    public Composite getContentParent() {
        return this.control;
    }

    public void setContent(Control newContent) {
        this.childControl = newContent;
    }

    public AbstractTabItem[] getItems() {
        return new AbstractTabItem[0];
    }

    public AbstractTabItem getSelection() {
        return null;
    }

    public void setSelection(AbstractTabItem toSelect) {
    }

    public void setToolbar(Control toolbar) {
        if (toolbar != null) {
            toolbar.setVisible(false);
        }
    }

    public void layout(boolean flushCache) {
        super.layout(flushCache);
        this.control.layout(flushCache);
    }

    public void setSelectedInfo(PartInfo info) {
    }

    public void enablePaneMenu(boolean enabled) {
    }

    public Composite getToolbarParent() {
        return this.control;
    }

    public Control getControl() {
        return this.control;
    }

    public Rectangle getTabArea() {
        return new Rectangle(0, 0, 0, 0);
    }
}

