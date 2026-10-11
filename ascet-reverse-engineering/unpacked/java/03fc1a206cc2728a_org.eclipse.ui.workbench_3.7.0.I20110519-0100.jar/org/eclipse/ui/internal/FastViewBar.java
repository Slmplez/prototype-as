/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.FastViewBarContextMenuContribution;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ShowFastViewContribution;
import org.eclipse.ui.internal.ShowViewMenu;
import org.eclipse.ui.internal.TrimUtil;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.layout.CellData;
import org.eclipse.ui.internal.layout.CellLayout;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.Row;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.presentations.PresentationUtil;
import org.osgi.framework.Bundle;

public class FastViewBar
implements IWindowTrim {
    public static String FASTVIEWBAR_ID = "org.eclise.ui.internal.FastViewBar";
    private ToolBarManager fastViewBar;
    private MenuManager fastViewBarMenuManager;
    private MenuManager showViewMenuMgr;
    private FastViewBarContextMenuContribution contextContributionItem;
    private WorkbenchWindow window;
    private IViewReference selection;
    private MenuManager newFastViewMenuMgr;
    private Composite fvbComposite;
    private ToolBar menuTB;
    private ToolItem menuItem;
    private CellData toolBarData;
    private static final int HIDDEN_WIDTH = 5;
    private int oldLength = 0;
    private ViewDropTarget dropTarget;
    private Listener dragListener = new Listener(){

        public void handleEvent(Event event) {
            Point position = DragUtil.getEventLoc(event);
            IViewReference ref = FastViewBar.this.getViewAt(position);
            if (ref == null) {
                FastViewBar.this.startDraggingFastViewBar(position, false);
            } else {
                FastViewBar.this.startDraggingFastView(ref, position, false);
            }
        }
    };
    private Map viewOrientation = new HashMap();
    private Listener addMenuListener = new Listener(){

        public void handleEvent(Event event) {
            Point loc = new Point(event.x, event.y);
            if (event.type == 35) {
                FastViewBar.this.showAddFastViewPopup(loc);
            }
        }
    };
    private Listener menuListener = new Listener(){

        public void handleEvent(Event event) {
            Point loc = new Point(event.x, event.y);
            if (event.type == 35) {
                FastViewBar.this.showFastViewBarPopup(loc);
            }
        }
    };
    private int fCurrentSide = -1;
    private boolean hasNewFastViewDisabled = false;
    static /* synthetic */ Class class$0;

    public FastViewBar(WorkbenchWindow theWindow) {
        this.window = theWindow;
        this.hasNewFastViewDisabled = PrefUtil.getAPIPreferenceStore().getBoolean("disableNewFastView");
        this.fastViewBarMenuManager = new MenuManager();
        this.contextContributionItem = new FastViewBarContextMenuContribution(this);
        this.fastViewBarMenuManager.add((IContributionItem)this.contextContributionItem);
        if (!this.hasNewFastViewDisabled) {
            this.showViewMenuMgr = new MenuManager(WorkbenchMessages.FastViewBar_show_view, "showView");
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.internal.ShowViewMenu");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ShowViewMenu showViewMenu = new ShowViewMenu(this.window, clazz.getName(), true);
            this.showViewMenuMgr.add((IContributionItem)showViewMenu);
            this.fastViewBarMenuManager.add((IContributionItem)this.showViewMenuMgr);
            this.newFastViewMenuMgr = new MenuManager(WorkbenchMessages.FastViewBar_show_view, "showView");
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.ui.internal.ShowViewMenu");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            showViewMenu = new ShowViewMenu(this.window, clazz2.getName(), true);
            this.newFastViewMenuMgr.add((IContributionItem)showViewMenu);
        }
    }

    public static int getInitialSide() {
        String loc = PrefUtil.getAPIPreferenceStore().getString("initialFastViewBarLocation");
        if ("bottom".equals(loc)) {
            return 1024;
        }
        if ("left".equals(loc)) {
            return 16384;
        }
        if ("right".equals(loc)) {
            return 131072;
        }
        Bundle bundle = Platform.getBundle((String)"org.eclipse.ui");
        if (bundle != null) {
            Status status = new Status(2, "org.eclipse.ui", 2, "Invalid value for org.eclipse.ui/initialFastViewBarLocation preference.  Value \"" + loc + "\" should be one of \"" + "left" + "\", \"" + "bottom" + "\", or \"" + "right" + "\".", null);
            Platform.getLog((Bundle)bundle).log((IStatus)status);
        }
        return 1024;
    }

    public void setOrientation(IViewReference refToSet, int newState) {
        if (newState == this.getOrientation(refToSet)) {
            return;
        }
        this.viewOrientation.put(refToSet.getId(), new Integer(newState));
        Perspective persp = this.getPerspective();
        if (persp != null) {
            IViewReference ref = persp.getActiveFastView();
            if (ref != null) {
                persp.setActiveFastView(null);
            }
            persp.setActiveFastView(refToSet);
        }
    }

    private WorkbenchPage getPage() {
        if (this.window == null) {
            return null;
        }
        return this.window.getActiveWorkbenchPage();
    }

    private Perspective getPerspective() {
        WorkbenchPage page = this.getPage();
        if (page == null) {
            return null;
        }
        return page.getActivePerspective();
    }

    public void createControl(Composite parent) {
        this.fvbComposite = new Composite(parent, 0){

            public Point computeSize(int wHint, int hHint, boolean changed) {
                Point size = super.computeSize(wHint, hHint, changed);
                if (Geometry.isHorizontal((int)FastViewBar.this.getSide())) {
                    if (size.y < TrimUtil.TRIM_DEFAULT_HEIGHT) {
                        size.y = TrimUtil.TRIM_DEFAULT_HEIGHT;
                    }
                } else if (size.x < TrimUtil.TRIM_DEFAULT_HEIGHT) {
                    size.x = TrimUtil.TRIM_DEFAULT_HEIGHT;
                }
                return size;
            }
        };
        String tip = WorkbenchMessages.FastViewBar_0;
        this.fvbComposite.setToolTipText(tip);
        this.fvbComposite.addListener(35, this.menuListener);
        PresentationUtil.addDragListener((Control)this.fvbComposite, this.dragListener);
        this.createChildControls();
    }

    protected void createChildControls() {
        int newSide = this.getSide();
        int orientation = Geometry.isHorizontal((int)newSide) ? 256 : 512;
        CellLayout controlLayout = Geometry.isHorizontal((int)newSide) ? new CellLayout(0).setMargins(0, 0).setDefaultRow(Row.growing()).setDefaultColumn(Row.fixed()).setColumn(1, Row.growing()) : new CellLayout(1).setMargins(0, 3).setDefaultColumn(Row.growing()).setDefaultRow(Row.fixed()).setRow(1, Row.growing());
        this.fvbComposite.setLayout((Layout)controlLayout);
        if (!this.hasNewFastViewDisabled) {
            this.menuTB = new ToolBar(this.fvbComposite, 0x800000 | orientation);
            this.menuItem = new ToolItem(this.menuTB, 8, 0);
            Image tbImage = WorkbenchImages.getImage("IMG_ETOOL_NEW_FASTVIEW");
            this.menuItem.setImage(tbImage);
            final String menuTip = WorkbenchMessages.FastViewBar_0;
            this.menuItem.setToolTipText(menuTip);
            this.menuTB.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

                public void getName(AccessibleEvent e) {
                    e.result = menuTip;
                }
            });
            Point size = this.menuTB.computeSize(-1, -1, true);
            this.menuTB.setBounds(0, 0, size.x, size.y);
            this.menuItem.addListener(35, this.addMenuListener);
            this.menuTB.addListener(35, this.addMenuListener);
            this.menuItem.addSelectionListener(new SelectionListener(){

                public void widgetSelected(SelectionEvent e) {
                    Rectangle bb = DragUtil.getDisplayBounds((Control)FastViewBar.this.menuTB);
                    FastViewBar.this.showAddFastViewPopup(new Point(bb.x, bb.y + bb.height));
                }

                public void widgetDefaultSelected(SelectionEvent e) {
                }
            });
            this.toolBarData = new CellData();
            this.toolBarData.align(4, 4);
            this.menuTB.setLayoutData((Object)this.toolBarData);
        }
        this.fastViewBar = new ToolBarManager(0x800040 | orientation);
        this.fastViewBar.add((IContributionItem)new ShowFastViewContribution(this.window));
        this.fastViewBar.createControl(this.fvbComposite);
        this.getToolBar().addListener(35, this.menuListener);
        IDragOverListener fastViewDragTarget = new IDragOverListener(){

            public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
                ToolItem targetItem = FastViewBar.this.getToolItem(position);
                if (draggedObject instanceof ViewPane) {
                    ViewPane pane = (ViewPane)draggedObject;
                    if (pane.getWorkbenchWindow() != FastViewBar.this.window) {
                        return null;
                    }
                    ArrayList<Object> newList = new ArrayList<Object>(1);
                    newList.add(draggedObject);
                    return FastViewBar.this.createDropTarget(newList, targetItem);
                }
                if (draggedObject instanceof ViewStack) {
                    ViewStack folder = (ViewStack)draggedObject;
                    if (folder.getWorkbenchWindow() != FastViewBar.this.window) {
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
                    return FastViewBar.this.createDropTarget(viewList, targetItem);
                }
                return null;
            }
        };
        this.toolBarData = new CellData();
        this.toolBarData.align(4, 4);
        this.getToolBar().setLayoutData((Object)this.toolBarData);
        PresentationUtil.addDragListener((Control)this.getToolBar(), this.dragListener);
        DragUtil.addDragTarget(this.getControl(), fastViewDragTarget);
        this.update(true);
    }

    private IDropTarget createDropTarget(List viewList, ToolItem targetItem) {
        if (this.dropTarget == null) {
            this.dropTarget = new ViewDropTarget(viewList, targetItem);
        } else {
            this.dropTarget.setTarget(viewList, targetItem);
        }
        return this.dropTarget;
    }

    protected void startDraggingFastView(IViewReference ref, Point position, boolean usingKeyboard) {
        ViewPane pane = (ViewPane)((WorkbenchPartReference)((Object)ref)).getPane();
        ToolItem item = this.itemFor(pane.getViewReference());
        Rectangle dragRect = Geometry.toDisplay((Control)this.getToolBar(), (Rectangle)item.getBounds());
        this.startDrag(((WorkbenchPartReference)((Object)ref)).getPane(), dragRect, position, usingKeyboard);
    }

    private void startDrag(Object toDrag, Rectangle dragRect, Point position, boolean usingKeyboard) {
        boolean success;
        Perspective persp = this.getPerspective();
        WorkbenchPage page = this.getPage();
        IViewReference oldFastView = null;
        if (persp != null) {
            oldFastView = persp.getActiveFastView();
            if (page != null) {
                page.hideFastView();
            }
        }
        if (page != null && page.isZoomed()) {
            page.zoomOut();
        }
        if (!(success = DragUtil.performDrag(toDrag, dragRect, position, !usingKeyboard)) && oldFastView != null && page != null) {
            page.toggleFastView(oldFastView);
        }
    }

    protected void startDraggingFastViewBar(Point position, boolean usingKeyboard) {
        Rectangle dragRect = DragUtil.getDisplayBounds((Control)this.fvbComposite);
        this.startDrag(this, dragRect, position, usingKeyboard);
    }

    private ToolBar getToolBar() {
        return this.fastViewBar.getControl();
    }

    private IViewReference getViewFor(ToolItem item) {
        if (item == null) {
            return null;
        }
        return (IViewReference)item.getData("FastView");
    }

    private IViewReference getViewAt(Point position) {
        return this.getViewFor(this.getToolItem(position));
    }

    private ToolItem getToolItem(Point position) {
        ToolBar toolbar = this.getToolBar();
        Point local = toolbar.toControl(position);
        return toolbar.getItem(local);
    }

    private void showFastViewBarPopup(Point pt) {
        ToolBar toolBar = this.getToolBar();
        Menu menu = this.fastViewBarMenuManager.createContextMenu((Control)toolBar);
        IViewReference selectedView = this.getViewAt(pt);
        this.contextContributionItem.setTarget(selectedView);
        menu.setLocation(pt.x, pt.y);
        menu.setVisible(true);
    }

    private void showAddFastViewPopup(Point pt) {
        Menu menu = this.newFastViewMenuMgr.createContextMenu((Control)this.menuTB);
        menu.setLocation(pt.x, pt.y);
        menu.setVisible(true);
    }

    public int getOrientation(IViewReference ref) {
        return this.isHorizontal(ref) ? 256 : 512;
    }

    public Control getControl() {
        return this.fvbComposite;
    }

    public void dispose() {
        this.fastViewBarMenuManager.dispose();
        this.disposeChildControls();
    }

    protected void disposeChildControls() {
        this.fastViewBar.dispose();
        this.fastViewBar = null;
        if (this.menuItem != null) {
            this.menuItem.dispose();
            this.menuTB.dispose();
        }
        this.oldLength = 0;
    }

    public void update(boolean force) {
        this.fastViewBar.update(force);
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        this.updateLayoutData();
        int idx = 0;
        while (idx < items.length) {
            IViewReference view = this.getViewFor(items[idx]);
            this.viewOrientation.put(view.getId(), new Integer(this.isHorizontal(view) ? 256 : 512));
            ++idx;
        }
        this.fvbComposite.setSize(this.fvbComposite.computeSize(-1, -1));
    }

    private void updateLayoutData() {
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        boolean isHorizontal = Geometry.isHorizontal((int)this.getSide());
        boolean shouldExpand = items.length > 0;
        Point hint = new Point(32, shouldExpand ? -1 : 5);
        if (!isHorizontal) {
            Geometry.flipXY((Point)hint);
        }
        if (shouldExpand) {
            this.toolBarData.setHint(2, hint);
        } else {
            this.toolBarData.setHint(1, hint);
        }
        if (items.length != this.oldLength) {
            LayoutUtil.resize((Control)this.fvbComposite);
            this.oldLength = items.length;
        }
    }

    public IViewReference getSelection() {
        return this.selection;
    }

    public void setSelection(IViewReference selected) {
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        int i = 0;
        while (i < items.length) {
            ToolItem item;
            item.setSelection(this.getView(item = items[i]) == selected);
            ++i;
        }
        this.selection = selected;
    }

    private IViewReference getView(ToolItem item) {
        return (IViewReference)item.getData("FastView");
    }

    private int getIndex(IViewReference toFind) {
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        int i = 0;
        while (i < items.length) {
            if (items[i].getData("FastView") == toFind) {
                return i;
            }
            ++i;
        }
        return items.length;
    }

    private ToolItem getItem(int idx) {
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        if (idx >= items.length) {
            return null;
        }
        return items[idx];
    }

    private ToolItem itemFor(IViewReference toFind) {
        return this.getItem(this.getIndex(toFind));
    }

    public int getValidSides() {
        return 148608;
    }

    public void dock(int side) {
        this.fCurrentSide = side;
        this.disposeChildControls();
        this.createChildControls();
    }

    public int getSide() {
        if (this.fCurrentSide == -1) {
            this.fCurrentSide = FastViewBar.getInitialSide();
        }
        return this.fCurrentSide;
    }

    private boolean isHorizontal(IViewReference ref) {
        boolean horizontalBar;
        Integer orientation = (Integer)this.viewOrientation.get(ref.getId());
        boolean horizontal = horizontalBar = Geometry.isHorizontal((int)this.getSide());
        horizontal = orientation != null ? orientation == 256 : false;
        return horizontal;
    }

    public int getViewSide(IViewReference ref) {
        boolean horizontal = this.isHorizontal(ref);
        if (horizontal) {
            return this.getSide() == 1024 ? 1024 : 128;
        }
        return this.getSide() == 131072 ? 131072 : 16384;
    }

    public void saveState(IMemento memento) {
        memento.putInteger("fastViewLocation", this.getSide());
        Iterator iter = this.viewOrientation.keySet().iterator();
        while (iter.hasNext()) {
            String next = (String)iter.next();
            IMemento orientation = memento.createChild("orientation");
            orientation.putString("view", next);
            orientation.putInteger("position", (Integer)this.viewOrientation.get(next));
        }
    }

    public Rectangle getLocationOfNextIcon() {
        ToolBar control = this.getToolBar();
        Rectangle result = control.getBounds();
        Point size = control.computeSize(-1, -1, false);
        result.height = size.y;
        result.width = size.x;
        boolean horizontal = Geometry.isHorizontal((int)this.getSide());
        if (control.getItemCount() == 0) {
            Geometry.setDimension((Rectangle)result, (boolean)horizontal, (int)0);
        }
        int hoverSide = horizontal ? 131072 : 1024;
        result = Geometry.getExtrudedEdge((Rectangle)result, (int)(-Geometry.getDimension((Rectangle)result, (!horizontal ? 1 : 0) != 0)), (int)hoverSide);
        return Geometry.toDisplay((Control)control.getParent(), (Rectangle)result);
    }

    public void restoreState(IMemento memento) {
        Integer bigInt = memento.getInteger("fastViewLocation");
        if (bigInt != null) {
            this.dock(bigInt);
        }
        IMemento[] orientations = memento.getChildren("orientation");
        int i = 0;
        while (i < orientations.length) {
            IMemento next = orientations[i];
            this.viewOrientation.put(next.getString("view"), next.getInteger("position"));
            ++i;
        }
    }

    public WorkbenchWindow getWindow() {
        return this.window;
    }

    public void restoreView(IViewReference selectedView) {
        WorkbenchPage page;
        if (selectedView != null && (page = this.window.getActiveWorkbenchPage()) != null) {
            IWorkbenchPart toActivate;
            int idx = this.getIndex(selectedView);
            ToolItem item = this.getItem(idx);
            Rectangle bounds = item.getBounds();
            Rectangle startBounds = Geometry.toDisplay((Control)item.getParent(), (Rectangle)bounds);
            Perspective persp = this.getPerspective();
            if (persp != null) {
                persp.getFastViewManager().removeViewReference(selectedView, true, true);
            }
            if ((toActivate = selectedView.getPart(true)) != null) {
                page.activate(toActivate);
            }
            ViewPane pane = (ViewPane)((WorkbenchPartReference)((Object)selectedView)).getPane();
            AnimationEngine.createTweakedAnimation(this.window.getShell(), 400, startBounds, pane.getParentBounds());
        }
    }

    public List getViewRefs() {
        ArrayList<Object> refs = new ArrayList<Object>(this.fastViewBar.getControl().getItemCount());
        ToolItem[] items = this.fastViewBar.getControl().getItems();
        int i = 0;
        while (i < items.length) {
            Object data = items[i].getData("FastView");
            if (data != null) {
                refs.add(data);
            }
            ++i;
        }
        return refs;
    }

    public boolean isCloseable() {
        return false;
    }

    public void handleClose() {
    }

    public String getId() {
        return "org.eclise.ui.internal.FastViewBar";
    }

    public String getDisplayName() {
        return WorkbenchMessages.TrimCommon_FastView_TrimName;
    }

    public FastViewBarContextMenuContribution testContextMenu() {
        return this.contextContributionItem;
    }

    public int getWidthHint() {
        return -1;
    }

    public int getHeightHint() {
        return -1;
    }

    public boolean isResizeable() {
        return false;
    }

    class ViewDropTarget
    extends AbstractDropTarget {
        List panes;
        ToolItem position;

        public ViewDropTarget(List panesToDrop, ToolItem position) {
            this.setTarget(panesToDrop, position);
        }

        public void setTarget(List panesToDrop, ToolItem position) {
            this.panes = panesToDrop;
            this.position = position;
        }

        public void drop() {
            IViewReference view = FastViewBar.this.getViewFor(this.position);
            Iterator iter = this.panes.iterator();
            while (iter.hasNext()) {
                ViewPane pane = (ViewPane)iter.next();
                IViewReference ref = pane.getViewReference();
                FastViewBar.this.getPerspective().getFastViewManager().addViewReference(FASTVIEWBAR_ID, FastViewBar.this.getIndex(view), ref, true);
            }
            FastViewBar.this.update(true);
        }

        public Cursor getCursor() {
            return DragCursors.getCursor(7);
        }

        public Rectangle getSnapRectangle() {
            if (this.position == null) {
                if (FastViewBar.this.getToolBar().getItemCount() > 0) {
                    return FastViewBar.this.getLocationOfNextIcon();
                }
                return DragUtil.getDisplayBounds(FastViewBar.this.getControl());
            }
            return Geometry.toDisplay((Control)FastViewBar.this.getToolBar(), (Rectangle)this.position.getBounds());
        }
    }
}

