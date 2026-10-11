/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.custom.TableTree
 *  org.eclipse.swt.custom.TableTreeItem
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.util;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.IOpenEventListener;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class OpenStrategy {
    public static final int DOUBLE_CLICK = 0;
    public static final int SINGLE_CLICK = 1;
    public static final int SELECT_ON_HOVER = 2;
    public static final int ARROW_KEYS_OPEN = 4;
    public static final int NO_TIMER = 1;
    public static final int FILE_EXPLORER = 5;
    public static final int ACTIVE_DESKTOP = 3;
    private static int TIME = 500;
    private static int CURRENT_METHOD = 0;
    private Listener eventHandler;
    private ListenerList openEventListeners = new ListenerList();
    private ListenerList selectionEventListeners = new ListenerList();
    private ListenerList postSelectionEventListeners = new ListenerList();

    public static final int getPostSelectionDelay() {
        return TIME;
    }

    public OpenStrategy(Control control) {
        this.initializeHandler(control.getDisplay());
        this.addListener(control);
    }

    public void addOpenListener(IOpenEventListener listener) {
        this.openEventListeners.add((Object)listener);
    }

    public void removeOpenListener(IOpenEventListener listener) {
        this.openEventListeners.remove((Object)listener);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.selectionEventListeners.add((Object)listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.selectionEventListeners.remove((Object)listener);
    }

    public void addPostSelectionListener(SelectionListener listener) {
        this.postSelectionEventListeners.add((Object)listener);
    }

    public void removePostSelectionListener(SelectionListener listener) {
        this.postSelectionEventListeners.remove((Object)listener);
    }

    public static int getOpenMethod() {
        return CURRENT_METHOD;
    }

    public static void setOpenMethod(int method) {
        if (method == 0) {
            CURRENT_METHOD = method;
            return;
        }
        if ((method & 1) == 0) {
            throw new IllegalArgumentException("Invalid open mode");
        }
        if ((method & 7) == 0) {
            throw new IllegalArgumentException("Invalid open mode");
        }
        CURRENT_METHOD = method;
    }

    public static boolean activateOnOpen() {
        return OpenStrategy.getOpenMethod() == 0;
    }

    private void addListener(Control c) {
        c.addListener(6, this.eventHandler);
        c.addListener(7, this.eventHandler);
        c.addListener(5, this.eventHandler);
        c.addListener(3, this.eventHandler);
        c.addListener(4, this.eventHandler);
        c.addListener(1, this.eventHandler);
        c.addListener(13, this.eventHandler);
        c.addListener(14, this.eventHandler);
        c.addListener(18, this.eventHandler);
        c.addListener(17, this.eventHandler);
    }

    private void fireSelectionEvent(SelectionEvent e) {
        if (e.item != null && e.item.isDisposed()) {
            return;
        }
        Object[] l = this.selectionEventListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((SelectionListener)l[i]).widgetSelected(e);
            ++i;
        }
    }

    private void fireDefaultSelectionEvent(SelectionEvent e) {
        Object[] l = this.selectionEventListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((SelectionListener)l[i]).widgetDefaultSelected(e);
            ++i;
        }
    }

    private void firePostSelectionEvent(SelectionEvent e) {
        if (e.item != null && e.item.isDisposed()) {
            return;
        }
        Object[] l = this.postSelectionEventListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((SelectionListener)l[i]).widgetSelected(e);
            ++i;
        }
    }

    private void fireOpenEvent(SelectionEvent e) {
        if (e.item != null && e.item.isDisposed()) {
            return;
        }
        Object[] l = this.openEventListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((IOpenEventListener)l[i]).handleOpen(e);
            ++i;
        }
    }

    private void initializeHandler(final Display display) {
        this.eventHandler = new Listener(){
            boolean timerStarted = false;
            Event mouseUpEvent = null;
            Event mouseMoveEvent = null;
            SelectionEvent selectionPendent = null;
            boolean enterKeyDown = false;
            SelectionEvent defaultSelectionPendent = null;
            boolean arrowKeyDown = false;
            final int[] count = new int[1];
            long startTime = System.currentTimeMillis();
            boolean collapseOccurred = false;
            boolean expandOccurred = false;

            public void handleEvent(Event e) {
                if (e.type == 14) {
                    SelectionEvent event = new SelectionEvent(e);
                    OpenStrategy.this.fireDefaultSelectionEvent(event);
                    if (CURRENT_METHOD == 0) {
                        OpenStrategy.this.fireOpenEvent(event);
                    } else if (this.enterKeyDown) {
                        OpenStrategy.this.fireOpenEvent(event);
                        this.enterKeyDown = false;
                        this.defaultSelectionPendent = null;
                    } else {
                        this.defaultSelectionPendent = event;
                    }
                    return;
                }
                switch (e.type) {
                    case 6: 
                    case 7: {
                        this.mouseUpEvent = null;
                        this.mouseMoveEvent = null;
                        this.selectionPendent = null;
                        break;
                    }
                    case 5: {
                        Runnable[] runnable;
                        if ((CURRENT_METHOD & 2) == 0) {
                            return;
                        }
                        if (e.stateMask != 0) {
                            return;
                        }
                        if (e.widget.getDisplay().getFocusControl() != e.widget) {
                            return;
                        }
                        this.mouseMoveEvent = e;
                        runnable = new Runnable[]{new Runnable(this, display, runnable){
                            final /* synthetic */ 1 this$1;
                            private final /* synthetic */ Display val$display;
                            private final /* synthetic */ Runnable[] val$runnable;
                            {
                                this.this$1 = var1_1;
                                this.val$display = display;
                                this.val$runnable = runnableArray;
                            }

                            public void run() {
                                long time = System.currentTimeMillis();
                                int diff = (int)(time - this.this$1.startTime);
                                if (diff <= OpenStrategy.access$3()) {
                                    this.val$display.timerExec(diff * 2 / 3, this.val$runnable[0]);
                                } else {
                                    this.this$1.timerStarted = false;
                                    this.this$1.setSelection(this.this$1.mouseMoveEvent);
                                }
                            }
                        }};
                        this.startTime = System.currentTimeMillis();
                        if (this.timerStarted) break;
                        this.timerStarted = true;
                        display.timerExec(TIME * 2 / 3, runnable[0]);
                        break;
                    }
                    case 3: {
                        this.mouseUpEvent = null;
                        this.arrowKeyDown = false;
                        break;
                    }
                    case 17: {
                        this.expandOccurred = true;
                        break;
                    }
                    case 18: {
                        this.collapseOccurred = true;
                        break;
                    }
                    case 4: {
                        this.mouseMoveEvent = null;
                        if (e.button != 1 || (e.stateMask & 0xFFF7FFFF) != 0) {
                            return;
                        }
                        if (this.selectionPendent != null && !this.collapseOccurred && !this.expandOccurred) {
                            this.mouseSelectItem(this.selectionPendent);
                            break;
                        }
                        this.mouseUpEvent = e;
                        this.collapseOccurred = false;
                        this.expandOccurred = false;
                        this.selectionPendent = null;
                        break;
                    }
                    case 1: {
                        this.mouseMoveEvent = null;
                        this.mouseUpEvent = null;
                        boolean bl = this.arrowKeyDown = (e.keyCode == 0x1000001 || e.keyCode == 0x1000002) && e.stateMask == 0;
                        if (e.character == '\r') {
                            if (this.defaultSelectionPendent != null) {
                                OpenStrategy.this.fireOpenEvent(new SelectionEvent(e));
                                this.enterKeyDown = false;
                                this.defaultSelectionPendent = null;
                            } else {
                                this.enterKeyDown = true;
                            }
                        }
                        this.collapseOccurred = false;
                        this.expandOccurred = false;
                        break;
                    }
                    case 13: {
                        SelectionEvent event = new SelectionEvent(e);
                        OpenStrategy.this.fireSelectionEvent(event);
                        this.mouseMoveEvent = null;
                        if (this.mouseUpEvent != null) {
                            this.mouseSelectItem(event);
                        } else {
                            this.selectionPendent = event;
                        }
                        this.count[0] = this.count[0] + 1;
                        int id = this.count[0];
                        display.asyncExec(new Runnable(this, display, e, id){
                            final /* synthetic */ 1 this$1;
                            private final /* synthetic */ Display val$display;
                            private final /* synthetic */ Event val$e;
                            private final /* synthetic */ int val$id;
                            {
                                this.this$1 = var1_1;
                                this.val$display = display;
                                this.val$e = event;
                                this.val$id = n;
                            }

                            public void run() {
                                if (this.this$1.arrowKeyDown) {
                                    this.val$display.timerExec(OpenStrategy.access$3(), new Runnable(this, this.val$id, this.val$e){
                                        final /* synthetic */ 3 this$2;
                                        private final /* synthetic */ int val$id;
                                        private final /* synthetic */ Event val$e;
                                        {
                                            this.this$2 = var1_1;
                                            this.val$id = n;
                                            this.val$e = event;
                                        }

                                        public void run() {
                                            if (this.val$id == 3.access$0(this.this$2).count[0]) {
                                                OpenStrategy.access$5(1.access$0(3.access$0(this.this$2)), new SelectionEvent(this.val$e));
                                                if ((OpenStrategy.access$1() & 4) != 0) {
                                                    OpenStrategy.access$2(1.access$0(3.access$0(this.this$2)), new SelectionEvent(this.val$e));
                                                }
                                            }
                                        }
                                    });
                                } else {
                                    OpenStrategy.access$5(1.access$0(this.this$1), new SelectionEvent(this.val$e));
                                }
                            }

                            static /* synthetic */ 1 access$0(3 var0) {
                                return var0.this$1;
                            }
                        });
                    }
                }
            }

            void mouseSelectItem(SelectionEvent e) {
                if ((CURRENT_METHOD & 1) != 0) {
                    OpenStrategy.this.fireOpenEvent(e);
                }
                this.mouseUpEvent = null;
                this.selectionPendent = null;
            }

            void setSelection(Event e) {
                if (e == null) {
                    return;
                }
                Widget w = e.widget;
                if (w.isDisposed()) {
                    return;
                }
                SelectionEvent selEvent = new SelectionEvent(e);
                if (w instanceof Tree) {
                    Tree tree = (Tree)w;
                    TreeItem item = tree.getItem(new Point(e.x, e.y));
                    if (item != null) {
                        tree.setSelection(new TreeItem[]{item});
                    }
                    selEvent.item = item;
                } else if (w instanceof Table) {
                    Table table = (Table)w;
                    TableItem item = table.getItem(new Point(e.x, e.y));
                    if (item != null) {
                        table.setSelection(new TableItem[]{item});
                    }
                    selEvent.item = item;
                } else if (w instanceof TableTree) {
                    TableTree table = (TableTree)w;
                    TableTreeItem item = table.getItem(new Point(e.x, e.y));
                    if (item != null) {
                        table.setSelection(new TableTreeItem[]{item});
                    }
                    selEvent.item = item;
                } else {
                    return;
                }
                if (selEvent.item == null) {
                    return;
                }
                OpenStrategy.this.fireSelectionEvent(selEvent);
                OpenStrategy.this.firePostSelectionEvent(selEvent);
            }

            static /* synthetic */ OpenStrategy access$0(1 var0) {
                return var0.OpenStrategy.this;
            }
        };
    }
}

