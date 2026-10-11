/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.CBanner
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import java.util.Arrays;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PerspectiveAdapter;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.IReorderListener;
import org.eclipse.ui.internal.PerspectiveBarContributionItem;
import org.eclipse.ui.internal.PerspectiveBarManager;
import org.eclipse.ui.internal.PerspectiveBarNewContributionItem;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.layout.CacheWrapper;
import org.eclipse.ui.internal.layout.CellLayout;
import org.eclipse.ui.internal.layout.ITrimManager;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.Row;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.presentations.PresentationUtil;
import org.eclipse.ui.statushandlers.StatusManager;

public class PerspectiveSwitcher
implements IWindowTrim {
    private static final int MIN_WIDTH = 45;
    private static final int ITEM_WIDTH = 80;
    private static final int MIN_DEFAULT_WIDTH = 160;
    private IWorkbenchWindow window;
    private CBanner topBar;
    private int style;
    private Composite parent;
    private Composite trimControl;
    private Label trimSeparator;
    private GridData trimLayoutData;
    private boolean trimVisible = false;
    private int trimOldLength = 0;
    private PerspectiveBarManager perspectiveBar;
    private CoolBar perspectiveCoolBar;
    private CacheWrapper perspectiveCoolBarWrapper;
    private CoolItem coolItem;
    private CacheWrapper toolbarWrapper;
    private Menu popupMenu;
    private Menu genericMenu;
    private static final int INITIAL = -1;
    private static final int TOP_RIGHT = 1;
    private static final int TOP_LEFT = 2;
    private static final int LEFT = 3;
    private int currentLocation = -1;
    private IPreferenceStore apiPreferenceStore = PrefUtil.getAPIPreferenceStore();
    private IPropertyChangeListener propertyChangeListener;
    private Listener popupListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.type == 35) {
                PerspectiveSwitcher.this.showPerspectiveBarPopup(new Point(event.x, event.y));
            }
        }
    };
    private ChangeListener changeListener = new ChangeListener();
    private Listener dragListener;
    private IDragOverListener dragTarget;
    private DisposeListener toolBarListener;
    private IReorderListener reorderListener;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public PerspectiveSwitcher(IWorkbenchWindow window, CBanner topBar, int style) {
        this.window = window;
        this.topBar = topBar;
        this.style = style;
        this.setPropertyChangeListener();
        this.toolBarListener = new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                PerspectiveSwitcher.this.dispose();
            }
        };
        window.addPerspectiveListener(this.changeListener);
        window.addPageListener(this.changeListener);
    }

    private static int convertLocation(String preference) {
        if ("topRight".equals(preference)) {
            return 1;
        }
        if ("topLeft".equals(preference)) {
            return 2;
        }
        if ("left".equals(preference)) {
            return 3;
        }
        return 1;
    }

    public void createControl(Composite parent) {
        Assert.isTrue((this.parent == null ? 1 : 0) != 0);
        this.parent = parent;
        this.setPerspectiveBarLocation(PrefUtil.getAPIPreferenceStore().getString("DOCK_PERSPECTIVE_BAR"));
    }

    private void addPerspectiveShortcut(IPerspectiveDescriptor perspective, IWorkbenchPage workbenchPage) {
        if (this.perspectiveBar == null) {
            return;
        }
        PerspectiveBarContributionItem item = new PerspectiveBarContributionItem(perspective, workbenchPage);
        this.perspectiveBar.addItem(item);
        this.setCoolItemSize(this.coolItem);
        if (this.perspectiveBar != null) {
            this.perspectiveBar.update(true);
        }
        if (this.currentLocation == 3) {
            this.updatePerspectiveBar();
        }
    }

    public IContributionItem findPerspectiveShortcut(IPerspectiveDescriptor perspective, IWorkbenchPage page) {
        if (this.perspectiveBar == null) {
            return null;
        }
        IContributionItem[] items = this.perspectiveBar.getItems();
        int length = items.length;
        int i = 0;
        while (i < length) {
            IContributionItem item = items[i];
            if (item instanceof PerspectiveBarContributionItem && ((PerspectiveBarContributionItem)item).handles(perspective, page)) {
                return item;
            }
            ++i;
        }
        return null;
    }

    private void removePerspectiveShortcut(IPerspectiveDescriptor perspective, IWorkbenchPage page) {
        if (this.perspectiveBar == null) {
            return;
        }
        IContributionItem item = this.findPerspectiveShortcut(perspective, page);
        if (item != null) {
            if (item instanceof PerspectiveBarContributionItem) {
                this.perspectiveBar.removeItem((PerspectiveBarContributionItem)item);
            }
            item.dispose();
            this.perspectiveBar.update(false);
            this.setCoolItemSize(this.coolItem);
            if (this.currentLocation == 3) {
                this.updatePerspectiveBar();
                LayoutUtil.resize((Control)this.perspectiveBar.getControl());
            }
        }
    }

    public void setPerspectiveBarLocation(String preference) {
        if (this.parent == null) {
            return;
        }
        int newLocation = PerspectiveSwitcher.convertLocation(preference);
        if (newLocation == this.currentLocation) {
            return;
        }
        this.createControlForLocation(newLocation);
        this.currentLocation = newLocation;
        this.showPerspectiveBar();
        if (newLocation == 2 || newLocation == 1) {
            this.updatePerspectiveBar();
            this.updateBarParent();
        }
    }

    private void showPerspectiveBar() {
        switch (this.currentLocation) {
            case 2: {
                this.topBar.setRight(null);
                this.topBar.setBottom((Control)this.perspectiveCoolBarWrapper.getControl());
                break;
            }
            case 1: {
                this.topBar.setBottom(null);
                this.topBar.setRight((Control)this.perspectiveCoolBarWrapper.getControl());
                this.topBar.setRightWidth(this.getDefaultWidth());
                break;
            }
            case 3: {
                this.topBar.setBottom(null);
                this.topBar.setRight(null);
                LayoutUtil.resize((Control)this.topBar);
                this.getTrimManager().addTrim(16384, this);
                break;
            }
            default: {
                return;
            }
        }
        LayoutUtil.resize((Control)this.perspectiveBar.getControl());
    }

    private int getDefaultWidth() {
        String extras = PrefUtil.getAPIPreferenceStore().getString("PERSPECTIVE_BAR_EXTRAS");
        StringTokenizer tok = new StringTokenizer(extras, ", ");
        int numExtras = tok.countTokens();
        int numPersps = Math.max(numExtras, 1);
        String sizeString = PrefUtil.getAPIPreferenceStore().getString("PERSPECTIVE_BAR_SIZE");
        int size = 160;
        try {
            size = Integer.parseInt(sizeString);
        }
        catch (NumberFormatException numberFormatException) {}
        int defaultWidth = Math.max(160, size);
        return Math.max(defaultWidth, 45 + numPersps * 80);
    }

    private ITrimManager getTrimManager() {
        if (this.window instanceof WorkbenchWindow) {
            return ((WorkbenchWindow)this.window).getTrimManager();
        }
        return null;
    }

    public void update(boolean force) {
        if (this.perspectiveBar == null) {
            return;
        }
        this.perspectiveBar.update(force);
        if (this.currentLocation == 3) {
            boolean shouldExpand;
            ToolItem[] items = this.perspectiveBar.getControl().getItems();
            boolean bl = shouldExpand = items.length > 0;
            if (shouldExpand != this.trimVisible) {
                this.perspectiveBar.getControl().setVisible(true);
                this.trimVisible = shouldExpand;
            }
            if (items.length != this.trimOldLength) {
                LayoutUtil.resize((Control)this.trimControl);
                this.trimOldLength = items.length;
            }
        }
    }

    private void selectPerspectiveShortcut(IPerspectiveDescriptor perspective, IWorkbenchPage page, boolean selected) {
        IContributionItem item = this.findPerspectiveShortcut(perspective, page);
        if (item != null && item instanceof PerspectiveBarContributionItem) {
            if (selected) {
                PerspectiveBarContributionItem contribItem = (PerspectiveBarContributionItem)item;
                this.perspectiveBar.select(contribItem);
            }
            ((PerspectiveBarContributionItem)item).setSelection(selected);
        }
    }

    private void updatePerspectiveShortcut(IPerspectiveDescriptor oldDesc, IPerspectiveDescriptor newDesc, IWorkbenchPage page) {
        IContributionItem item = this.findPerspectiveShortcut(oldDesc, page);
        if (item != null && item instanceof PerspectiveBarContributionItem) {
            ((PerspectiveBarContributionItem)item).update(newDesc);
        }
    }

    public PerspectiveBarManager getPerspectiveBar() {
        return this.perspectiveBar;
    }

    public void dispose() {
        this.window.removePerspectiveListener(this.changeListener);
        this.window.removePageListener(this.changeListener);
        if (this.propertyChangeListener != null) {
            this.apiPreferenceStore.removePropertyChangeListener(this.propertyChangeListener);
            this.propertyChangeListener = null;
        }
        this.unhookDragSupport();
        this.disposeChildControls();
        this.toolBarListener = null;
    }

    private void disposeChildControls() {
        if (this.trimControl != null) {
            this.trimControl.dispose();
            this.trimControl = null;
        }
        if (this.trimSeparator != null) {
            this.trimSeparator.dispose();
            this.trimSeparator = null;
        }
        if (this.perspectiveCoolBar != null) {
            this.perspectiveCoolBar.dispose();
            this.perspectiveCoolBar = null;
        }
        if (this.toolbarWrapper != null) {
            this.toolbarWrapper.dispose();
            this.toolbarWrapper = null;
        }
        if (this.perspectiveBar != null) {
            this.perspectiveBar.dispose();
            this.perspectiveBar = null;
        }
        this.perspectiveCoolBarWrapper = null;
    }

    private void createControlForLocation(int newLocation) {
        if (this.perspectiveBar != null && this.perspectiveBar.getControl() != null && !this.perspectiveBar.getControl().isDisposed()) {
            if (newLocation == 3 && this.currentLocation == 3) {
                return;
            }
            if (!(newLocation != 2 && newLocation != 1 || this.currentLocation != 2 && this.currentLocation != 1)) {
                return;
            }
        }
        if (this.perspectiveBar != null) {
            this.perspectiveBar.getControl().removeDisposeListener(this.toolBarListener);
            this.unhookDragSupport();
        }
        this.getTrimManager().removeTrim(this);
        this.disposeChildControls();
        if (newLocation == 3) {
            this.createControlForLeft();
        } else {
            this.createControlForTop();
        }
        this.hookDragSupport();
        this.perspectiveBar.getControl().addDisposeListener(this.toolBarListener);
    }

    private void unhookDragSupport() {
        ToolBar bar = this.perspectiveBar.getControl();
        if (bar == null || bar.isDisposed() || this.dragListener == null) {
            return;
        }
        PresentationUtil.removeDragListener((Control)bar, this.dragListener);
        DragUtil.removeDragTarget((Control)this.perspectiveBar.getControl(), this.dragTarget);
        this.dragListener = null;
        this.dragTarget = null;
    }

    private void hookDragSupport() {
        this.dragListener = new Listener(){

            public void handleEvent(Event event) {
                ToolBar toolbar = PerspectiveSwitcher.this.perspectiveBar.getControl();
                ToolItem item = toolbar.getItem(new Point(event.x, event.y));
                if (item != null) {
                    if (item.getData() instanceof PerspectiveBarNewContributionItem) {
                        return;
                    }
                    Rectangle bounds = item.getBounds();
                    Rectangle parentBounds = toolbar.getBounds();
                    bounds.x += parentBounds.x;
                    bounds.y += parentBounds.y;
                    this.startDragging(item.getData(), toolbar.getDisplay().map((Control)toolbar, null, bounds));
                }
            }

            private void startDragging(Object widget, Rectangle bounds) {
                DragUtil.performDrag(widget, bounds, new Point(bounds.x, bounds.y), true);
            }
        };
        this.dragTarget = new IDragOverListener(){
            protected PerspectiveDropTarget perspectiveDropTarget;

            public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
                if (draggedObject instanceof PerspectiveBarContributionItem) {
                    if (this.perspectiveDropTarget == null) {
                        this.perspectiveDropTarget = new PerspectiveDropTarget(draggedObject, position);
                    } else {
                        this.perspectiveDropTarget.update(draggedObject, position);
                    }
                    if (!this.perspectiveDropTarget.sameShell()) {
                        return null;
                    }
                    return this.perspectiveDropTarget;
                }
                return null;
            }

            class PerspectiveDropTarget
            extends AbstractDropTarget {
                private PerspectiveBarContributionItem perspective;
                private Point location;

                public PerspectiveDropTarget(Object draggedObject, Point location) {
                    this.update(draggedObject, location);
                }

                private void update(Object draggedObject, Point location) {
                    this.location = location;
                    this.perspective = (PerspectiveBarContributionItem)((Object)draggedObject);
                }

                public void drop() {
                    ToolBar toolBar = PerspectiveSwitcher.this.perspectiveBar.getControl();
                    ToolItem item = toolBar.getItem(toolBar.getDisplay().map(null, (Control)toolBar, this.location));
                    if (toolBar.getItem(0) == item) {
                        return;
                    }
                    ToolItem[] items = toolBar.getItems();
                    ToolItem droppedItem = null;
                    int dropIndex = -1;
                    int i = 0;
                    while (i < items.length) {
                        if (item == items[i]) {
                            dropIndex = i;
                        }
                        if (items[i].getData() == this.perspective) {
                            droppedItem = items[i];
                        }
                        ++i;
                    }
                    if (dropIndex != -1 && droppedItem != null && droppedItem != item) {
                        PerspectiveBarContributionItem barItem = (PerspectiveBarContributionItem)((Object)droppedItem.getData());
                        if (PerspectiveSwitcher.this.reorderListener != null) {
                            PerspectiveSwitcher.this.reorderListener.reorder(barItem.getPerspective(), Math.abs(dropIndex - (items.length - 1)));
                        }
                        PerspectiveSwitcher.this.perspectiveBar.relocate(barItem, dropIndex);
                    }
                }

                public Cursor getCursor() {
                    return DragCursors.getCursor(5);
                }

                boolean sameShell() {
                    return this.perspective.getToolItem().getParent().getShell().equals(PerspectiveSwitcher.this.perspectiveBar.getControl().getShell());
                }

                public Rectangle getSnapRectangle() {
                    ToolBar toolBar = PerspectiveSwitcher.this.perspectiveBar.getControl();
                    ToolItem item = toolBar.getItem(toolBar.getDisplay().map(null, (Control)toolBar, this.location));
                    if (item == null || item == toolBar.getItem(0)) {
                        return null;
                    }
                    Rectangle bounds = item.getBounds();
                    return toolBar.getDisplay().map((Control)toolBar, null, bounds);
                }
            }
        };
        PresentationUtil.addDragListener((Control)this.perspectiveBar.getControl(), this.dragListener);
        DragUtil.addDragTarget((Control)this.perspectiveBar.getControl(), this.dragTarget);
    }

    private void setPropertyChangeListener() {
        this.propertyChangeListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                if ("SHOW_TEXT_ON_PERSPECTIVE_BAR".equals(propertyChangeEvent.getProperty())) {
                    if (PerspectiveSwitcher.this.perspectiveBar == null) {
                        return;
                    }
                    PerspectiveSwitcher.this.updatePerspectiveBar();
                    PerspectiveSwitcher.this.updateBarParent();
                }
            }
        };
        this.apiPreferenceStore.addPropertyChangeListener(this.propertyChangeListener);
    }

    private void createControlForLeft() {
        this.trimControl = new Composite(this.parent, 0);
        this.trimControl.setLayout((Layout)new CellLayout(1).setMargins(0, 0).setSpacing(3, 3).setDefaultRow(Row.fixed()).setDefaultColumn(Row.growing()));
        this.perspectiveBar = this.createBarManager(512);
        this.perspectiveBar.createControl(this.trimControl);
        this.perspectiveBar.getControl().addListener(35, this.popupListener);
        this.trimLayoutData = new GridData(1808);
        this.trimVisible = false;
        this.perspectiveBar.getControl().setLayoutData((Object)this.trimLayoutData);
    }

    private void createControlForTop() {
        this.perspectiveBar = this.createBarManager(256);
        this.perspectiveCoolBarWrapper = new CacheWrapper((Composite)this.topBar);
        this.perspectiveCoolBar = new CoolBar(this.perspectiveCoolBarWrapper.getControl(), 0x800000);
        this.coolItem = new CoolItem(this.perspectiveCoolBar, 4);
        this.toolbarWrapper = new CacheWrapper((Composite)this.perspectiveCoolBar);
        this.perspectiveBar.createControl(this.toolbarWrapper.getControl());
        this.coolItem.setControl((Control)this.toolbarWrapper.getControl());
        this.perspectiveCoolBar.setLocked(true);
        this.perspectiveBar.setParent(this.perspectiveCoolBar);
        this.perspectiveBar.update(true);
        this.perspectiveCoolBar.addControlListener((ControlListener)new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                PerspectiveSwitcher.this.setCoolItemSize(PerspectiveSwitcher.this.coolItem);
            }
        });
        this.coolItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.detail == 4 && PerspectiveSwitcher.this.perspectiveBar != null) {
                    PerspectiveSwitcher.this.perspectiveBar.handleChevron(e);
                }
            }
        });
        this.coolItem.setMinimumSize(0, 0);
        this.perspectiveBar.getControl().addListener(35, this.popupListener);
    }

    private void setCoolItemSize(CoolItem coolItem) {
        int rows;
        if (this.currentLocation == 3) {
            return;
        }
        ToolBar toolbar = this.perspectiveBar.getControl();
        if (toolbar == null) {
            return;
        }
        int rowHeight = 0;
        ToolItem[] toolItems = toolbar.getItems();
        int i = 0;
        while (i < toolItems.length) {
            rowHeight = Math.max(rowHeight, toolItems[i].getBounds().height);
            ++i;
        }
        Rectangle area = this.perspectiveCoolBar.getClientArea();
        int n = rows = rowHeight <= 0 ? 1 : (int)Math.max(1.0, Math.floor(area.height / rowHeight));
        if (rows == 1 || (toolbar.getStyle() & 0x40) == 0 || this.currentLocation == 2) {
            Point p = toolbar.computeSize(-1, -1);
            coolItem.setSize(coolItem.computeSize(p.x, p.y));
            return;
        }
        Point offset = coolItem.computeSize(0, 0);
        Point wrappedSize = toolbar.computeSize(area.width - offset.x, -1);
        int h = rows * rowHeight;
        int w = wrappedSize.y <= h ? wrappedSize.x : wrappedSize.x + 1;
        coolItem.setSize(coolItem.computeSize(w, h));
    }

    private void showPerspectiveBarPopup(Point pt) {
        if (this.perspectiveBar == null) {
            return;
        }
        ToolBar toolBar = this.perspectiveBar.getControl();
        ToolItem toolItem = toolBar.getItem(toolBar.toControl(pt));
        Object data = null;
        if (toolItem != null) {
            data = toolItem.getData();
        }
        if (toolItem == null || !(data instanceof PerspectiveBarContributionItem)) {
            if (this.genericMenu == null) {
                Menu menu = new Menu((Control)toolBar);
                this.addDockOnSubMenu(menu);
                this.addShowTextItem(menu);
                this.genericMenu = menu;
            }
            this.genericMenu.getItem(1).setSelection(PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR"));
            this.updateLocationItems(this.genericMenu.getItem(0).getMenu(), this.currentLocation);
            this.genericMenu.setLocation(pt.x, pt.y);
            this.genericMenu.setVisible(true);
            return;
        }
        if (data == null || !(data instanceof PerspectiveBarContributionItem)) {
            return;
        }
        PerspectiveBarContributionItem pbci = (PerspectiveBarContributionItem)((Object)data);
        IPerspectiveDescriptor selectedPerspective = pbci.getPerspective();
        if (this.popupMenu != null) {
            this.popupMenu.dispose();
            this.popupMenu = null;
        }
        this.popupMenu = this.createPopup(toolBar, selectedPerspective);
        this.popupMenu.setData((Object)toolItem);
        this.popupMenu.setLocation(pt.x, pt.y);
        this.popupMenu.setVisible(true);
    }

    private boolean perspectiveIsActive(IPerspectiveDescriptor persp) {
        IWorkbenchPage page = this.window.getActivePage();
        return page != null && persp.equals(page.getPerspective());
    }

    private boolean perspectiveIsOpen(IPerspectiveDescriptor persp) {
        IWorkbenchPage page = this.window.getActivePage();
        return page != null && Arrays.asList(page.getOpenPerspectives()).contains(persp);
    }

    private Menu createPopup(ToolBar toolBar, IPerspectiveDescriptor persp) {
        Menu menu = new Menu((Control)toolBar);
        if (this.perspectiveIsActive(persp)) {
            this.addCustomizeItem(menu);
            this.addSaveAsItem(menu);
            this.addResetItem(menu);
        }
        if (this.perspectiveIsOpen(persp)) {
            this.addCloseItem(menu);
        }
        new MenuItem(menu, 2);
        this.addDockOnSubMenu(menu);
        this.addShowTextItem(menu);
        return menu;
    }

    private void addCloseItem(Menu menu) {
        MenuItem menuItem = new MenuItem(menu, 0);
        menuItem.setText(WorkbenchMessages.WorkbenchWindow_close);
        this.window.getWorkbench().getHelpSystem().setHelp(menuItem, "org.eclipse.ui.close_page_action_context");
        menuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ToolItem perspectiveToolItem = (ToolItem)PerspectiveSwitcher.this.popupMenu.getData();
                if (perspectiveToolItem != null && !perspectiveToolItem.isDisposed()) {
                    PerspectiveBarContributionItem item = (PerspectiveBarContributionItem)((Object)perspectiveToolItem.getData());
                    IPerspectiveDescriptor persp = item.getPerspective();
                    IWorkbenchWindow iWorkbenchWindow = PerspectiveSwitcher.this.window;
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    ICommandService commandService = (ICommandService)iWorkbenchWindow.getService(clazz);
                    Command command = commandService.getCommand("org.eclipse.ui.window.closePerspective");
                    HashMap<String, String> parameters = new HashMap<String, String>();
                    parameters.put("org.eclipse.ui.window.closePerspective.perspectiveId", persp.getId());
                    ParameterizedCommand pCommand = ParameterizedCommand.generateCommand((Command)command, parameters);
                    IWorkbenchWindow iWorkbenchWindow2 = PerspectiveSwitcher.this.window;
                    Class<?> clazz2 = class$1;
                    if (clazz2 == null) {
                        try {
                            clazz2 = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    IHandlerService handlerService = (IHandlerService)iWorkbenchWindow2.getService(clazz2);
                    try {
                        handlerService.executeCommand(pCommand, new Event());
                    }
                    catch (ExecutionException executionException) {
                    }
                    catch (NotDefinedException notDefinedException) {
                    }
                    catch (NotEnabledException notEnabledException) {
                    }
                    catch (NotHandledException notHandledException) {}
                }
            }
        });
    }

    private PerspectiveBarManager createBarManager(int direction) {
        IWorkbenchPage page;
        PerspectiveBarManager barManager = new PerspectiveBarManager(this.style | direction);
        int perspectiveInsertionIndex = 0;
        if (this.apiPreferenceStore.getBoolean("SHOW_OPEN_ON_PERSPECTIVE_BAR")) {
            barManager.add((IContributionItem)new PerspectiveBarNewContributionItem(this.window));
            perspectiveInsertionIndex = 1;
        }
        if ((page = this.window.getActivePage()) != null) {
            IPerspectiveDescriptor[] perspectives = page.getOpenPerspectives();
            int i = 0;
            while (i < perspectives.length) {
                barManager.insert(perspectiveInsertionIndex, (IContributionItem)new PerspectiveBarContributionItem(perspectives[i], page));
                ++i;
            }
        }
        return barManager;
    }

    private void updateLocationItems(Menu parent, int newLocation) {
        MenuItem topRight = parent.getItem(0);
        MenuItem topLeft = parent.getItem(1);
        MenuItem left = parent.getItem(2);
        if (newLocation == 3) {
            left.setSelection(true);
            topRight.setSelection(false);
            topLeft.setSelection(false);
        } else if (newLocation == 2) {
            topLeft.setSelection(true);
            left.setSelection(false);
            topRight.setSelection(false);
        } else {
            topRight.setSelection(true);
            left.setSelection(false);
            topLeft.setSelection(false);
        }
    }

    private void addDockOnSubMenu(Menu menu) {
        MenuItem item = new MenuItem(menu, 64);
        item.setText(WorkbenchMessages.PerspectiveSwitcher_dockOn);
        final Menu subMenu = new Menu(item);
        MenuItem menuItemTopRight = new MenuItem(subMenu, 16);
        menuItemTopRight.setText(WorkbenchMessages.PerspectiveSwitcher_topRight);
        this.window.getWorkbench().getHelpSystem().setHelp(menuItemTopRight, "org.eclipse.ui.dock_on_perspective_action_context");
        final MenuItem menuItemTopLeft = new MenuItem(subMenu, 16);
        menuItemTopLeft.setText(WorkbenchMessages.PerspectiveSwitcher_topLeft);
        this.window.getWorkbench().getHelpSystem().setHelp(menuItemTopLeft, "org.eclipse.ui.dock_on_perspective_action_context");
        final MenuItem menuItemLeft = new MenuItem(subMenu, 16);
        menuItemLeft.setText(WorkbenchMessages.PerspectiveSwitcher_left);
        this.window.getWorkbench().getHelpSystem().setHelp(menuItemLeft, "org.eclipse.ui.dock_on_perspective_action_context");
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                MenuItem item = (MenuItem)e.widget;
                String pref = null;
                if (item.equals(menuItemLeft)) {
                    PerspectiveSwitcher.this.updateLocationItems(subMenu, 3);
                    pref = "left";
                } else if (item.equals(menuItemTopLeft)) {
                    PerspectiveSwitcher.this.updateLocationItems(subMenu, 2);
                    pref = "topLeft";
                } else {
                    PerspectiveSwitcher.this.updateLocationItems(subMenu, 1);
                    pref = "topRight";
                }
                IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
                if (!pref.equals(apiStore.getDefaultString("DOCK_PERSPECTIVE_BAR"))) {
                    PrefUtil.getInternalPreferenceStore().setValue("overridepresentation", true);
                }
                apiStore.setValue("DOCK_PERSPECTIVE_BAR", pref);
            }
        };
        menuItemTopRight.addSelectionListener((SelectionListener)listener);
        menuItemTopLeft.addSelectionListener((SelectionListener)listener);
        menuItemLeft.addSelectionListener((SelectionListener)listener);
        item.setMenu(subMenu);
        this.updateLocationItems(subMenu, this.currentLocation);
    }

    private void addShowTextItem(Menu menu) {
        final MenuItem showtextMenuItem = new MenuItem(menu, 32);
        showtextMenuItem.setText(WorkbenchMessages.PerspectiveBar_showText);
        this.window.getWorkbench().getHelpSystem().setHelp(showtextMenuItem, "org.eclipse.ui.show_text_perspective_action_context");
        showtextMenuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (PerspectiveSwitcher.this.perspectiveBar == null) {
                    return;
                }
                boolean preference = showtextMenuItem.getSelection();
                if (preference != PrefUtil.getAPIPreferenceStore().getDefaultBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR")) {
                    PrefUtil.getInternalPreferenceStore().setValue("overridepresentation", true);
                }
                PrefUtil.getAPIPreferenceStore().setValue("SHOW_TEXT_ON_PERSPECTIVE_BAR", preference);
            }
        });
        showtextMenuItem.setSelection(PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR"));
    }

    private void addCustomizeItem(Menu menu) {
        MenuItem customizeMenuItem = new MenuItem(menu, 26);
        customizeMenuItem.setText(WorkbenchMessages.PerspectiveBar_customize);
        this.window.getWorkbench().getHelpSystem().setHelp(customizeMenuItem, "org.eclipse.ui.edit_action_sets_action_context");
        customizeMenuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (PerspectiveSwitcher.this.perspectiveBar == null) {
                    return;
                }
                IWorkbenchWindow iWorkbenchWindow = PerspectiveSwitcher.this.window;
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService handlerService = (IHandlerService)iWorkbenchWindow.getService(clazz);
                try {
                    handlerService.executeCommand("org.eclipse.ui.window.customizePerspective", null);
                }
                catch (ExecutionException executionException) {
                }
                catch (NotDefinedException notDefinedException) {
                }
                catch (NotEnabledException notEnabledException) {
                }
                catch (NotHandledException notHandledException) {}
            }
        });
    }

    private void addSaveAsItem(Menu menu) {
        MenuItem saveasMenuItem = new MenuItem(menu, 26);
        saveasMenuItem.setText(WorkbenchMessages.PerspectiveBar_saveAs);
        this.window.getWorkbench().getHelpSystem().setHelp(saveasMenuItem, "org.eclipse.ui.save_perspective_action_context");
        saveasMenuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                if (PerspectiveSwitcher.this.perspectiveBar == null) {
                    return;
                }
                IWorkbenchWindow iWorkbenchWindow = PerspectiveSwitcher.this.window;
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService handlerService = (IHandlerService)iWorkbenchWindow.getService(clazz);
                IStatus status = Status.OK_STATUS;
                try {
                    handlerService.executeCommand("org.eclipse.ui.window.savePerspective", null);
                }
                catch (ExecutionException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotDefinedException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotEnabledException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotHandledException notHandledException) {}
                if (!status.isOK()) {
                    StatusManager.getManager().handle(status, 3);
                }
            }
        });
    }

    private void addResetItem(Menu menu) {
        MenuItem resetMenuItem = new MenuItem(menu, 26);
        resetMenuItem.setText(WorkbenchMessages.PerspectiveBar_reset);
        this.window.getWorkbench().getHelpSystem().setHelp(resetMenuItem, "org.eclipse.ui.reset_perspective_action_context");
        resetMenuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                if (PerspectiveSwitcher.this.perspectiveBar == null) {
                    return;
                }
                IWorkbenchWindow iWorkbenchWindow = PerspectiveSwitcher.this.window;
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService handlerService = (IHandlerService)iWorkbenchWindow.getService(clazz);
                IStatus status = Status.OK_STATUS;
                try {
                    handlerService.executeCommand("org.eclipse.ui.window.resetPerspective", null);
                }
                catch (ExecutionException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotDefinedException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotEnabledException e) {
                    status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                }
                catch (NotHandledException notHandledException) {}
                if (!status.isOK()) {
                    StatusManager.getManager().handle(status, 3);
                }
            }
        });
    }

    public void saveState(IMemento persBarMem) {
        IMemento childMem = persBarMem.createChild("itemSize");
        int x = this.currentLocation == 1 && this.topBar != null ? this.topBar.getRightWidth() : this.getDefaultWidth();
        childMem.putString("x", Integer.toString(x));
    }

    public void restoreState(IMemento memento) {
        if (memento == null) {
            return;
        }
        IMemento attributes = memento.getChild("perspectiveBar");
        IMemento size = null;
        if (attributes != null) {
            size = attributes.getChild("itemSize");
        }
        if (size != null && this.currentLocation == 1 && this.topBar != null) {
            final Integer x = size.getInteger("x");
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    if (x != null) {
                        PerspectiveSwitcher.this.topBar.setRightWidth(x.intValue());
                    } else {
                        PerspectiveSwitcher.this.topBar.setRightWidth(PerspectiveSwitcher.this.getDefaultWidth());
                    }
                }
            });
        }
    }

    void updatePerspectiveBar() {
        IContributionItem[] items = this.perspectiveBar.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].update();
            ++i;
        }
        this.perspectiveBar.arrangeToolbar();
        this.setCoolItemSize(this.coolItem);
        this.perspectiveBar.getControl().redraw();
        if (this.getControl() != null) {
            this.getControl().pack(true);
        }
    }

    public void updateBarParent() {
        if (this.perspectiveBar == null || this.perspectiveBar.getControl() == null) {
            return;
        }
        if (this.currentLocation == 1 && this.topBar != null) {
            int maxRowHeight = 0;
            ToolItem[] toolItems = this.perspectiveBar.getControl().getItems();
            int i = 0;
            while (i < toolItems.length) {
                maxRowHeight = Math.max(maxRowHeight, toolItems[i].getBounds().height);
                ++i;
            }
            this.topBar.setRightMinimumSize(new Point(45, maxRowHeight));
        }
        LayoutUtil.resize((Control)this.perspectiveBar.getControl());
    }

    public void addReorderListener(IReorderListener listener) {
        this.reorderListener = listener;
    }

    public void dock(int dropSide) {
    }

    public Control getControl() {
        return this.trimControl;
    }

    public String getId() {
        return "org.eclipse.ui.internal.PerspectiveSwitcher";
    }

    public String getDisplayName() {
        return WorkbenchMessages.TrimCommon_PerspectiveSwitcher_TrimName;
    }

    public int getValidSides() {
        return 0;
    }

    public boolean isCloseable() {
        return false;
    }

    public void handleClose() {
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

    class ChangeListener
    extends PerspectiveAdapter
    implements IPageListener {
        ChangeListener() {
        }

        public void perspectiveOpened(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            if (PerspectiveSwitcher.this.findPerspectiveShortcut(perspective, page) == null) {
                PerspectiveSwitcher.this.addPerspectiveShortcut(perspective, page);
            }
        }

        public void perspectiveClosed(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            if (page != null && !page.getWorkbenchWindow().getWorkbench().isClosing()) {
                PerspectiveSwitcher.this.removePerspectiveShortcut(perspective, page);
            }
        }

        public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            PerspectiveSwitcher.this.selectPerspectiveShortcut(perspective, page, true);
        }

        public void perspectiveDeactivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            PerspectiveSwitcher.this.selectPerspectiveShortcut(perspective, page, false);
        }

        public void perspectiveSavedAs(IWorkbenchPage page, IPerspectiveDescriptor oldPerspective, IPerspectiveDescriptor newPerspective) {
            PerspectiveSwitcher.this.updatePerspectiveShortcut(oldPerspective, newPerspective, page);
        }

        public void pageActivated(IWorkbenchPage page) {
        }

        public void pageClosed(IWorkbenchPage page) {
        }

        public void pageOpened(IWorkbenchPage page) {
        }
    }
}

