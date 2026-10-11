/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
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
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
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
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.IntModel;
import org.eclipse.ui.internal.RadioMenu;
import org.eclipse.ui.internal.WindowTrimProxy;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.presentations.PresentationUtil;

public class TrimCommonUIHandle
extends Composite {
    private TrimLayout layout;
    private IWindowTrim trim;
    private Control toDrag;
    private int orientation;
    private CoolBar cb = null;
    private CoolItem ci = null;
    private static int horizontalHandleSize = -1;
    private static int verticalHandleSize = -1;
    private MenuManager dockMenuManager;
    private ContributionItem dockContributionItem = null;
    private Menu sidesMenu;
    private MenuItem dockCascade;
    private RadioMenu radioButtons;
    private IntModel radioVal = new IntModel(0);
    private Listener dragListener = new Listener(){

        public void handleEvent(Event event) {
            if (event.button != 3) {
                Point position = DragUtil.getEventLoc(event);
                TrimCommonUIHandle.this.startDraggingTrim(position);
            }
        }
    };
    private Listener menuListener = new Listener(){

        public void handleEvent(Event event) {
            Point loc = new Point(event.x, event.y);
            if (event.type == 35) {
                TrimCommonUIHandle.this.showDockTrimPopup(loc);
            }
        }
    };
    private ControlListener controlListener = new ControlListener(){

        public void controlMoved(ControlEvent e) {
        }

        public void controlResized(ControlEvent e) {
            if (e.widget instanceof TrimCommonUIHandle) {
                TrimCommonUIHandle ctrl = (TrimCommonUIHandle)e.widget;
                Point size = ctrl.getSize();
                TrimCommonUIHandle.this.cb.setSize(size);
                TrimCommonUIHandle.this.ci.setSize(size);
                TrimCommonUIHandle.this.ci.setPreferredSize(size);
                TrimCommonUIHandle.this.cb.layout(true);
            }
        }
    };

    public TrimCommonUIHandle(TrimLayout layout, IWindowTrim trim, int curSide) {
        super(trim.getControl().getParent(), 0);
        this.setup(layout, trim, curSide);
        this.addControlListener(this.controlListener);
    }

    public void setup(TrimLayout layout, IWindowTrim trim, int curSide) {
        this.layout = layout;
        this.trim = trim;
        this.toDrag = trim.getControl();
        this.radioVal.set(curSide);
        this.orientation = curSide == 16384 || curSide == 131072 ? 512 : 256;
        this.insertCoolBar(this.orientation);
        this.createWindowTrimProxy();
        this.setDragCursor();
        PresentationUtil.addDragListener((Control)this.cb, this.dragListener);
        this.dockMenuManager = new MenuManager();
        this.dockContributionItem = this.getDockingContribution();
        this.dockMenuManager.add((IContributionItem)this.dockContributionItem);
        this.cb.addListener(35, this.menuListener);
        this.setVisible(true);
    }

    private void handleShowOnChange() {
        this.layout.removeTrim(this.trim);
        this.trim.dock(this.radioVal.get());
        this.layout.addTrim(this.radioVal.get(), this.trim, null);
        LayoutUtil.resize(this.trim.getControl());
    }

    private void createWindowTrimProxy() {
        WindowTrimProxy proxy = new WindowTrimProxy((Control)this, "NONE", "NONE", 148608, false);
        if (this.orientation == 256) {
            proxy.setWidthHint(this.getHandleSize());
            proxy.setHeightHint(0);
        } else {
            proxy.setWidthHint(0);
            proxy.setHeightHint(this.getHandleSize());
        }
        this.setLayoutData(proxy);
    }

    private int getHandleSize() {
        int length;
        if (this.orientation == 256 && horizontalHandleSize != -1) {
            return horizontalHandleSize;
        }
        if (this.orientation == 512 && verticalHandleSize != -1) {
            return verticalHandleSize;
        }
        CoolBar bar = new CoolBar(this.trim.getControl().getParent(), this.orientation);
        CoolItem item = new CoolItem(bar, 0);
        Label ctrl = new Label((Composite)bar, 8);
        ctrl.setText("Button 1");
        Point size = ctrl.computeSize(-1, -1);
        Point ps = item.computeSize(size.x, size.y);
        item.setPreferredSize(ps);
        item.setControl((Control)ctrl);
        bar.pack();
        Point bl = ctrl.getLocation();
        Point cl = bar.getLocation();
        ctrl.dispose();
        item.dispose();
        bar.dispose();
        if (this.orientation == 256) {
            horizontalHandleSize = length = bl.x - cl.x;
        } else {
            verticalHandleSize = length = bl.y - cl.y;
        }
        return length;
    }

    public void insertCoolBar(int orientation) {
        if (this.cb != null) {
            this.ci.dispose();
            PresentationUtil.removeDragListener((Control)this.cb, this.dragListener);
            this.cb.dispose();
        }
        this.cb = new CoolBar((Composite)this, orientation | 0x800000);
        this.cb.setLocation(0, 0);
        this.ci = new CoolItem(this.cb, 0x800000);
        Composite comp = new Composite((Composite)this.cb, 0);
        this.ci.setControl((Control)comp);
    }

    private void setDragCursor() {
        Cursor dragCursor = this.toDrag.getDisplay().getSystemCursor(5);
        this.setCursor(dragCursor);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Point ctrlPrefSize = this.trim.getControl().computeSize(wHint, hHint);
        if (this.orientation == 256) {
            return new Point(this.getHandleSize(), ctrlPrefSize.y);
        }
        return new Point(ctrlPrefSize.x, this.getHandleSize());
    }

    public ContributionItem getDockingContribution() {
        if (this.dockContributionItem == null) {
            this.dockContributionItem = new ContributionItem(){

                public void fill(Menu menu, int index) {
                    super.fill(menu, index);
                    if (TrimCommonUIHandle.this.trim.isCloseable()) {
                        MenuItem closeItem = new MenuItem(menu, 8, index++);
                        closeItem.setText(WorkbenchMessages.TrimCommon_Close);
                        closeItem.addSelectionListener(new SelectionListener(this){
                            final /* synthetic */ 4 this$1;
                            {
                                this.this$1 = var1_1;
                            }

                            public void widgetSelected(SelectionEvent e) {
                                TrimCommonUIHandle.access$4(4.access$0(this.this$1));
                            }

                            public void widgetDefaultSelected(SelectionEvent e) {
                            }
                        });
                        new MenuItem(menu, 2, index++);
                    }
                    TrimCommonUIHandle.this.dockCascade = new MenuItem(menu, 64, index++);
                    TrimCommonUIHandle.this.dockCascade.setText(WorkbenchMessages.TrimCommon_DockOn);
                    TrimCommonUIHandle.this.sidesMenu = new Menu(TrimCommonUIHandle.this.dockCascade);
                    TrimCommonUIHandle.this.radioButtons = new RadioMenu(TrimCommonUIHandle.this.sidesMenu, TrimCommonUIHandle.this.radioVal);
                    TrimCommonUIHandle.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Top, new Integer(128));
                    TrimCommonUIHandle.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Bottom, new Integer(1024));
                    TrimCommonUIHandle.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Left, new Integer(16384));
                    TrimCommonUIHandle.this.radioButtons.addMenuItem(WorkbenchMessages.TrimCommon_Right, new Integer(131072));
                    TrimCommonUIHandle.this.dockCascade.setMenu(TrimCommonUIHandle.this.sidesMenu);
                    TrimCommonUIHandle.this.radioVal.addChangeListener(new IChangeListener(this){
                        final /* synthetic */ 4 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void update(boolean changed) {
                            if (changed) {
                                TrimCommonUIHandle.access$12(4.access$0(this.this$1));
                            }
                        }
                    });
                }

                static /* synthetic */ TrimCommonUIHandle access$0(4 var0) {
                    return var0.TrimCommonUIHandle.this;
                }
            };
        }
        return this.dockContributionItem;
    }

    private void handleCloseTrim() {
        this.layout.removeTrim(this.trim);
        this.trim.handleClose();
    }

    public void dispose() {
        if (this.radioButtons != null) {
            this.radioButtons.dispose();
        }
        this.removeControlListener(this.controlListener);
        this.removeListener(35, this.menuListener);
        super.dispose();
    }

    protected void startDraggingTrim(Point position) {
        Rectangle fakeBounds = new Rectangle(100000, 0, 0, 0);
        DragUtil.performDrag(this.trim, fakeBounds, position, true);
    }

    private void showDockTrimPopup(Point pt) {
        Menu menu = this.dockMenuManager.createContextMenu(this.toDrag);
        menu.setLocation(pt.x, pt.y);
        menu.setVisible(true);
    }

    static /* synthetic */ void access$4(TrimCommonUIHandle trimCommonUIHandle) {
        trimCommonUIHandle.handleCloseTrim();
    }

    static /* synthetic */ void access$12(TrimCommonUIHandle trimCommonUIHandle) {
        trimCommonUIHandle.handleShowOnChange();
    }
}

