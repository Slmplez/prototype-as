/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.win32.LVHITTESTINFO;
import org.eclipse.swt.internal.win32.LVINSERTMARK;
import org.eclipse.swt.internal.win32.LVITEM;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

public class TableDropTargetEffect
extends DropTargetEffect {
    static final int SCROLL_HYSTERESIS = 200;
    int scrollIndex = -1;
    long scrollBeginTime;
    TableItem dropHighlight;
    int iItemInsert = -1;

    public TableDropTargetEffect(Table table) {
        super(table);
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
        this.scrollBeginTime = 0L;
        this.scrollIndex = -1;
        this.dropHighlight = null;
        this.iItemInsert = -1;
    }

    public void dragLeave(DropTargetEvent event) {
        Table table = (Table)this.control;
        int handle = table.handle;
        if (this.dropHighlight != null) {
            LVITEM lvItem = new LVITEM();
            lvItem.stateMask = 8;
            OS.SendMessage(handle, 4139, -1, lvItem);
            this.dropHighlight = null;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1) && this.iItemInsert != -1) {
            LVINSERTMARK plvim = new LVINSERTMARK();
            plvim.cbSize = LVINSERTMARK.sizeof;
            plvim.iItem = -1;
            OS.SendMessage(handle, 4262, 0, plvim);
            this.iItemInsert = -1;
        }
        this.scrollBeginTime = 0L;
        this.scrollIndex = -1;
    }

    public void dragOver(DropTargetEvent event) {
        Table table = (Table)this.getControl();
        int effect = this.checkEffect(event.feedback);
        int handle = table.handle;
        Point coordinates = new Point(event.x, event.y);
        coordinates = table.toControl(coordinates);
        LVHITTESTINFO pinfo = new LVHITTESTINFO();
        pinfo.x = coordinates.x;
        pinfo.y = coordinates.y;
        OS.SendMessage(handle, 4114, 0, pinfo);
        if ((effect & 8) == 0) {
            this.scrollBeginTime = 0L;
            this.scrollIndex = -1;
        } else if (pinfo.iItem != -1 && this.scrollIndex == pinfo.iItem && this.scrollBeginTime != 0L) {
            if (System.currentTimeMillis() >= this.scrollBeginTime) {
                int top = Math.max(0, OS.SendMessage(handle, 4135, 0, 0));
                int count = OS.SendMessage(handle, 4100, 0, 0);
                int index = this.scrollIndex - 1 < top ? Math.max(0, this.scrollIndex - 1) : Math.min(count - 1, this.scrollIndex + 1);
                boolean scroll = true;
                if (pinfo.iItem == top) {
                    scroll = pinfo.iItem != index;
                } else {
                    RECT itemRect = new RECT();
                    itemRect.left = 0;
                    if (OS.SendMessage(handle, 4110, pinfo.iItem, itemRect) != 0) {
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
                    OS.SendMessage(handle, 4115, index, 0);
                    table.redraw();
                }
                this.scrollBeginTime = 0L;
                this.scrollIndex = -1;
            }
        } else {
            this.scrollBeginTime = System.currentTimeMillis() + 200L;
            this.scrollIndex = pinfo.iItem;
        }
        if (pinfo.iItem != -1 && (effect & 1) != 0) {
            TableItem item = table.getItem(pinfo.iItem);
            if (this.dropHighlight != item) {
                LVITEM lvItem = new LVITEM();
                lvItem.stateMask = 8;
                OS.SendMessage(handle, 4139, -1, lvItem);
                lvItem.state = 8;
                OS.SendMessage(handle, 4139, pinfo.iItem, lvItem);
                this.dropHighlight = item;
            }
        } else if (this.dropHighlight != null) {
            LVITEM lvItem = new LVITEM();
            lvItem.stateMask = 8;
            OS.SendMessage(handle, 4139, -1, lvItem);
            this.dropHighlight = null;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
            if (pinfo.iItem != -1 && (effect & 6) != 0) {
                LVINSERTMARK plvim = new LVINSERTMARK();
                plvim.cbSize = LVINSERTMARK.sizeof;
                plvim.dwFlags = (effect & 4) != 0 ? 1 : 0;
                plvim.iItem = pinfo.iItem;
                if (OS.SendMessage(handle, 4262, 0, plvim) != 0) {
                    this.iItemInsert = pinfo.iItem;
                }
            } else if (this.iItemInsert != -1) {
                LVINSERTMARK plvim = new LVINSERTMARK();
                plvim.cbSize = LVINSERTMARK.sizeof;
                plvim.iItem = -1;
                OS.SendMessage(handle, 4262, 0, plvim);
                this.iItemInsert = -1;
            }
        }
    }
}

