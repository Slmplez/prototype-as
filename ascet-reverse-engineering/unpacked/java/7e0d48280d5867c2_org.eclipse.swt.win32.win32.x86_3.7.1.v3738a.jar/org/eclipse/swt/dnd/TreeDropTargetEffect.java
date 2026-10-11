/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TVHITTESTINFO;
import org.eclipse.swt.internal.win32.TVITEM;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;

public class TreeDropTargetEffect
extends DropTargetEffect {
    static final int SCROLL_HYSTERESIS = 200;
    static final int EXPAND_HYSTERESIS = 1000;
    int dropIndex;
    int scrollIndex;
    long scrollBeginTime;
    int expandIndex;
    long expandBeginTime;
    TreeItem insertItem;
    boolean insertBefore;

    public TreeDropTargetEffect(Tree tree) {
        super(tree);
    }

    int checkEffect(int effect) {
        if ((effect & 1) != 0) {
            effect = effect & 0xFFFFFFFB & 0xFFFFFFFD;
        }
        if ((effect & 2) != 0) {
            effect &= 0xFFFFFFFB;
        }
        return effect;
    }

    public void dragEnter(DropTargetEvent event) {
        this.dropIndex = -1;
        this.insertItem = null;
        this.expandBeginTime = 0L;
        this.expandIndex = -1;
        this.scrollBeginTime = 0L;
        this.scrollIndex = -1;
    }

    public void dragLeave(DropTargetEvent event) {
        Tree tree = (Tree)this.control;
        int handle = tree.handle;
        if (this.dropIndex != -1) {
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = this.dropIndex;
            tvItem.mask = 8;
            tvItem.stateMask = 8;
            tvItem.state = 0;
            OS.SendMessage(handle, OS.TVM_SETITEM, 0, tvItem);
            this.dropIndex = -1;
        }
        if (this.insertItem != null) {
            tree.setInsertMark(null, false);
            this.insertItem = null;
        }
        this.expandBeginTime = 0L;
        this.expandIndex = -1;
        this.scrollBeginTime = 0L;
        this.scrollIndex = -1;
    }

    public void dragOver(DropTargetEvent event) {
        Tree tree = (Tree)this.getControl();
        int effect = this.checkEffect(event.feedback);
        int handle = tree.handle;
        Point coordinates = new Point(event.x, event.y);
        coordinates = tree.toControl(coordinates);
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = coordinates.x;
        lpht.y = coordinates.y;
        OS.SendMessage(handle, 4369, 0, lpht);
        int hItem = lpht.hItem;
        if ((effect & 8) == 0) {
            this.scrollBeginTime = 0L;
            this.scrollIndex = -1;
        } else if (hItem != -1 && this.scrollIndex == hItem && this.scrollBeginTime != 0L) {
            if (System.currentTimeMillis() >= this.scrollBeginTime) {
                int topItem = OS.SendMessage(handle, 4362, 5, 0);
                int nextItem = OS.SendMessage(handle, 4362, hItem == topItem ? 7 : 6, hItem);
                boolean scroll = true;
                if (hItem == topItem) {
                    scroll = nextItem != 0;
                } else {
                    RECT itemRect = new RECT();
                    if (OS.TreeView_GetItemRect(handle, nextItem, itemRect, true)) {
                        RECT rect = new RECT();
                        OS.GetClientRect(handle, rect);
                        POINT pt = new POINT();
                        pt.x = itemRect.left;
                        pt.y = itemRect.top;
                        if (OS.PtInRect(rect, pt)) {
                            pt.y = itemRect.bottom;
                            if (OS.PtInRect(rect, pt)) {
                                scroll = false;
                            }
                        }
                    }
                }
                if (scroll) {
                    OS.SendMessage(handle, 4372, 0, nextItem);
                    tree.redraw();
                }
                this.scrollBeginTime = 0L;
                this.scrollIndex = -1;
            }
        } else {
            this.scrollBeginTime = System.currentTimeMillis() + 200L;
            this.scrollIndex = hItem;
        }
        if ((effect & 0x10) == 0) {
            this.expandBeginTime = 0L;
            this.expandIndex = -1;
        } else if (hItem != -1 && this.expandIndex == hItem && this.expandBeginTime != 0L) {
            if (System.currentTimeMillis() >= this.expandBeginTime) {
                TreeItem item;
                if (OS.SendMessage(handle, 4362, 4, hItem) != 0 && (item = (TreeItem)tree.getDisplay().findWidget(tree.handle, hItem)) != null && !item.getExpanded()) {
                    item.setExpanded(true);
                    tree.redraw();
                    Event expandEvent = new Event();
                    expandEvent.item = item;
                    tree.notifyListeners(17, expandEvent);
                }
                this.expandBeginTime = 0L;
                this.expandIndex = -1;
            }
        } else {
            this.expandBeginTime = System.currentTimeMillis() + 1000L;
            this.expandIndex = hItem;
        }
        if (this.dropIndex != -1 && (this.dropIndex != hItem || (effect & 1) == 0)) {
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = this.dropIndex;
            tvItem.mask = 8;
            tvItem.stateMask = 8;
            tvItem.state = 0;
            OS.SendMessage(handle, OS.TVM_SETITEM, 0, tvItem);
            this.dropIndex = -1;
        }
        if (hItem != -1 && hItem != this.dropIndex && (effect & 1) != 0) {
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = hItem;
            tvItem.mask = 8;
            tvItem.stateMask = 8;
            tvItem.state = 8;
            OS.SendMessage(handle, OS.TVM_SETITEM, 0, tvItem);
            this.dropIndex = hItem;
        }
        if ((effect & 2) != 0 || (effect & 4) != 0) {
            boolean before = (effect & 2) != 0;
            TreeItem item = (TreeItem)tree.getDisplay().findWidget(tree.handle, hItem);
            if (item != null) {
                if (item != this.insertItem || before != this.insertBefore) {
                    tree.setInsertMark(item, before);
                }
                this.insertItem = item;
                this.insertBefore = before;
            } else {
                if (this.insertItem != null) {
                    tree.setInsertMark(null, false);
                }
                this.insertItem = null;
            }
        } else {
            if (this.insertItem != null) {
                tree.setInsertMark(null, false);
            }
            this.insertItem = null;
        }
    }
}

