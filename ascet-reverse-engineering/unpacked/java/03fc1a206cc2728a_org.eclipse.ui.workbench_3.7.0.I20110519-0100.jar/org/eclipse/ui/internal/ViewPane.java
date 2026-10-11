/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarManager2
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;

public class ViewPane
extends PartPane {
    private IToolBarManager2 isvToolBarMgr = null;
    private MenuManager isvMenuMgr;
    boolean hasFocus;
    private boolean hadViewMenu = false;

    public ViewPane(IViewReference ref, WorkbenchPage page) {
        super(ref, page);
        IActionBarPresentationFactory actionBarPresentation = ((WorkbenchWindow)page.getWorkbenchWindow()).getActionBarPresentationFactory();
        this.isvToolBarMgr = actionBarPresentation.createViewToolBarManager();
    }

    public void createControl(Composite parent) {
        if (this.getControl() != null && !this.getControl().isDisposed()) {
            return;
        }
        super.createControl(parent);
    }

    protected void createTitleBar() {
        this.updateTitles();
        this.getPartReference().addPropertyListener(this);
        this.createToolBars();
    }

    private void toolBarResized(Control toolBar, int newSize) {
        Control toolbar = this.isvToolBarMgr.getControl2();
        if (toolbar != null) {
            boolean visible;
            Control ctrl = this.getControl();
            boolean bl = visible = ctrl != null && ctrl.isVisible() && this.toolbarIsVisible();
            if (toolbar.isVisible() != visible) {
                toolbar.setVisible(visible);
            }
        }
        this.firePropertyChange(147);
    }

    private void createToolBars() {
        Composite parentControl = this.control;
        Control isvToolBar = this.isvToolBarMgr.createControl2(parentControl.getParent());
        isvToolBar.setVisible(false);
        this.isvToolBarMgr.addPropertyChangeListener((IPropertyChangeListener)new ISVPropListener(isvToolBar));
        isvToolBar.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDoubleClick(MouseEvent event) {
                if (event.widget instanceof ToolBar && ((ToolBar)event.widget).getItem(new Point(event.x, event.y)) == null) {
                    ViewPane.this.doZoom();
                }
            }
        });
        isvToolBar.addListener(26, (Listener)this);
        isvToolBar.moveAbove((Control)this.control);
    }

    public void dispose() {
        super.dispose();
        if (this.isvMenuMgr != null) {
            this.isvMenuMgr.dispose();
        }
        if (this.isvToolBarMgr != null) {
            this.isvToolBarMgr.dispose();
        }
    }

    public void doHide() {
        this.getPage().hideView(this.getViewReference());
    }

    Rectangle getParentBounds() {
        LayoutPart part;
        Control ctrl = this.getControl();
        if (this.getContainer() != null && this.getContainer() instanceof LayoutPart && (part = (LayoutPart)((Object)this.getContainer())).getControl() != null) {
            ctrl = part.getControl();
        }
        return DragUtil.getDisplayBounds(ctrl);
    }

    public void doMakeFast() {
        WorkbenchWindow window = (WorkbenchWindow)this.getPage().getWorkbenchWindow();
        FastViewBar fastViewBar = window.getFastViewBar();
        if (fastViewBar == null || this.getPage().getActivePerspective() == null) {
            return;
        }
        Shell shell = window.getShell();
        AnimationEngine.createTweakedAnimation(shell, 400, this.getParentBounds(), fastViewBar.getLocationOfNextIcon());
        FastViewManager fvm = this.getPage().getActivePerspective().getFastViewManager();
        fvm.addViewReference(FastViewBar.FASTVIEWBAR_ID, -1, this.getViewReference(), true);
    }

    public void doRemoveFast() {
        if (this.getPage().getActivePerspective() == null) {
            return;
        }
        Shell shell = this.getControl().getShell();
        Rectangle initialBounds = this.getParentBounds();
        FastViewManager fvm = this.getPage().getActivePerspective().getFastViewManager();
        fvm.removeViewReference(this.getViewReference(), true, true);
        IWorkbenchPart toActivate = this.getViewReference().getPart(true);
        if (toActivate != null) {
            this.getPage().activate(toActivate);
        }
        Rectangle finalBounds = this.getParentBounds();
        AnimationEngine.createTweakedAnimation(shell, 400, initialBounds, finalBounds);
    }

    protected void doDock() {
        Perspective persp = this.getPage().getActivePerspective();
        if (persp != null) {
            persp.getFastViewManager().removeViewReference(this.getViewReference(), true, true);
        }
    }

    public void doDetach() {
        this.getPage().detachView(this.getViewReference());
    }

    public void doAttach() {
        this.getPage().attachView(this.getViewReference());
    }

    public String getCompoundId() {
        IViewReference ref = this.getViewReference();
        if (ref != null) {
            return ViewFactory.getKey(ref);
        }
        return super.getCompoundId();
    }

    public Control getDragHandle() {
        return this.control;
    }

    public MenuManager getMenuManager() {
        if (this.isvMenuMgr == null) {
            this.isvMenuMgr = new PaneMenuManager();
        }
        return this.isvMenuMgr;
    }

    public Control[] getTabList() {
        Control c = this.getControl();
        if (this.getContainer() instanceof ViewStack) {
            ViewStack tf = (ViewStack)this.getContainer();
            return tf.getTabList(this);
        }
        return new Control[]{c};
    }

    public IToolBarManager2 getToolBarManager() {
        return this.isvToolBarMgr;
    }

    public IViewReference getViewReference() {
        return (IViewReference)this.getPartReference();
    }

    public void setFast(boolean b) {
    }

    void shellActivated() {
    }

    void shellDeactivated() {
    }

    void setActive(boolean active) {
        this.hasFocus = active;
        if (this.getContainer() instanceof PartStack) {
            ((PartStack)this.getContainer()).setActive(active ? 1 : 0);
        }
    }

    public void showFocus(boolean inFocus) {
        this.setActive(inFocus);
    }

    private boolean isFastView() {
        return this.page.isFastView(this.getViewReference());
    }

    boolean isMoveable() {
        return !this.page.isFixedLayout();
    }

    public boolean hasViewMenu() {
        return this.isvMenuMgr != null && this.hadViewMenu;
    }

    public void showViewMenu(Point location) {
        if (!this.hasViewMenu()) {
            return;
        }
        if (this.isFastView() && this.page.getActiveFastView() != this.getViewReference()) {
            return;
        }
        Menu aMenu = this.isvMenuMgr.createContextMenu((Control)this.getControl().getParent());
        aMenu.setLocation(location.x, location.y);
        aMenu.setVisible(true);
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + "@" + Integer.toHexString(this.hashCode());
    }

    public void updateActionBars() {
        if (this.isvMenuMgr != null) {
            this.isvMenuMgr.update(false);
        }
        if (this.isvToolBarMgr != null) {
            this.isvToolBarMgr.update(false);
        }
    }

    public void updateTitles() {
        this.firePropertyChange(1);
    }

    public void addSizeMenuItem(Menu menu, int index) {
        if (this.isMoveable()) {
            super.addSizeMenuItem(menu, index);
        }
    }

    protected void doZoom() {
        if (this.isMoveable()) {
            super.doZoom();
        }
    }

    public void setContainer(ILayoutContainer container) {
        ILayoutContainer oldContainer = this.getContainer();
        if (this.hasFocus) {
            if (oldContainer != null && oldContainer instanceof PartStack) {
                ((PartStack)oldContainer).setActive(0);
            }
            if (container != null && container instanceof PartStack) {
                ((PartStack)container).setActive(1);
            }
        }
        super.setContainer(container);
    }

    public void reparent(Composite newParent) {
        Control bar;
        super.reparent(newParent);
        if (this.isvToolBarMgr != null && (bar = this.isvToolBarMgr.getControl2()) != null) {
            bar.setParent(newParent);
            bar.moveAbove((Control)this.control);
        }
    }

    public void moveAbove(Control refControl) {
        super.moveAbove(refControl);
        Control toolbar = this.internalGetToolbar();
        if (toolbar != null) {
            toolbar.moveAbove((Control)this.control);
        }
    }

    public void setVisible(boolean makeVisible) {
        super.setVisible(makeVisible);
        Control toolbar = this.internalGetToolbar();
        if (toolbar != null) {
            boolean visible = makeVisible && this.toolbarIsVisible();
            toolbar.setVisible(visible);
        }
    }

    public boolean toolbarIsVisible() {
        IToolBarManager2 toolbarManager = this.getToolBarManager();
        if (toolbarManager == null) {
            return false;
        }
        Control control = toolbarManager.getControl2();
        if (control == null || control.isDisposed()) {
            return false;
        }
        return toolbarManager.getItemCount() > 0;
    }

    public void showHighlight() {
        this.firePropertyChange(148);
    }

    public String getPlaceHolderId() {
        return ViewFactory.getKey(this.getViewReference());
    }

    public Control getToolBar() {
        if (!this.toolbarIsVisible()) {
            return null;
        }
        return this.internalGetToolbar();
    }

    private Control internalGetToolbar() {
        if (this.isvToolBarMgr == null) {
            return null;
        }
        return this.isvToolBarMgr.getControl2();
    }

    public boolean isCloseable() {
        Perspective perspective = this.page.getActivePerspective();
        if (perspective == null) {
            return true;
        }
        return perspective.isCloseable(this.getViewReference());
    }

    public void showSystemMenu() {
        if (this.isFastView()) {
            Perspective perspective = this.page.getActivePerspective();
            if (perspective != null) {
                perspective.getFastViewPane().showSystemMenu();
            }
        } else {
            super.showSystemMenu();
        }
    }

    public void showPaneMenu() {
        if (this.isFastView()) {
            Perspective perspective = this.page.getActivePerspective();
            if (perspective != null) {
                perspective.getFastViewPane().showPaneMenu();
            }
        } else {
            super.showPaneMenu();
        }
    }

    public void removeContributions() {
        super.removeContributions();
        if (this.isvMenuMgr != null) {
            this.isvMenuMgr.removeAll();
        }
        if (this.isvToolBarMgr != null) {
            this.isvToolBarMgr.removeAll();
        }
    }

    private class ISVPropListener
    implements IPropertyChangeListener {
        private Control toolBar;

        public ISVPropListener(Control toolBar) {
            this.toolBar = toolBar;
        }

        public void propertyChange(PropertyChangeEvent event) {
            String property = event.getProperty();
            Integer newValue = (Integer)event.getNewValue();
            if ("PROP_LAYOUT".equals(property)) {
                ViewPane.this.toolBarResized(this.toolBar, newValue != null ? newValue : 0);
                if (this.toolBar instanceof Composite) {
                    ((Composite)this.toolBar).layout();
                } else {
                    this.toolBar.getParent().layout();
                }
            }
        }
    }

    class PaneMenuManager
    extends MenuManager {
        public PaneMenuManager() {
            super("View Local Menu");
        }

        protected void update(boolean force, boolean recursive) {
            super.update(force, recursive);
            boolean hasMenu = false;
            IContributionItem[] items = this.getItems();
            int i = 0;
            while (i < items.length) {
                if (items[i].isVisible() && !items[i].isSeparator() && !items[i].isGroupMarker()) {
                    hasMenu = true;
                    break;
                }
                ++i;
            }
            if (hasMenu != ViewPane.this.hadViewMenu) {
                ViewPane.this.hadViewMenu = hasMenu;
                ViewPane.this.firePropertyChange(770);
            }
        }
    }
}

