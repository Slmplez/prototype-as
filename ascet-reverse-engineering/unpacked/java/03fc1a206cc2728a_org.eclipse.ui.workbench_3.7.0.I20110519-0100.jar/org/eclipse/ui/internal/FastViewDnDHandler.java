/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.PerspectiveHelper;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.presentations.PresentationUtil;

public class FastViewDnDHandler
implements IDragOverListener {
    private String id;
    private ToolBarManager tbm;
    private WorkbenchWindow wbw;
    private ViewDropTarget dropTarget = null;
    private Listener dragListener = new Listener(){

        public void handleEvent(Event event) {
            Point local;
            Point position = DragUtil.getEventLoc(event);
            ToolBar toolbar = FastViewDnDHandler.this.tbm.getControl();
            ToolItem item = toolbar.getItem(local = toolbar.toControl(position));
            IViewReference ref = (IViewReference)item.getData("FastView");
            if (ref != null) {
                FastViewDnDHandler.this.startDraggingFastView(ref, position, false);
            }
        }
    };

    public FastViewDnDHandler(String id, final ToolBarManager tbm, WorkbenchWindow wbw) {
        this.id = id;
        this.tbm = tbm;
        this.wbw = wbw;
        DragUtil.addDragTarget((Control)tbm.getControl(), this);
        PresentationUtil.addDragListener((Control)tbm.getControl(), this.dragListener);
        tbm.getControl().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                DragUtil.removeDragTarget((Control)e.widget, FastViewDnDHandler.this);
                PresentationUtil.removeDragListener((Control)tbm.getControl(), FastViewDnDHandler.this.dragListener);
            }
        });
    }

    private ToolItem getToolItem(Point position) {
        ToolBar toolbar = this.tbm.getControl();
        Point local = toolbar.toControl(position);
        return toolbar.getItem(local);
    }

    public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
        if (this.isStandaloneStack()) {
            return null;
        }
        ToolItem targetItem = this.getToolItem(position);
        if (draggedObject instanceof ViewPane) {
            ViewPane pane = (ViewPane)draggedObject;
            if (pane.getPage() != this.wbw.getActivePage()) {
                return null;
            }
            ArrayList<Object> newList = new ArrayList<Object>(1);
            newList.add(draggedObject);
            return this.createDropTarget(newList, targetItem);
        }
        if (draggedObject instanceof ViewStack) {
            ViewStack folder = (ViewStack)draggedObject;
            if (folder.getWorkbenchWindow() != this.wbw) {
                return null;
            }
            ArrayList<LayoutPart> viewList = new ArrayList<LayoutPart>(folder.getItemCount());
            LayoutPart[] children = folder.getChildren();
            int idx = 0;
            while (idx < children.length) {
                if (!(children[idx] instanceof PartPlaceholder)) {
                    viewList.add(children[idx]);
                }
                ++idx;
            }
            return this.createDropTarget(viewList, targetItem);
        }
        return null;
    }

    private boolean isStandaloneStack() {
        Perspective persp = this.wbw.getActiveWorkbenchPage().getActivePerspective();
        List fvs = persp.getFastViewManager().getFastViews(this.id);
        Iterator iterator = fvs.iterator();
        while (iterator.hasNext()) {
            IViewReference ref = (IViewReference)iterator.next();
            if (!persp.isStandaloneView(ref)) continue;
            return true;
        }
        return false;
    }

    private IDropTarget createDropTarget(List viewList, ToolItem targetItem) {
        if (this.dropTarget == null) {
            this.dropTarget = new ViewDropTarget(viewList, targetItem);
        } else {
            this.dropTarget.setTarget(viewList, targetItem);
        }
        return this.dropTarget;
    }

    public Rectangle getLocationOfNextIcon() {
        boolean horizontal;
        ToolBar control = this.tbm.getControl();
        Rectangle result = control.getBounds();
        Point size = control.computeSize(-1, -1, false);
        result.height = size.y;
        result.width = size.x;
        boolean bl = horizontal = (control.getStyle() & 0x200) == 0;
        if (control.getItemCount() == 0) {
            Geometry.setDimension((Rectangle)result, (boolean)horizontal, (int)0);
        }
        int hoverSide = horizontal ? 131072 : 1024;
        result = Geometry.getExtrudedEdge((Rectangle)result, (int)(-Geometry.getDimension((Rectangle)result, (!horizontal ? 1 : 0) != 0)), (int)hoverSide);
        return Geometry.toDisplay((Control)control.getParent(), (Rectangle)result);
    }

    private int getIndex(IViewReference toFind) {
        ToolItem[] items = this.tbm.getControl().getItems();
        int i = 0;
        while (i < items.length) {
            if (items[i].getData("FastView") == toFind) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected void startDraggingFastView(IViewReference ref, Point position, boolean usingKeyboard) {
        int index = this.getIndex(ref);
        if (index == -1) {
            return;
        }
        ToolItem item = this.tbm.getControl().getItem(index);
        Rectangle dragRect = Geometry.toDisplay((Control)this.tbm.getControl(), (Rectangle)item.getBounds());
        this.startDrag(((WorkbenchPartReference)((Object)ref)).getPane(), dragRect, position, usingKeyboard);
    }

    private void startDrag(Object toDrag, Rectangle dragRect, Point position, boolean usingKeyboard) {
        boolean success;
        ViewPane pane;
        WorkbenchPage page = this.wbw.getActiveWorkbenchPage();
        Perspective persp = page.getActivePerspective();
        if (toDrag instanceof ViewPane && !persp.isMoveable((pane = (ViewPane)toDrag).getViewReference())) {
            return;
        }
        IViewReference oldFastView = null;
        if (persp != null) {
            oldFastView = persp.getActiveFastView();
            if (page != null) {
                page.hideFastView();
            }
        }
        if (page.isPageZoomed()) {
            page.zoomOut();
        }
        if (!(success = DragUtil.performDrag(toDrag, dragRect, position, !usingKeyboard)) && oldFastView != null && page != null) {
            page.toggleFastView(oldFastView);
        }
    }

    class ViewDropTarget
    extends AbstractDropTarget {
        List panes;
        ToolItem curItem;

        public ViewDropTarget(List panesToDrop, ToolItem position) {
            this.setTarget(panesToDrop, position);
        }

        public void setTarget(List panesToDrop, ToolItem position) {
            this.panes = panesToDrop;
            this.curItem = position;
        }

        public void drop() {
            if (this.curItem == null) {
                return;
            }
            Perspective persp = FastViewDnDHandler.this.wbw.getActiveWorkbenchPage().getActivePerspective();
            FastViewManager fvm = persp.getFastViewManager();
            int insertIndex = FastViewDnDHandler.this.tbm.getControl().indexOf(this.curItem);
            Iterator iter = this.panes.iterator();
            while (iter.hasNext()) {
                ViewPane pane = (ViewPane)iter.next();
                IViewReference ref = pane.getViewReference();
                this.adoptRef(ref);
                fvm.addViewReference(FastViewDnDHandler.this.id, insertIndex++, ref, !iter.hasNext());
            }
        }

        private void adoptRef(IViewReference ref) {
            Perspective persp = FastViewDnDHandler.this.wbw.getActiveWorkbenchPage().getActivePerspective();
            PerspectiveHelper helper = persp.getPresentation();
            ContainerPlaceholder ourContainerPlaceholder = (ContainerPlaceholder)helper.findPart(FastViewDnDHandler.this.id, null);
            LayoutPart refPart = helper.findPart(ref.getId(), ref.getSecondaryId());
            ILayoutContainer refContainer = refPart.container;
            if (refContainer != ourContainerPlaceholder) {
                if (refPart instanceof PartPlaceholder) {
                    if (refContainer instanceof ContainerPlaceholder) {
                        ViewStack realContainer = (ViewStack)((ContainerPlaceholder)refContainer).getRealContainer();
                        realContainer.remove(refPart);
                    } else if (refContainer instanceof ViewStack) {
                        refContainer.remove(refPart);
                    }
                } else {
                    helper.derefPart(refPart);
                }
                PartPlaceholder newPlaceholder = new PartPlaceholder(ref.getId());
                ourContainerPlaceholder.add(newPlaceholder);
            }
        }

        public Cursor getCursor() {
            return DragCursors.getCursor(7);
        }

        public Rectangle getSnapRectangle() {
            if (this.curItem == null) {
                if (FastViewDnDHandler.this.tbm.getControl().getItemCount() > 0) {
                    return FastViewDnDHandler.this.getLocationOfNextIcon();
                }
                return DragUtil.getDisplayBounds((Control)FastViewDnDHandler.this.tbm.getControl());
            }
            return Geometry.toDisplay((Control)FastViewDnDHandler.this.tbm.getControl(), (Rectangle)this.curItem.getBounds());
        }
    }
}

