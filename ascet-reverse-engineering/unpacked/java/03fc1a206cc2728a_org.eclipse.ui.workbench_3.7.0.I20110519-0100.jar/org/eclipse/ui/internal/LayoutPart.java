/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISizeProvider;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.DetachedWindow;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.dnd.SwtUtil;

public abstract class LayoutPart
implements ISizeProvider {
    protected ILayoutContainer container;
    protected String id;
    public static final String PROP_VISIBILITY = "PROP_VISIBILITY";
    private int deferCount = 0;

    public LayoutPart(String id) {
        this.id = id;
    }

    public boolean allowsAutoFocus() {
        if (this.container != null) {
            return this.container.allowsAutoFocus();
        }
        return true;
    }

    public abstract void createControl(Composite var1);

    public void dispose() {
    }

    public Rectangle getBounds() {
        return new Rectangle(0, 0, 0, 0);
    }

    public ILayoutContainer getContainer() {
        return this.container;
    }

    public abstract Control getControl();

    public String getID() {
        return this.id;
    }

    public String getCompoundId() {
        return this.getID();
    }

    public boolean isCompressible() {
        return false;
    }

    public Point getSize() {
        Rectangle r = this.getBounds();
        Point ptSize = new Point(r.width, r.height);
        return ptSize;
    }

    public int getSizeFlags(boolean horizontal) {
        return 128;
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        return preferredParallel;
    }

    public IDropTarget getDropTarget(Object draggedObject, Point displayCoordinates) {
        return null;
    }

    public boolean isDocked() {
        Shell s = this.getShell();
        if (s == null) {
            return false;
        }
        return s.getData() instanceof IWorkbenchWindow;
    }

    public Shell getShell() {
        Control ctrl = this.getControl();
        if (!SwtUtil.isDisposed(ctrl)) {
            return ctrl.getShell();
        }
        return null;
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        Shell s = this.getShell();
        if (s == null) {
            return null;
        }
        Object data = s.getData();
        if (data instanceof IWorkbenchWindow) {
            return (IWorkbenchWindow)data;
        }
        if (data instanceof DetachedWindow) {
            return ((DetachedWindow)data).getWorkbenchPage().getWorkbenchWindow();
        }
        return null;
    }

    public void moveAbove(Control refControl) {
    }

    public void reparent(Composite newParent) {
        Control control = this.getControl();
        if (control == null || control.getParent() == newParent) {
            return;
        }
        if (control.isReparentable()) {
            boolean enabled = control.getEnabled();
            control.setEnabled(false);
            control.setParent(newParent);
            control.setEnabled(enabled);
            control.moveAbove(null);
        }
    }

    public boolean getVisible() {
        Control ctrl = this.getControl();
        if (!SwtUtil.isDisposed(ctrl)) {
            return ctrl.getVisible();
        }
        return false;
    }

    public boolean isVisible() {
        Control ctrl = this.getControl();
        if (ctrl != null && !ctrl.isDisposed()) {
            return ctrl.isVisible();
        }
        return false;
    }

    public void setVisible(boolean makeVisible) {
        Control ctrl = this.getControl();
        if (!SwtUtil.isDisposed(ctrl)) {
            if (makeVisible == ctrl.getVisible()) {
                return;
            }
            if (!makeVisible && this.isFocusAncestor(ctrl)) {
                ctrl.getShell().forceFocus();
            }
            ctrl.setVisible(makeVisible);
        }
    }

    private boolean isFocusAncestor(Control ctrl) {
        Control f = ctrl.getDisplay().getFocusControl();
        while (f != null && f != ctrl) {
            f = f.getParent();
        }
        return f == ctrl;
    }

    public void setBounds(Rectangle r) {
        Control ctrl = this.getControl();
        if (!SwtUtil.isDisposed(ctrl)) {
            ctrl.setBounds(r);
        }
    }

    public void setContainer(ILayoutContainer container) {
        this.container = container;
        if (container != null) {
            this.setZoomed(container.childIsZoomed(this));
        }
    }

    public void setFocus() {
    }

    public void setID(String str) {
        this.id = str;
    }

    public LayoutPart getPart() {
        return this;
    }

    public void childRequestZoomIn(LayoutPart toZoom) {
    }

    public void childRequestZoomOut() {
    }

    public final void requestZoomOut() {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            container.childRequestZoomOut();
        }
    }

    public final void requestZoomIn() {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            container.childRequestZoomIn(this);
        }
    }

    public final boolean isObscuredByZoom() {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            return container.childObscuredByZoom(this);
        }
        return false;
    }

    public boolean childObscuredByZoom(LayoutPart toTest) {
        return false;
    }

    public boolean childIsZoomed(LayoutPart childToTest) {
        return false;
    }

    public void setZoomed(boolean isZoomed) {
    }

    public final void deferUpdates(boolean shouldDefer) {
        if (shouldDefer) {
            if (this.deferCount == 0) {
                this.startDeferringEvents();
            }
            ++this.deferCount;
        } else if (this.deferCount > 0) {
            --this.deferCount;
            if (this.deferCount == 0) {
                this.handleDeferredEvents();
            }
        }
    }

    protected void startDeferringEvents() {
    }

    protected void handleDeferredEvents() {
    }

    protected final boolean isDeferred() {
        return this.deferCount > 0;
    }

    public void describeLayout(StringBuffer buf) {
    }

    public String getPlaceHolderId() {
        return this.getID();
    }

    public void resizeChild(LayoutPart childThatChanged) {
    }

    public void flushLayout() {
        ILayoutContainer container = this.getContainer();
        if (this.getContainer() != null) {
            container.resizeChild(this);
        }
    }

    public boolean allowsAdd(LayoutPart toAdd) {
        return false;
    }

    public void testInvariants() {
    }
}

