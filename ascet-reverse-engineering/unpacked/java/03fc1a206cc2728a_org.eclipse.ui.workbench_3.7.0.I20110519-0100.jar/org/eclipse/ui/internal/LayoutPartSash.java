/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Sash
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutTree;
import org.eclipse.ui.internal.LayoutTreeNode;
import org.eclipse.ui.internal.PartSashContainer;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.presentations.AbstractPresentationFactory;

class LayoutPartSash
extends LayoutPart {
    private Sash sash;
    private boolean enabled = false;
    private PartSashContainer rootContainer;
    private int style;
    private LayoutPartSash preLimit;
    private LayoutPartSash postLimit;
    SelectionListener selectionListener;
    private int left = 300;
    private int right = 300;
    private Rectangle bounds = new Rectangle(0, 0, 0, 0);
    private AbstractPresentationFactory presFactory;
    private boolean isVisible;

    LayoutPartSash(PartSashContainer rootContainer, int style) {
        super(null);
        this.style = style;
        this.rootContainer = rootContainer;
        this.selectionListener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                LayoutPartSash.this.checkDragLimit(e);
                if (e.detail != 1) {
                    LayoutPartSash.this.widgetSelected(e.x, e.y, e.width, e.height);
                }
            }
        };
    }

    private void checkDragLimit(SelectionEvent event) {
        boolean vertical;
        LayoutTree root = this.rootContainer.getLayoutTree();
        LayoutTreeNode node = root.findSash(this);
        Rectangle nodeBounds = node.getBounds();
        Rectangle eventRect = new Rectangle(event.x, event.y, event.width, event.height);
        boolean bl = vertical = this.style == 512;
        if (!vertical) {
            Geometry.flipXY((Rectangle)nodeBounds);
            Geometry.flipXY((Rectangle)eventRect);
        }
        int eventX = eventRect.x;
        int left = Math.max(0, eventX - nodeBounds.x);
        left = Math.min(left, nodeBounds.width - this.getSashSize());
        int right = nodeBounds.width - left - this.getSashSize();
        LayoutTreeNode.ChildSizes sizes = node.computeChildSizes(nodeBounds.width, nodeBounds.height, left, right, nodeBounds.width);
        eventRect.x = nodeBounds.x + sizes.left;
        if (!vertical) {
            Geometry.flipXY((Rectangle)eventRect);
        }
        event.x = eventRect.x;
        event.y = eventRect.y;
    }

    public void createControl(Composite parent) {
        if (this.isVisible) {
            this.doCreateControl();
        }
    }

    private void doCreateControl() {
        if (this.sash == null) {
            AbstractPresentationFactory factory = this.getPresentationFactory();
            int sashStyle = AbstractPresentationFactory.SASHTYPE_NORMAL | this.style;
            this.sash = factory.createSash(this.rootContainer.getParent(), sashStyle);
            this.sash.addSelectionListener(this.selectionListener);
            this.sash.setEnabled(this.enabled);
            this.sash.setBounds(this.bounds);
        }
    }

    public void setBounds(Rectangle r) {
        super.setBounds(r);
        this.bounds = r;
    }

    public void setVisible(boolean visible) {
        if (visible == this.isVisible) {
            return;
        }
        if (visible) {
            this.doCreateControl();
        } else {
            this.dispose();
        }
        super.setVisible(visible);
        this.isVisible = visible;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void dispose() {
        if (this.sash != null) {
            this.bounds = this.sash.getBounds();
            this.sash.dispose();
        }
        this.sash = null;
    }

    public Rectangle getBounds() {
        if (this.sash == null) {
            return this.bounds;
        }
        return this.sash.getBounds();
    }

    public Control getControl() {
        return this.sash;
    }

    public String getID() {
        return null;
    }

    LayoutPartSash getPostLimit() {
        return this.postLimit;
    }

    LayoutPartSash getPreLimit() {
        return this.preLimit;
    }

    int getLeft() {
        return this.left;
    }

    int getRight() {
        return this.right;
    }

    boolean isHorizontal() {
        return (this.style & 0x100) == 256;
    }

    boolean isVertical() {
        return (this.style & 0x200) == 512;
    }

    void setPostLimit(LayoutPartSash newPostLimit) {
        this.postLimit = newPostLimit;
    }

    void setPreLimit(LayoutPartSash newPreLimit) {
        this.preLimit = newPreLimit;
    }

    void setRatio(float newRatio) {
        int total = this.left + this.right;
        int newLeft = (int)((float)total * newRatio);
        this.setSizes(newLeft, total - newLeft);
    }

    void setSizes(int left, int right) {
        if (left < 0 || right < 0) {
            return;
        }
        if (left == this.left && right == this.right) {
            return;
        }
        this.left = left;
        this.right = right;
        this.flushCache();
    }

    private void flushCache() {
        LayoutTreeNode node;
        LayoutTree root = this.rootContainer.getLayoutTree();
        if (root != null && (node = root.findSash(this)) != null) {
            node.flushCache();
        }
    }

    private void widgetSelected(int x, int y, int width, int height) {
        if (!this.enabled) {
            return;
        }
        LayoutTree root = this.rootContainer.getLayoutTree();
        LayoutTreeNode node = root.findSash(this);
        Rectangle nodeBounds = node.getBounds();
        x -= nodeBounds.x;
        y -= nodeBounds.y;
        if (this.style == 512) {
            this.setSizes(x, nodeBounds.width - x - this.getSashSize());
        } else {
            this.setSizes(y, nodeBounds.height - y - this.getSashSize());
        }
        node.setBounds(nodeBounds);
    }

    public void setEnabled(boolean resizable) {
        this.enabled = resizable;
        if (this.sash != null) {
            this.sash.setEnabled(this.enabled);
        }
    }

    int getSashSize() {
        AbstractPresentationFactory factory = this.getPresentationFactory();
        int sashStyle = AbstractPresentationFactory.SASHTYPE_NORMAL | this.style;
        int size = factory.getSashSize(sashStyle);
        return size;
    }

    private AbstractPresentationFactory getPresentationFactory() {
        if (this.presFactory == null) {
            WorkbenchWindow wbw = (WorkbenchWindow)this.rootContainer.getPage().getWorkbenchWindow();
            WorkbenchWindowConfigurer configurer = wbw.getWindowConfigurer();
            this.presFactory = configurer.getPresentationFactory();
        }
        return this.presFactory;
    }
}

