/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.IntModel;
import org.eclipse.ui.internal.RadioMenu;
import org.eclipse.ui.internal.TrimFrame;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.presentations.PresentationUtil;

public abstract class TrimToolBarBase
implements IWindowTrim {
    protected String id;
    protected int orientation;
    protected WorkbenchWindow wbw;
    protected TrimLayout layout;
    protected ToolBarManager tbMgr = null;
    protected ToolItem contextToolItem = null;
    private TrimFrame frame = null;
    private CoolBar cb = null;
    private CoolItem ci = null;
    private MenuManager dockMenuManager;
    private ContributionItem dockContributionItem = null;
    private Menu sidesMenu;
    private MenuItem dockCascade;
    private RadioMenu radioButtons;
    private IntModel radioVal = new IntModel(0);
    private Listener tbListener = new Listener(){

        public void handleEvent(Event event) {
            Point loc = new Point(event.x, event.y);
            if (event.type == 35) {
                TrimToolBarBase.this.showToolBarPopup(loc);
            }
        }
    };
    private Listener cbListener = new Listener(){

        public void handleEvent(Event event) {
            Point loc = new Point(event.x, event.y);
            if (event.type == 35) {
                TrimToolBarBase.this.showDockTrimPopup(loc);
            }
        }
    };
    private Listener dragListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.button != 3) {
                Point position = DragUtil.getEventLoc(event);
                TrimToolBarBase.this.startDraggingTrim(position);
            }
        }
    };

    protected TrimToolBarBase(String id, int curSide, WorkbenchWindow wbw) {
        this.id = id;
        this.wbw = wbw;
        this.layout = (TrimLayout)wbw.getTrimManager();
    }

    private void showToolBarPopup(Point loc) {
        Point tbLoc = this.tbMgr.getControl().toControl(loc);
        this.contextToolItem = this.tbMgr.getControl().getItem(tbLoc);
        MenuManager mm = this.tbMgr.getContextMenuManager();
        if (mm != null) {
            Menu menu = mm.createContextMenu((Control)this.wbw.getShell());
            menu.setLocation(loc.x, loc.y);
            menu.setVisible(true);
        }
    }

    public abstract void initToolBarManager(ToolBarManager var1);

    public abstract void hookControl(ToolBarManager var1);

    private void createControl(int curSide) {
        this.dispose();
        this.radioVal.set(curSide);
        this.orientation = curSide == 16384 || curSide == 131072 ? 512 : 256;
        this.frame = new TrimFrame((Composite)this.wbw.getShell());
        this.cb = new CoolBar(this.frame.getComposite(), this.orientation | 0x800000);
        this.ci = new CoolItem(this.cb, 0x800000);
        this.tbMgr = new ToolBarManager(this.orientation | 0x800000);
        this.initToolBarManager(this.tbMgr);
        ToolBar tb = this.tbMgr.createControl((Composite)this.cb);
        this.ci.setControl((Control)tb);
        this.hookControl(this.tbMgr);
        this.update(true);
        Cursor dragCursor = this.getControl().getDisplay().getSystemCursor(5);
        this.cb.setCursor(dragCursor);
        Cursor tbCursor = this.getControl().getDisplay().getSystemCursor(0);
        tb.setCursor(tbCursor);
        PresentationUtil.addDragListener((Control)this.cb, this.dragListener);
        this.dockMenuManager = new MenuManager();
        this.dockContributionItem = this.getDockingContribution();
        this.dockMenuManager.add((IContributionItem)this.dockContributionItem);
        tb.addListener(35, this.tbListener);
        this.cb.addListener(35, this.cbListener);
        this.cb.pack(true);
        this.cb.setVisible(true);
        this.tbMgr.getControl().setVisible(true);
        this.cb.setVisible(true);
        this.frame.getComposite().setVisible(true);
    }

    private void handleShowOnChange() {
        if (this.getControl() == null) {
            return;
        }
        this.layout.removeTrim(this);
        this.dock(this.radioVal.get());
        this.layout.addTrim(this.radioVal.get(), this, null);
        LayoutUtil.resize(this.getControl());
    }

    public void update(boolean changed) {
        this.tbMgr.update(changed);
        this.tbMgr.getControl().pack();
        Point size = this.tbMgr.getControl().getSize();
        Point ps = this.ci.computeSize(size.x, size.y);
        this.ci.setPreferredSize(ps);
        this.ci.setSize(ps);
        this.cb.pack();
        this.cb.update();
        LayoutUtil.resize(this.getControl());
    }

    private ContributionItem getDockingContribution() {
        if (this.dockContributionItem == null) {
            this.dockContributionItem = new ContributionItem(){

                public void fill(Menu menu, int index) {
                    super.fill(menu, index);
                    if (TrimToolBarBase.this.isCloseable()) {
                        MenuItem closeItem = new MenuItem(menu, 8, index++);
                        closeItem.setText(WorkbenchMessages.TrimCommon_Close);
                        closeItem.addSelectionListener(new SelectionListener(this){
                            final /* synthetic */ 4 this$1;
                            {
                                this.this$1 = var1_1;
                            }

                            public void widgetSelected(SelectionEvent e) {
                                TrimToolBarBase.access$3(4.access$0(this.this$1));
                            }

                            public void widgetDefaultSelected(SelectionEvent e) {
                            }
                        });
                        new MenuItem(menu, 2, index++);
                    }
                    TrimToolBarBase.this.dockCascade = new MenuItem(menu, 64, index++);
                    TrimToolBarBase.this.dockCascade.setText(WorkbenchMessages.TrimCommon_DockOn);
                    TrimToolBarBase.this.sidesMenu = new Menu(TrimToolBarBase.this.dockCascade);
                    TrimToolBarBase.this.radioButtons = new RadioMenu(TrimToolBarBase.this.sidesMenu, TrimToolBarBase.this.radioVal);
                    TrimToolBarBase.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Top, new Integer(128));
                    TrimToolBarBase.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Bottom, new Integer(1024));
                    TrimToolBarBase.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Left, new Integer(16384));
                    TrimToolBarBase.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Right, new Integer(131072));
                    TrimToolBarBase.this.dockCascade.setMenu(TrimToolBarBase.this.sidesMenu);
                    TrimToolBarBase.this.radioVal.addChangeListener(new IChangeListener(this){
                        final /* synthetic */ 4 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void update(boolean changed) {
                            if (changed) {
                                TrimToolBarBase.access$11(4.access$0(this.this$1));
                            }
                        }
                    });
                }

                static /* synthetic */ TrimToolBarBase access$0(4 var0) {
                    return var0.TrimToolBarBase.this;
                }
            };
        }
        return this.dockContributionItem;
    }

    public int getCurrentSide() {
        return this.radioVal.get();
    }

    private void handleCloseTrim() {
        this.handleClose();
    }

    public void dispose() {
        if (this.getControl() == null || this.getControl().isDisposed()) {
            return;
        }
        if (this.radioButtons != null) {
            this.radioButtons.dispose();
        }
        this.getControl().removeListener(35, this.cbListener);
        this.tbMgr.dispose();
        this.tbMgr = null;
        this.getControl().dispose();
        this.frame = null;
    }

    private void startDraggingTrim(Point position) {
        Rectangle fakeBounds = new Rectangle(100000, 0, 0, 0);
        DragUtil.performDrag(this, fakeBounds, position, true);
    }

    private void showDockTrimPopup(Point pt) {
        Menu menu = this.dockMenuManager.createContextMenu(this.getControl());
        menu.setLocation(pt.x, pt.y);
        menu.setVisible(true);
    }

    public void dock(int dropSide) {
        this.createControl(dropSide);
    }

    public Control getControl() {
        if (this.frame == null) {
            return null;
        }
        return this.frame.getComposite();
    }

    public String getDisplayName() {
        return this.id;
    }

    public int getHeightHint() {
        return this.getControl().computeSize((int)-1, (int)-1, (boolean)true).y;
    }

    public String getId() {
        return this.id;
    }

    public int getValidSides() {
        return 148608;
    }

    public int getWidthHint() {
        return this.getControl().computeSize((int)-1, (int)-1, (boolean)true).x;
    }

    public void handleClose() {
    }

    public boolean isCloseable() {
        return false;
    }

    public boolean isResizeable() {
        return false;
    }

    static /* synthetic */ void access$3(TrimToolBarBase trimToolBarBase) {
        trimToolBarBase.handleCloseTrim();
    }

    static /* synthetic */ void access$11(TrimToolBarBase trimToolBarBase) {
        trimToolBarBase.handleShowOnChange();
    }
}

