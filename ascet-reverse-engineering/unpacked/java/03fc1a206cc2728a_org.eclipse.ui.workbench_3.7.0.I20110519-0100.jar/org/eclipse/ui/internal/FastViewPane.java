/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.DefaultStackPresentationSite;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStackTrimToolBar;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.SystemMenuFastView;
import org.eclipse.ui.internal.presentations.SystemMenuFastViewOrientation;
import org.eclipse.ui.internal.presentations.SystemMenuSizeFastView;
import org.eclipse.ui.internal.presentations.UpdatingActionContributionItem;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.StackPresentation;

public class FastViewPane {
    private int side = 16384;
    private PresentablePart currentPane;
    private Composite clientComposite;
    private int minSize = 10;
    private int size;
    private Sash sash;
    private AbstractPresentationFactory presFactory;
    private Listener escapeListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.character == '\u001b' && FastViewPane.this.currentPane != null) {
                FastViewPane.this.currentPane.getPane().getPage().hideFastView();
            }
        }
    };
    private DefaultStackPresentationSite site = new DefaultStackPresentationSite(){

        public void setState(int newState) {
            super.setState(newState);
            PartPane pane = FastViewPane.this.currentPane.getPane();
            switch (newState) {
                case 0: {
                    pane.getPage().hideFastView();
                    break;
                }
                case 1: {
                    pane.setZoomed(true);
                    FastViewPane.this.sash.setVisible(false);
                    this.getPresentation().setBounds(FastViewPane.this.getBounds());
                    break;
                }
                case 2: {
                    pane.setZoomed(false);
                    FastViewPane.this.sash.setVisible(true);
                    this.getPresentation().setBounds(FastViewPane.this.getBounds());
                }
            }
        }

        public void flushLayout() {
        }

        public void close(IPresentablePart part) {
            if (!this.isCloseable(part)) {
                return;
            }
            IWorkbenchPartReference ref = FastViewPane.this.currentPane.getPane().getPartReference();
            if (ref instanceof IViewReference) {
                FastViewPane.this.currentPane.getPane().getPage().hideView((IViewReference)ref);
            }
        }

        public void close(IPresentablePart[] parts) {
            int idx = 0;
            while (idx < parts.length) {
                this.close(parts[idx]);
                ++idx;
            }
        }

        public void dragStart(IPresentablePart beingDragged, Point initialPosition, boolean keyboard) {
            this.dragStart(initialPosition, keyboard);
        }

        public void dragStart(Point initialPosition, boolean keyboard) {
            if (!this.isPartMoveable()) {
                return;
            }
            PartPane pane = FastViewPane.this.currentPane.getPane();
            Control control = this.getPresentation().getControl();
            Rectangle bounds = Geometry.toDisplay((Control)FastViewPane.this.clientComposite, (Rectangle)control.getBounds());
            WorkbenchPage page = pane.getPage();
            page.hideFastView();
            if (page.isZoomed()) {
                page.zoomOut();
            }
            DragUtil.performDrag(pane, bounds, initialPosition, !keyboard);
        }

        public IPresentablePart getSelectedPart() {
            return FastViewPane.this.currentPane;
        }

        public void addSystemActions(IMenuManager menuManager) {
            ViewStackTrimToolBar vstt = this.getTrim();
            FastViewPane.appendToGroupIfPossible(menuManager, "misc", new SystemMenuFastViewOrientation(FastViewPane.this.currentPane.getPane(), vstt));
            if (vstt == null) {
                FastViewPane.appendToGroupIfPossible(menuManager, "misc", (ContributionItem)new UpdatingActionContributionItem(FastViewPane.this.fastViewAction));
            }
            FastViewPane.appendToGroupIfPossible(menuManager, "size", new SystemMenuSizeFastView(FastViewPane.this));
        }

        private ViewStackTrimToolBar getTrim() {
            if (FastViewPane.this.currentPane == null || FastViewPane.this.currentPane.getPane() == null) {
                return null;
            }
            ViewStackTrimToolBar trim = null;
            PartPane pane = FastViewPane.this.currentPane.getPane();
            if (pane instanceof ViewPane) {
                ViewPane vp = (ViewPane)pane;
                Perspective persp = vp.getPage().getActivePerspective();
                IViewReference viewRef = vp.getViewReference();
                FastViewManager fvm = persp.getFastViewManager();
                String trimId = null;
                if (fvm != null) {
                    trimId = fvm.getIdForRef(viewRef);
                }
                if (trimId != null && !trimId.equals(FastViewBar.FASTVIEWBAR_ID)) {
                    trim = fvm.getViewStackTrimToolbar(trimId);
                }
            }
            return trim;
        }

        public boolean isPartMoveable(IPresentablePart toMove) {
            return this.isPartMoveable();
        }

        public boolean isStackMoveable() {
            return this.isPartMoveable();
        }

        private boolean isPartMoveable() {
            if (FastViewPane.this.currentPane == null) {
                return false;
            }
            Perspective perspective = FastViewPane.this.currentPane.getPane().getPage().getActivePerspective();
            if (perspective == null) {
                return false;
            }
            IWorkbenchPartReference ref = FastViewPane.this.currentPane.getPane().getPartReference();
            if (ref instanceof IViewReference) {
                return perspective.isMoveable((IViewReference)ref);
            }
            return true;
        }

        public boolean supportsState(int newState) {
            if (FastViewPane.this.currentPane == null) {
                return false;
            }
            return !FastViewPane.this.currentPane.getPane().getPage().isFixedLayout();
        }

        public IPresentablePart[] getPartList() {
            return new IPresentablePart[]{this.getSelectedPart()};
        }

        public String getProperty(String id) {
            return null;
        }
    };
    private SystemMenuFastView fastViewAction = new SystemMenuFastView(this.site);
    private Listener mouseDownListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.widget instanceof Control) {
                Point pt;
                ToolBar toolBar;
                Control control = (Control)event.widget;
                if (control.getShell() != FastViewPane.this.clientComposite.getShell()) {
                    return;
                }
                if (event.widget instanceof ToolBar && (toolBar = (ToolBar)event.widget).getItem(pt = new Point(event.x, event.y)) != null) {
                    return;
                }
                Point loc = DragUtil.getEventLoc(event);
                Rectangle bounds = FastViewPane.this.clientComposite.getBounds();
                if (FastViewPane.this.site.getState() != 1) {
                    bounds = Geometry.getExtrudedEdge((Rectangle)bounds, (int)(FastViewPane.this.size + FastViewPane.this.getSashSize()), (int)FastViewPane.this.side);
                }
                if (!(bounds = FastViewPane.this.clientComposite.getDisplay().map((Control)FastViewPane.this.clientComposite, null, bounds)).contains(loc)) {
                    FastViewPane.this.site.setState(0);
                }
            }
        }
    };
    private Listener resizeListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.type == 11 && FastViewPane.this.currentPane != null) {
                FastViewPane.this.setSize(FastViewPane.this.size);
            }
        }
    };
    private SelectionAdapter selectionListener = new SelectionAdapter(){

        public void widgetSelected(SelectionEvent e) {
            if (FastViewPane.this.currentPane != null) {
                Rectangle bounds = FastViewPane.this.clientComposite.getClientArea();
                Point location = new Point(e.x, e.y);
                int distanceFromEdge = Geometry.getDistanceFromEdge((Rectangle)bounds, (Point)location, (int)FastViewPane.this.side);
                if (FastViewPane.this.side != 128 && FastViewPane.this.side != 16384) {
                    distanceFromEdge -= FastViewPane.this.getSashSize();
                }
                FastViewPane.this.setSize(distanceFromEdge);
                if (e.detail != 1) {
                    FastViewPane.this.updateFastViewSashBounds();
                    FastViewPane.this.sash.redraw();
                }
            }
        }
    };

    private static void appendToGroupIfPossible(IMenuManager m, String groupId, ContributionItem item) {
        try {
            m.appendToGroup(groupId, (IContributionItem)item);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            m.add((IContributionItem)item);
        }
    }

    public void moveSash() {
        KeyAdapter listener = new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                if (e.character == '\u001b' || e.character == '\r') {
                    FastViewPane.this.currentPane.setFocus();
                }
            }
        };
        this.sash.addFocusListener((FocusListener)new FocusAdapter((KeyListener)listener){
            private final /* synthetic */ KeyListener val$listener;
            {
                this.val$listener = keyListener;
            }

            public void focusGained(FocusEvent e) {
                FastViewPane.this.sash.setBackground(FastViewPane.this.sash.getDisplay().getSystemColor(26));
                FastViewPane.this.sash.addKeyListener(this.val$listener);
            }

            public void focusLost(FocusEvent e) {
                FastViewPane.this.sash.setBackground(null);
                FastViewPane.this.sash.removeKeyListener(this.val$listener);
            }
        });
        this.sash.setFocus();
    }

    private void setSize(int size) {
        if (size < this.minSize) {
            size = this.minSize;
        }
        this.size = size;
        StackPresentation presentation = this.getPresentation();
        if (presentation == null || presentation.getControl().isDisposed()) {
            return;
        }
        this.getPresentation().setBounds(this.getBounds());
        this.updateFastViewSashBounds();
    }

    public float getCurrentRatio() {
        if (this.currentPane == null) {
            return 0.0f;
        }
        boolean isVertical = !Geometry.isHorizontal((int)this.side);
        Rectangle clientArea = this.clientComposite.getClientArea();
        int clientSize = Geometry.getDimension((Rectangle)clientArea, (boolean)isVertical);
        return (float)this.size / (float)clientSize;
    }

    private Rectangle getClientArea() {
        return this.clientComposite.getClientArea();
    }

    private Rectangle getBounds() {
        Rectangle bounds = this.getClientArea();
        if (this.site.getState() == 1) {
            return bounds;
        }
        boolean horizontal = Geometry.isHorizontal((int)this.side);
        int available = Geometry.getDimension((Rectangle)bounds, (!horizontal ? 1 : 0) != 0);
        return Geometry.getExtrudedEdge((Rectangle)bounds, (int)Math.min(this.size, available), (int)this.side);
    }

    public void showView(Composite newClientComposite, ViewPane pane, int newSide, float sizeRatio) {
        this.side = newSide;
        if (this.currentPane != null) {
            this.hideView();
        }
        this.currentPane = new PresentablePart(pane, newClientComposite);
        this.fastViewAction.setPane(this.currentPane);
        this.clientComposite = newClientComposite;
        this.clientComposite.addListener(11, this.resizeListener);
        Control ctrl = pane.getControl();
        if (ctrl == null) {
            pane.createControl(this.clientComposite);
            ctrl = pane.getControl();
        }
        ctrl.addListener(31, this.escapeListener);
        AbstractPresentationFactory factory = this.getPresentationFactory();
        StackPresentation presentation = factory.createViewPresentation(newClientComposite, this.site);
        this.site.setPresentation(presentation);
        this.site.setPresentationState(2);
        presentation.addPart(this.currentPane, null);
        presentation.selectPart(this.currentPane);
        presentation.setActive(1);
        presentation.setVisible(true);
        boolean horizontalResize = Geometry.isHorizontal((int)this.side);
        this.minSize = presentation.computePreferredSize(horizontalResize, Integer.MAX_VALUE, Geometry.getDimension((Rectangle)this.getClientArea(), (boolean)horizontalResize), 0);
        ctrl.setEnabled(true);
        Composite parent = ctrl.getParent();
        boolean horizontal = Geometry.isHorizontal((int)this.side);
        int style = AbstractPresentationFactory.SASHTYPE_FLOATING;
        style = horizontal ? (style |= AbstractPresentationFactory.SASHORIENTATION_HORIZONTAL) : (style |= AbstractPresentationFactory.SASHORIENTATION_VERTICAL);
        this.sash = factory.createSash(parent, style);
        this.sash.addSelectionListener((SelectionListener)this.selectionListener);
        Rectangle clientArea = newClientComposite.getClientArea();
        this.getPresentation().getControl().moveAbove(null);
        this.currentPane.getPane().moveAbove(null);
        this.sash.moveAbove(null);
        this.setSize((int)((float)Geometry.getDimension((Rectangle)clientArea, (!horizontal ? 1 : 0) != 0) * sizeRatio));
        Display display = this.sash.getDisplay();
        display.addFilter(3, this.mouseDownListener);
        pane.setFocus();
    }

    private void updateFastViewSashBounds() {
        Rectangle oldBounds;
        Rectangle bounds = this.getBounds();
        int oppositeSide = Geometry.getOppositeSide((int)this.side);
        Rectangle newBounds = Geometry.getExtrudedEdge((Rectangle)bounds, (int)(-this.getSashSize()), (int)oppositeSide);
        if (!newBounds.equals((Object)(oldBounds = this.sash.getBounds()))) {
            this.sash.setBounds(newBounds);
        }
    }

    public void dispose() {
        this.hideView();
    }

    private StackPresentation getPresentation() {
        return this.site.getPresentation();
    }

    public void hideFastViewSash() {
        if (this.sash != null) {
            this.sash.setVisible(false);
        }
    }

    public void hideView() {
        if (this.clientComposite != null) {
            Display display = this.clientComposite.getDisplay();
            display.removeFilter(3, this.mouseDownListener);
        }
        if (this.currentPane == null) {
            return;
        }
        this.fastViewAction.setPane(null);
        this.currentPane.getPane().setZoomed(false);
        if (this.sash != null) {
            this.sash.dispose();
            this.sash = null;
        }
        this.clientComposite.removeListener(11, this.resizeListener);
        Control ctrl = this.currentPane.getControl();
        ctrl.removeListener(31, this.escapeListener);
        this.getPresentation().setVisible(false);
        this.site.dispose();
        ctrl.setEnabled(false);
        this.currentPane.dispose();
        this.currentPane = null;
    }

    public ViewPane getCurrentPane() {
        if (this.currentPane != null && this.currentPane.getPane() instanceof ViewPane) {
            return (ViewPane)this.currentPane.getPane();
        }
        return null;
    }

    public void setState(int newState) {
        this.site.setState(newState);
    }

    public int getState() {
        return this.site.getState();
    }

    public void showSystemMenu() {
        this.getPresentation().showSystemMenu();
    }

    public void showPaneMenu() {
        this.getPresentation().showPaneMenu();
    }

    private int getSashSize() {
        AbstractPresentationFactory factory = this.getPresentationFactory();
        int style = AbstractPresentationFactory.SASHTYPE_FLOATING;
        style = Geometry.isHorizontal((int)this.side) ? (style |= AbstractPresentationFactory.SASHORIENTATION_HORIZONTAL) : (style |= AbstractPresentationFactory.SASHORIENTATION_VERTICAL);
        int size = factory.getSashSize(style);
        return size;
    }

    private AbstractPresentationFactory getPresentationFactory() {
        if (this.presFactory == null) {
            this.presFactory = ((WorkbenchWindow)this.currentPane.getPane().getWorkbenchWindow()).getWindowConfigurer().getPresentationFactory();
        }
        return this.presFactory;
    }
}

