/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.HDHITTESTINFO;
import org.eclipse.swt.internal.win32.HDITEM;
import org.eclipse.swt.internal.win32.HDLAYOUT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.NMHDR;
import org.eclipse.swt.internal.win32.NMHEADER;
import org.eclipse.swt.internal.win32.NMRGINFO;
import org.eclipse.swt.internal.win32.NMTREEVIEW;
import org.eclipse.swt.internal.win32.NMTTCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMTTDISPINFO;
import org.eclipse.swt.internal.win32.NMTVCUSTOMDRAW;
import org.eclipse.swt.internal.win32.NMTVDISPINFO;
import org.eclipse.swt.internal.win32.NMTVITEMCHANGE;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PAINTSTRUCT;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SCROLLBARINFO;
import org.eclipse.swt.internal.win32.SCROLLINFO;
import org.eclipse.swt.internal.win32.SHDRAGIMAGE;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.TOOLINFO;
import org.eclipse.swt.internal.win32.TVHITTESTINFO;
import org.eclipse.swt.internal.win32.TVINSERTSTRUCT;
import org.eclipse.swt.internal.win32.TVITEM;
import org.eclipse.swt.internal.win32.TVSORTCB;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class Tree
extends Composite {
    TreeItem[] items;
    TreeColumn[] columns;
    int columnCount;
    ImageList imageList;
    ImageList headerImageList;
    TreeItem currentItem;
    TreeColumn sortColumn;
    RECT focusRect;
    int hwndParent;
    int hwndHeader;
    int hAnchor;
    int hInsert;
    int hSelect;
    int lastID;
    int hFirstIndexOf;
    int hLastIndexOf;
    int lastIndexOf;
    int itemCount;
    int sortDirection;
    boolean dragStarted;
    boolean gestureCompleted;
    boolean insertAfter;
    boolean shrink;
    boolean ignoreShrink;
    boolean ignoreSelect;
    boolean ignoreExpand;
    boolean ignoreDeselect;
    boolean ignoreResize;
    boolean lockSelection;
    boolean oldSelected;
    boolean newSelected;
    boolean ignoreColumnMove;
    boolean linesVisible;
    boolean customDraw;
    boolean printClient;
    boolean painted;
    boolean ignoreItemHeight;
    boolean ignoreCustomDraw;
    boolean ignoreDrawForeground;
    boolean ignoreDrawBackground;
    boolean ignoreDrawFocus;
    boolean ignoreDrawSelection;
    boolean ignoreDrawHot;
    boolean ignoreFullSelection;
    boolean explorerTheme;
    boolean createdAsRTL;
    int scrollWidth;
    int selectionForeground;
    int headerToolTipHandle;
    int itemToolTipHandle;
    int lastTimerID = -1;
    int lastTimerCount;
    static final int TIMER_MAX_COUNT = 8;
    static final int INSET = 3;
    static final int GRID_WIDTH = 1;
    static final int SORT_WIDTH = 10;
    static final int HEADER_MARGIN = 12;
    static final int HEADER_EXTRA = 3;
    static final int INCREMENT = 5;
    static final int EXPLORER_EXTRA = 2;
    static final int DRAG_IMAGE_SIZE = 301;
    static final boolean EXPLORER_THEME = true;
    static final int TreeProc;
    static final TCHAR TreeClass;
    static final int HeaderProc;
    static final TCHAR HeaderClass;

    static {
        TreeClass = new TCHAR(0, "SysTreeView32", true);
        HeaderClass = new TCHAR(0, "SysHeader32", true);
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, TreeClass, lpWndClass);
        TreeProc = lpWndClass.lpfnWndProc;
        OS.GetClassInfo(0, HeaderClass, lpWndClass);
        HeaderProc = lpWndClass.lpfnWndProc;
    }

    public Tree(Composite parent, int style) {
        super(parent, Tree.checkStyle(style));
    }

    static int checkStyle(int style) {
        if ((style & 0x10) == 0) {
            style |= 0x300;
        }
        if ((style & 0x100) != 0 && (style & 0x200) == 0) {
            style |= 0x200;
        }
        return Tree.checkBits(style, 4, 2, 0, 0, 0, 0);
    }

    void _addListener(int eventType, Listener listener) {
        super._addListener(eventType, listener);
        switch (eventType) {
            case 29: {
                if ((this.state & 0x8000) == 0) break;
                int bits = OS.GetWindowLong(this.handle, -16);
                OS.SetWindowLong(this.handle, -16, bits &= 0xFFFFFFEF);
                break;
            }
            case 40: 
            case 41: 
            case 42: {
                this.customDraw = true;
                this.style |= 0x20000000;
                if (this.isCustomToolTip()) {
                    this.createItemToolTips();
                }
                OS.SendMessage(this.handle, 4385, 0, 0);
                int bits = OS.GetWindowLong(this.handle, -16);
                if (eventType == 41) {
                    bits |= 0x8000;
                }
                if ((this.style & 0x10000) != 0 && eventType != 41 && !this.explorerTheme) {
                    bits &= 0xFFFFEFFF;
                }
                if (bits == OS.GetWindowLong(this.handle, -16)) break;
                OS.SetWindowLong(this.handle, -16, bits);
                OS.InvalidateRect(this.handle, null, true);
                int count = OS.SendMessage(this.handle, 4357, 0, 0);
                if (count == 0 || (bits & 0x8000) == 0 || OS.IsWinCE) break;
                OS.ShowScrollBar(this.handle, 0, false);
            }
        }
    }

    TreeItem _getItem(int hItem) {
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        tvItem.hItem = hItem;
        if (OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem) != 0) {
            return this._getItem(tvItem.hItem, tvItem.lParam);
        }
        return null;
    }

    TreeItem _getItem(int hItem, int id) {
        if ((this.style & 0x10000000) == 0) {
            return this.items[id];
        }
        return id != -1 ? this.items[id] : new TreeItem(this, 0, -1, -1, hItem);
    }

    void _setBackgroundPixel(int newPixel) {
        int oldPixel = OS.SendMessage(this.handle, 4383, 0, 0);
        if (oldPixel != newPixel) {
            if (oldPixel != -1) {
                OS.SendMessage(this.handle, 4381, 0, -1);
            }
            OS.SendMessage(this.handle, 4381, 0, newPixel);
            if (this.explorerTheme) {
                int bits2 = OS.SendMessage(this.handle, 4397, 0, 0);
                bits2 = newPixel == -1 && this.findImageControl() == null ? (bits2 |= 0x40) : (bits2 &= 0xFFFFFFBF);
                OS.SendMessage(this.handle, 4396, 0, bits2);
            }
            if ((this.style & 0x20) != 0) {
                this.setCheckboxImageList();
            }
        }
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    public void addTreeListener(TreeListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(17, typedListener);
        this.addListener(18, typedListener);
    }

    int borderHandle() {
        return this.hwndParent != 0 ? this.hwndParent : this.handle;
    }

    LRESULT CDDS_ITEMPOSTPAINT(NMTVCUSTOMDRAW nmcd, int wParam, int lParam) {
        int hItem;
        int uiState;
        int bits;
        boolean hot;
        if (this.ignoreCustomDraw) {
            return null;
        }
        if (nmcd.left == nmcd.right) {
            return new LRESULT(0);
        }
        int hDC = nmcd.hdc;
        OS.RestoreDC(hDC, -1);
        TreeItem item = this.getItem(nmcd);
        if (item == null) {
            return null;
        }
        if (nmcd.left >= nmcd.right || nmcd.top >= nmcd.bottom) {
            return null;
        }
        if (!OS.IsWindowVisible(this.handle)) {
            return null;
        }
        if ((this.style & 0x10000) != 0 || this.findImageControl() != null || this.ignoreDrawSelection || this.explorerTheme) {
            OS.SetBkMode(hDC, 1);
        }
        boolean selected = this.isItemSelected(nmcd);
        boolean bl = hot = this.explorerTheme && (nmcd.uItemState & 0x40) != 0;
        if (OS.IsWindowEnabled(this.handle) && this.explorerTheme && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x200) != 0) {
            if ((this.style & 0x10000) != 0 && (selected || hot)) {
                OS.SetTextColor(hDC, OS.GetSysColor(OS.COLOR_WINDOWTEXT));
            } else {
                OS.SetTextColor(hDC, this.getForegroundPixel());
            }
        }
        int[] order = null;
        RECT clientRect = new RECT();
        OS.GetClientRect(this.scrolledHandle(), clientRect);
        if (this.hwndHeader != 0) {
            OS.MapWindowPoints(this.hwndParent, this.handle, clientRect, 2);
            if (this.columnCount != 0) {
                order = new int[this.columnCount];
                OS.SendMessage(this.hwndHeader, 4625, this.columnCount, order);
            }
        }
        int sortIndex = -1;
        int clrSortBk = -1;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.sortColumn != null && this.sortDirection != 0 && this.findImageControl() == null) {
            sortIndex = this.indexOf(this.sortColumn);
            clrSortBk = this.getSortColumnPixel();
        }
        int x = 0;
        Point size = null;
        int i = 0;
        while (i < Math.max(1, this.columnCount)) {
            int index = order == null ? i : order[i];
            int width = nmcd.right - nmcd.left;
            if (this.columnCount > 0 && this.hwndHeader != 0) {
                HDITEM hdItem = new HDITEM();
                hdItem.mask = 1;
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem);
                width = hdItem.cxy;
            }
            if (i == 0 && (this.style & 0x10000) != 0) {
                boolean clear;
                boolean bl2 = clear = !this.explorerTheme && !this.ignoreDrawSelection && this.findImageControl() == null;
                if (clear || selected && !this.ignoreDrawSelection || hot && !this.ignoreDrawHot) {
                    boolean draw = true;
                    RECT pClipRect = new RECT();
                    OS.SetRect(pClipRect, width, nmcd.top, nmcd.right, nmcd.bottom);
                    if (this.explorerTheme) {
                        int iStateId;
                        if (this.hooks(40)) {
                            RECT itemRect = item.getBounds(index, true, true, false, false, true, hDC);
                            itemRect.left -= 2;
                            itemRect.right += 3;
                            pClipRect.left = itemRect.left;
                            pClipRect.right = itemRect.right;
                            if (this.columnCount > 0 && this.hwndHeader != 0) {
                                HDITEM hdItem = new HDITEM();
                                hdItem.mask = 1;
                                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem);
                                pClipRect.right = Math.min(pClipRect.right, nmcd.left + hdItem.cxy);
                            }
                        }
                        RECT pRect = new RECT();
                        OS.SetRect(pRect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                        if (this.columnCount > 0 && this.hwndHeader != 0) {
                            int totalWidth = 0;
                            HDITEM hdItem = new HDITEM();
                            hdItem.mask = 1;
                            int j = 0;
                            while (j < this.columnCount) {
                                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, j, hdItem);
                                totalWidth += hdItem.cxy;
                                ++j;
                            }
                            if (totalWidth > clientRect.right - clientRect.left) {
                                pRect.left = 0;
                                pRect.right = totalWidth;
                            } else {
                                pRect.left = clientRect.left;
                                pRect.right = clientRect.right;
                            }
                        }
                        draw = false;
                        int hTheme = OS.OpenThemeData(this.handle, Display.TREEVIEW);
                        int n = iStateId = selected ? 3 : 2;
                        if (OS.GetFocus() != this.handle && selected && !hot) {
                            iStateId = 5;
                        }
                        OS.DrawThemeBackground(hTheme, hDC, 1, iStateId, pRect, pClipRect);
                        OS.CloseThemeData(hTheme);
                    }
                    if (draw) {
                        this.fillBackground(hDC, OS.GetBkColor(hDC), pClipRect);
                    }
                }
            }
            if (x + width > clientRect.left) {
                int uiState2;
                Event event;
                GC gc;
                GCData data;
                RECT rect = new RECT();
                RECT backgroundRect = null;
                boolean drawItem = true;
                boolean drawText = true;
                boolean drawImage = true;
                boolean drawBackground = false;
                if (i == 0) {
                    drawText = false;
                    drawImage = false;
                    drawItem = false;
                    if (this.findImageControl() != null) {
                        if (this.explorerTheme) {
                            if (OS.IsWindowEnabled(this.handle) && !this.hooks(40)) {
                                Image image = null;
                                if (index == 0) {
                                    image = item.image;
                                } else {
                                    Image[] images = item.images;
                                    if (images != null) {
                                        image = images[index];
                                    }
                                }
                                if (image != null) {
                                    Rectangle bounds = image.getBounds();
                                    if (size == null) {
                                        size = this.getImageSize();
                                    }
                                    if (!this.ignoreDrawForeground) {
                                        GCData data2 = new GCData();
                                        data2.device = this.display;
                                        GC gc2 = GC.win32_new(hDC, data2);
                                        RECT iconRect = item.getBounds(index, false, true, false, false, true, hDC);
                                        gc2.setClipping(iconRect.left, iconRect.top, iconRect.right - iconRect.left, iconRect.bottom - iconRect.top);
                                        gc2.drawImage(image, 0, 0, bounds.width, bounds.height, iconRect.left, iconRect.top, size.x, size.y);
                                        OS.SelectClipRgn(hDC, 0);
                                        gc2.dispose();
                                    }
                                }
                            }
                        } else {
                            drawBackground = true;
                            drawText = true;
                            drawItem = true;
                            rect = item.getBounds(index, true, false, false, false, true, hDC);
                            if (this.linesVisible) {
                                ++rect.right;
                                ++rect.bottom;
                            }
                        }
                    }
                    if (selected && !this.ignoreDrawSelection && !this.ignoreDrawBackground) {
                        if (!this.explorerTheme) {
                            this.fillBackground(hDC, OS.GetBkColor(hDC), rect);
                        }
                        drawBackground = false;
                    }
                    backgroundRect = rect;
                    if (this.hooks(40)) {
                        drawImage = true;
                        drawText = true;
                        drawItem = true;
                        rect = item.getBounds(index, true, true, false, false, true, hDC);
                        backgroundRect = (this.style & 0x10000) != 0 ? rect : item.getBounds(index, true, false, false, false, true, hDC);
                    }
                } else {
                    this.selectionForeground = -1;
                    this.ignoreDrawHot = false;
                    this.ignoreDrawFocus = false;
                    this.ignoreDrawSelection = false;
                    this.ignoreDrawBackground = false;
                    this.ignoreDrawForeground = false;
                    OS.SetRect(rect, x, nmcd.top, x + width, nmcd.bottom);
                    backgroundRect = rect;
                }
                int clrText = -1;
                int clrTextBk = -1;
                int hFont = item.fontHandle(index);
                if (this.selectionForeground != -1) {
                    clrText = this.selectionForeground;
                }
                if (OS.IsWindowEnabled(this.handle)) {
                    boolean drawForeground = false;
                    if (selected) {
                        if (i != 0 && (this.style & 0x10000) == 0) {
                            OS.SetTextColor(hDC, this.getForegroundPixel());
                            OS.SetBkColor(hDC, this.getBackgroundPixel());
                            drawBackground = true;
                            drawForeground = true;
                        }
                    } else {
                        drawBackground = true;
                        drawForeground = true;
                    }
                    if (drawForeground) {
                        int n = clrText = item.cellForeground != null ? item.cellForeground[index] : -1;
                        if (clrText == -1) {
                            clrText = item.foreground;
                        }
                    }
                    if (drawBackground) {
                        int n = clrTextBk = item.cellBackground != null ? item.cellBackground[index] : -1;
                        if (clrTextBk == -1) {
                            clrTextBk = item.background;
                        }
                        if (clrTextBk == -1 && index == sortIndex) {
                            clrTextBk = clrSortBk;
                        }
                    }
                } else if (clrTextBk == -1 && index == sortIndex) {
                    drawBackground = true;
                    clrTextBk = clrSortBk;
                }
                if (this.explorerTheme && (selected || (nmcd.uItemState & 0x40) != 0)) {
                    if ((this.style & 0x10000) != 0) {
                        drawBackground = false;
                    } else if (i == 0) {
                        drawBackground = false;
                        if (!this.hooks(40)) {
                            drawText = false;
                        }
                    }
                }
                if (drawItem) {
                    if (i != 0) {
                        if (this.hooks(41)) {
                            this.sendMeasureItemEvent(item, index, hDC, selected ? 2 : 0);
                            if (this.isDisposed() || item.isDisposed()) break;
                        }
                        if (this.hooks(40)) {
                            RECT cellRect = item.getBounds(index, true, true, true, true, true, hDC);
                            int nSavedDC = OS.SaveDC(hDC);
                            data = new GCData();
                            data.device = this.display;
                            data.foreground = OS.GetTextColor(hDC);
                            data.background = OS.GetBkColor(hDC);
                            if (!selected || (this.style & 0x10000) == 0) {
                                if (clrText != -1) {
                                    data.foreground = clrText;
                                }
                                if (clrTextBk != -1) {
                                    data.background = clrTextBk;
                                }
                            }
                            data.font = item.getFont(index);
                            data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
                            gc = GC.win32_new(hDC, data);
                            event = new Event();
                            event.item = item;
                            event.index = index;
                            event.gc = gc;
                            event.detail |= 0x10;
                            if (clrTextBk != -1) {
                                event.detail |= 8;
                            }
                            if ((this.style & 0x10000) != 0) {
                                if (hot) {
                                    event.detail |= 0x20;
                                }
                                if (selected) {
                                    event.detail |= 2;
                                }
                                if (!this.explorerTheme && OS.SendMessage(this.handle, 4362, 9, 0) == nmcd.dwItemSpec && this.handle == OS.GetFocus() && ((uiState2 = OS.SendMessage(this.handle, 297, 0, 0)) & 1) == 0) {
                                    event.detail |= 4;
                                }
                            }
                            event.x = cellRect.left;
                            event.y = cellRect.top;
                            event.width = cellRect.right - cellRect.left;
                            event.height = cellRect.bottom - cellRect.top;
                            gc.setClipping(event.x, event.y, event.width, event.height);
                            this.sendEvent(40, event);
                            event.gc = null;
                            int newTextClr = data.foreground;
                            gc.dispose();
                            OS.RestoreDC(hDC, nSavedDC);
                            if (this.isDisposed() || item.isDisposed()) break;
                            if (event.doit) {
                                this.ignoreDrawForeground = (event.detail & 0x10) == 0;
                                boolean bl3 = this.ignoreDrawBackground = (event.detail & 8) == 0;
                                if ((this.style & 0x10000) != 0) {
                                    this.ignoreDrawSelection = (event.detail & 2) == 0;
                                    this.ignoreDrawFocus = (event.detail & 4) == 0;
                                    this.ignoreDrawHot = (event.detail & 0x20) == 0;
                                }
                            } else {
                                this.ignoreDrawHot = true;
                                this.ignoreDrawFocus = true;
                                this.ignoreDrawSelection = true;
                                this.ignoreDrawBackground = true;
                                this.ignoreDrawForeground = true;
                            }
                            if (selected && this.ignoreDrawSelection) {
                                this.ignoreDrawHot = true;
                            }
                            if ((this.style & 0x10000) != 0) {
                                if (this.ignoreDrawSelection) {
                                    this.ignoreFullSelection = true;
                                }
                                if (!this.ignoreDrawSelection || !this.ignoreDrawHot) {
                                    if (!selected && !hot) {
                                        this.selectionForeground = OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                                    } else if (!this.explorerTheme) {
                                        drawBackground = true;
                                        this.ignoreDrawBackground = false;
                                        clrTextBk = (this.handle == OS.GetFocus() || this.display.getHighContrast()) && OS.IsWindowEnabled(this.handle) ? OS.GetSysColor(OS.COLOR_HIGHLIGHT) : OS.GetSysColor(OS.COLOR_3DFACE);
                                        if (!this.ignoreFullSelection && index == this.columnCount - 1) {
                                            RECT selectionRect = new RECT();
                                            OS.SetRect(selectionRect, backgroundRect.left, backgroundRect.top, nmcd.right, backgroundRect.bottom);
                                            backgroundRect = selectionRect;
                                        }
                                    } else {
                                        int iStateId;
                                        RECT pRect = new RECT();
                                        OS.SetRect(pRect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                                        if (this.columnCount > 0 && this.hwndHeader != 0) {
                                            int totalWidth = 0;
                                            HDITEM hdItem = new HDITEM();
                                            hdItem.mask = 1;
                                            int j = 0;
                                            while (j < this.columnCount) {
                                                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, j, hdItem);
                                                totalWidth += hdItem.cxy;
                                                ++j;
                                            }
                                            if (totalWidth > clientRect.right - clientRect.left) {
                                                pRect.left = 0;
                                                pRect.right = totalWidth;
                                            } else {
                                                pRect.left = clientRect.left;
                                                pRect.right = clientRect.right;
                                            }
                                            if (index == this.columnCount - 1) {
                                                RECT selectionRect = new RECT();
                                                OS.SetRect(selectionRect, backgroundRect.left, backgroundRect.top, pRect.right, backgroundRect.bottom);
                                                backgroundRect = selectionRect;
                                            }
                                        }
                                        int hTheme = OS.OpenThemeData(this.handle, Display.TREEVIEW);
                                        int n = iStateId = selected ? 3 : 2;
                                        if (OS.GetFocus() != this.handle && selected && !hot) {
                                            iStateId = 5;
                                        }
                                        OS.DrawThemeBackground(hTheme, hDC, 1, iStateId, pRect, backgroundRect);
                                        OS.CloseThemeData(hTheme);
                                    }
                                } else if (selected) {
                                    this.selectionForeground = newTextClr;
                                    if (!this.explorerTheme && clrTextBk == -1 && OS.IsWindowEnabled(this.handle)) {
                                        Control control = this.findBackgroundControl();
                                        if (control == null) {
                                            control = this;
                                        }
                                        clrTextBk = control.getBackgroundPixel();
                                    }
                                }
                            }
                        }
                        if (this.selectionForeground != -1) {
                            clrText = this.selectionForeground;
                        }
                    }
                    if (!this.ignoreDrawBackground) {
                        if (clrTextBk != -1) {
                            if (drawBackground) {
                                this.fillBackground(hDC, clrTextBk, backgroundRect);
                            }
                        } else {
                            Control control = this.findImageControl();
                            if (control != null) {
                                if (i == 0) {
                                    int right = Math.min(rect.right, width);
                                    OS.SetRect(rect, rect.left, rect.top, right, rect.bottom);
                                    if (drawBackground) {
                                        this.fillImageBackground(hDC, control, rect, 0, 0);
                                    }
                                } else if (drawBackground) {
                                    this.fillImageBackground(hDC, control, rect, 0, 0);
                                }
                            }
                        }
                    }
                    rect.left += 2;
                    if (drawImage) {
                        int offset;
                        Image image = null;
                        if (index == 0) {
                            image = item.image;
                        } else {
                            Image[] images = item.images;
                            if (images != null) {
                                image = images[index];
                            }
                        }
                        int inset = i != 0 ? 3 : 0;
                        int n = offset = i != 0 ? 3 : 5;
                        if (image != null) {
                            Rectangle bounds = image.getBounds();
                            if (size == null) {
                                size = this.getImageSize();
                            }
                            if (!this.ignoreDrawForeground) {
                                int y1 = rect.top;
                                int x1 = Math.max(rect.left, rect.left - inset + 1);
                                GCData data3 = new GCData();
                                data3.device = this.display;
                                GC gc3 = GC.win32_new(hDC, data3);
                                gc3.setClipping(x1, rect.top, rect.right - x1, rect.bottom - rect.top);
                                gc3.drawImage(image, 0, 0, bounds.width, bounds.height, x1, y1, size.x, size.y);
                                OS.SelectClipRgn(hDC, 0);
                                gc3.dispose();
                            }
                            OS.SetRect(rect, rect.left + size.x + offset, rect.top, rect.right - inset, rect.bottom);
                        } else if (i == 0) {
                            if (OS.SendMessage(this.handle, 4360, 0, 0) != 0) {
                                if (size == null) {
                                    size = this.getImageSize();
                                }
                                rect.left = Math.min(rect.left + size.x + offset, rect.right);
                            }
                        } else {
                            OS.SetRect(rect, rect.left + offset, rect.top, rect.right - inset, rect.bottom);
                        }
                    }
                    if (drawText && rect.left < rect.right) {
                        String string = null;
                        if (index == 0) {
                            string = item.text;
                        } else {
                            String[] strings = item.strings;
                            if (strings != null) {
                                string = strings[index];
                            }
                        }
                        if (string != null) {
                            TreeColumn column;
                            if (hFont != -1) {
                                hFont = OS.SelectObject(hDC, hFont);
                            }
                            if (clrText != -1) {
                                clrText = OS.SetTextColor(hDC, clrText);
                            }
                            if (clrTextBk != -1) {
                                clrTextBk = OS.SetBkColor(hDC, clrTextBk);
                            }
                            int flags = 2084;
                            if (i != 0) {
                                flags |= 0x8000;
                            }
                            TreeColumn treeColumn = column = this.columns != null ? this.columns[index] : null;
                            if (column != null) {
                                if ((column.style & 0x1000000) != 0) {
                                    flags |= 1;
                                }
                                if ((column.style & 0x20000) != 0) {
                                    flags |= 2;
                                }
                            }
                            TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
                            if (!this.ignoreDrawForeground) {
                                OS.DrawText(hDC, buffer, buffer.length(), rect, flags);
                            }
                            OS.DrawText(hDC, buffer, buffer.length(), rect, flags | 0x400);
                            if (hFont != -1) {
                                hFont = OS.SelectObject(hDC, hFont);
                            }
                            if (clrText != -1) {
                                clrText = OS.SetTextColor(hDC, clrText);
                            }
                            if (clrTextBk != -1) {
                                clrTextBk = OS.SetBkColor(hDC, clrTextBk);
                            }
                        }
                    }
                }
                if (this.selectionForeground != -1) {
                    clrText = this.selectionForeground;
                }
                if (this.hooks(42)) {
                    RECT itemRect = item.getBounds(index, true, true, false, false, false, hDC);
                    int nSavedDC = OS.SaveDC(hDC);
                    data = new GCData();
                    data.device = this.display;
                    data.font = item.getFont(index);
                    data.foreground = OS.GetTextColor(hDC);
                    data.background = OS.GetBkColor(hDC);
                    if (selected && (this.style & 0x10000) != 0) {
                        if (this.selectionForeground != -1) {
                            data.foreground = this.selectionForeground;
                        }
                    } else {
                        if (clrText != -1) {
                            data.foreground = clrText;
                        }
                        if (clrTextBk != -1) {
                            data.background = clrTextBk;
                        }
                    }
                    data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
                    gc = GC.win32_new(hDC, data);
                    event = new Event();
                    event.item = item;
                    event.index = index;
                    event.gc = gc;
                    event.detail |= 0x10;
                    if (clrTextBk != -1) {
                        event.detail |= 8;
                    }
                    if (hot) {
                        event.detail |= 0x20;
                    }
                    if (selected && (i == 0 || (this.style & 0x10000) != 0)) {
                        event.detail |= 2;
                    }
                    if (!(this.explorerTheme || OS.SendMessage(this.handle, 4362, 9, 0) != nmcd.dwItemSpec || i != 0 && (this.style & 0x10000) == 0 || this.handle != OS.GetFocus() || ((uiState2 = OS.SendMessage(this.handle, 297, 0, 0)) & 1) != 0)) {
                        event.detail |= 4;
                    }
                    event.x = itemRect.left;
                    event.y = itemRect.top;
                    event.width = itemRect.right - itemRect.left;
                    event.height = itemRect.bottom - itemRect.top;
                    RECT cellRect = item.getBounds(index, true, true, true, true, true, hDC);
                    int cellWidth = cellRect.right - cellRect.left;
                    int cellHeight = cellRect.bottom - cellRect.top;
                    gc.setClipping(cellRect.left, cellRect.top, cellWidth, cellHeight);
                    this.sendEvent(42, event);
                    if (data.focusDrawn) {
                        this.focusRect = null;
                    }
                    event.gc = null;
                    gc.dispose();
                    OS.RestoreDC(hDC, nSavedDC);
                    if (this.isDisposed() || item.isDisposed()) break;
                }
            }
            if ((x += width) > clientRect.right) break;
            ++i;
        }
        if (this.linesVisible) {
            if ((this.style & 0x10000) != 0 && this.columnCount != 0) {
                HDITEM hdItem = new HDITEM();
                hdItem.mask = 1;
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, 0, hdItem);
                RECT rect = new RECT();
                OS.SetRect(rect, nmcd.left + hdItem.cxy, nmcd.top, nmcd.right, nmcd.bottom);
                OS.DrawEdge(hDC, rect, 8, 8);
            }
            RECT rect = new RECT();
            OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
            OS.DrawEdge(hDC, rect, 8, 8);
        }
        if (!this.ignoreDrawFocus && this.focusRect != null) {
            OS.DrawFocusRect(hDC, this.focusRect);
            this.focusRect = null;
        } else if (!this.explorerTheme && this.handle == OS.GetFocus() && ((uiState = OS.SendMessage(this.handle, 297, 0, 0)) & 1) == 0 && (hItem = OS.SendMessage(this.handle, 4362, 9, 0)) == item.handle && !this.ignoreDrawFocus && this.findImageControl() != null) {
            if ((this.style & 0x10000) != 0) {
                RECT focusRect = new RECT();
                OS.SetRect(focusRect, 0, nmcd.top, clientRect.right + 1, nmcd.bottom);
                OS.DrawFocusRect(hDC, focusRect);
            } else {
                int index = OS.SendMessage(this.hwndHeader, 4623, 0, 0);
                RECT focusRect = item.getBounds(index, true, false, false, false, false, hDC);
                RECT clipRect = item.getBounds(index, true, false, false, false, true, hDC);
                OS.IntersectClipRect(hDC, clipRect.left, clipRect.top, clipRect.right, clipRect.bottom);
                OS.DrawFocusRect(hDC, focusRect);
                OS.SelectClipRgn(hDC, 0);
            }
        }
        return new LRESULT(0);
    }

    LRESULT CDDS_ITEMPREPAINT(NMTVCUSTOMDRAW nmcd, int wParam, int lParam) {
        HDITEM hdItem;
        RECT rect;
        int bits;
        boolean focused;
        TreeItem item = this.getItem(nmcd);
        if (item == null) {
            return null;
        }
        int hDC = nmcd.hdc;
        int index = this.hwndHeader != 0 ? OS.SendMessage(this.hwndHeader, 4623, 0, 0) : 0;
        int hFont = item.fontHandle(index);
        if (hFont != -1) {
            OS.SelectObject(hDC, hFont);
        }
        if (this.ignoreCustomDraw || nmcd.left == nmcd.right) {
            return new LRESULT(hFont == -1 ? 0 : 2);
        }
        RECT clipRect = null;
        if (this.columnCount != 0) {
            boolean clip;
            boolean bl = clip = !this.printClient;
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                clip = true;
            }
            if (clip) {
                clipRect = new RECT();
                HDITEM hdItem2 = new HDITEM();
                hdItem2.mask = 1;
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem2);
                OS.SetRect(clipRect, nmcd.left, nmcd.top, nmcd.left + hdItem2.cxy, nmcd.bottom);
            }
        }
        int clrText = -1;
        int clrTextBk = -1;
        if (OS.IsWindowEnabled(this.handle)) {
            int n = clrText = item.cellForeground != null ? item.cellForeground[index] : -1;
            if (clrText == -1) {
                clrText = item.foreground;
            }
            int n2 = clrTextBk = item.cellBackground != null ? item.cellBackground[index] : -1;
            if (clrTextBk == -1) {
                clrTextBk = item.background;
            }
        }
        int clrSortBk = -1;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.sortColumn != null && this.sortDirection != 0 && this.findImageControl() == null && this.indexOf(this.sortColumn) == index) {
            clrSortBk = this.getSortColumnPixel();
            if (clrTextBk == -1) {
                clrTextBk = clrSortBk;
            }
        }
        boolean selected = this.isItemSelected(nmcd);
        boolean hot = this.explorerTheme && (nmcd.uItemState & 0x40) != 0;
        boolean bl = focused = this.explorerTheme && (nmcd.uItemState & 0x10) != 0;
        if (OS.IsWindowVisible(this.handle) && nmcd.left < nmcd.right && nmcd.top < nmcd.bottom) {
            if (hFont != -1) {
                OS.SelectObject(hDC, hFont);
            }
            if (this.linesVisible) {
                RECT rect2 = new RECT();
                OS.SetRect(rect2, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                OS.DrawEdge(hDC, rect2, 8, 8);
            }
            Event measureEvent = null;
            if (this.hooks(41)) {
                measureEvent = this.sendMeasureItemEvent(item, index, hDC, selected ? 2 : 0);
                if (this.isDisposed() || item.isDisposed()) {
                    return null;
                }
            }
            this.selectionForeground = -1;
            this.ignoreFullSelection = false;
            this.ignoreDrawHot = false;
            this.ignoreDrawFocus = false;
            this.ignoreDrawSelection = false;
            this.ignoreDrawBackground = false;
            this.ignoreDrawForeground = false;
            if (this.hooks(40)) {
                int uiState;
                RECT rect3 = new RECT();
                OS.SetRect(rect3, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                RECT cellRect = item.getBounds(index, true, true, true, true, true, hDC);
                if (clrSortBk != -1) {
                    this.drawBackground(hDC, cellRect, clrSortBk, 0, 0);
                } else if (OS.IsWindowEnabled(this.handle) || this.findImageControl() != null) {
                    this.drawBackground(hDC, rect3);
                } else {
                    this.fillBackground(hDC, OS.GetBkColor(hDC), rect3);
                }
                int nSavedDC = OS.SaveDC(hDC);
                GCData data = new GCData();
                data.device = this.display;
                data.foreground = selected && this.explorerTheme ? OS.GetSysColor(OS.COLOR_WINDOWTEXT) : OS.GetTextColor(hDC);
                data.background = OS.GetBkColor(hDC);
                if (!selected) {
                    if (clrText != -1) {
                        data.foreground = clrText;
                    }
                    if (clrTextBk != -1) {
                        data.background = clrTextBk;
                    }
                }
                data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
                data.font = item.getFont(index);
                GC gc = GC.win32_new(hDC, data);
                Event event = new Event();
                event.index = index;
                event.item = item;
                event.gc = gc;
                event.detail |= 0x10;
                if (clrTextBk != -1) {
                    event.detail |= 8;
                }
                if (hot) {
                    event.detail |= 0x20;
                }
                if (selected) {
                    event.detail |= 2;
                }
                if (!(OS.SendMessage(this.handle, 4362, 9, 0) != nmcd.dwItemSpec || this.handle != OS.GetFocus() || ((uiState = OS.SendMessage(this.handle, 297, 0, 0)) & 1) != 0 || this.explorerTheme && selected)) {
                    focused = true;
                    event.detail |= 4;
                }
                event.x = cellRect.left;
                event.y = cellRect.top;
                event.width = cellRect.right - cellRect.left;
                event.height = cellRect.bottom - cellRect.top;
                gc.setClipping(event.x, event.y, event.width, event.height);
                this.sendEvent(40, event);
                event.gc = null;
                int newTextClr = data.foreground;
                gc.dispose();
                OS.RestoreDC(hDC, nSavedDC);
                if (this.isDisposed() || item.isDisposed()) {
                    return null;
                }
                if (event.doit) {
                    this.ignoreDrawForeground = (event.detail & 0x10) == 0;
                    this.ignoreDrawBackground = (event.detail & 8) == 0;
                    this.ignoreDrawSelection = (event.detail & 2) == 0;
                    this.ignoreDrawFocus = (event.detail & 4) == 0;
                    this.ignoreDrawHot = (event.detail & 0x20) == 0;
                } else {
                    this.ignoreDrawHot = true;
                    this.ignoreDrawFocus = true;
                    this.ignoreDrawSelection = true;
                    this.ignoreDrawBackground = true;
                    this.ignoreDrawForeground = true;
                }
                if (selected && this.ignoreDrawSelection) {
                    this.ignoreDrawHot = true;
                }
                if (!this.ignoreDrawBackground && clrTextBk != -1) {
                    boolean draw;
                    boolean bl2 = draw = !selected && !hot;
                    if (!this.explorerTheme && selected) {
                        boolean bl3 = draw = !this.ignoreDrawSelection;
                    }
                    if (draw) {
                        if (this.columnCount == 0) {
                            if ((this.style & 0x10000) != 0) {
                                this.fillBackground(hDC, clrTextBk, rect3);
                            } else {
                                RECT textRect = item.getBounds(index, true, false, false, false, true, hDC);
                                if (measureEvent != null) {
                                    textRect.right = Math.min(cellRect.right, measureEvent.x + measureEvent.width);
                                }
                                this.fillBackground(hDC, clrTextBk, textRect);
                            }
                        } else {
                            this.fillBackground(hDC, clrTextBk, cellRect);
                        }
                    }
                }
                if (this.ignoreDrawSelection) {
                    this.ignoreFullSelection = true;
                }
                if (!this.ignoreDrawSelection || !this.ignoreDrawHot) {
                    if (!selected && !hot) {
                        this.selectionForeground = clrText = OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT);
                    }
                    if (this.explorerTheme) {
                        if ((this.style & 0x10000) == 0) {
                            int iStateId;
                            RECT pRect = item.getBounds(index, true, true, false, false, false, hDC);
                            RECT pClipRect = item.getBounds(index, true, true, true, false, true, hDC);
                            if (measureEvent != null) {
                                pRect.right = Math.min(pClipRect.right, measureEvent.x + measureEvent.width);
                            } else {
                                pRect.right += 2;
                                pClipRect.right += 2;
                            }
                            pRect.left -= 2;
                            pClipRect.left -= 2;
                            int hTheme = OS.OpenThemeData(this.handle, Display.TREEVIEW);
                            int n = iStateId = selected ? 3 : 2;
                            if (OS.GetFocus() != this.handle && selected && !hot) {
                                iStateId = 5;
                            }
                            OS.DrawThemeBackground(hTheme, hDC, 1, iStateId, pRect, pClipRect);
                            OS.CloseThemeData(hTheme);
                        }
                    } else if ((this.style & 0x10000) != 0) {
                        if ((this.style & 0x10000) != 0 && this.columnCount == 0) {
                            this.fillBackground(hDC, OS.GetBkColor(hDC), rect3);
                        } else {
                            this.fillBackground(hDC, OS.GetBkColor(hDC), cellRect);
                        }
                    } else {
                        RECT textRect = item.getBounds(index, true, false, false, false, true, hDC);
                        if (measureEvent != null) {
                            textRect.right = Math.min(cellRect.right, measureEvent.x + measureEvent.width);
                        }
                        this.fillBackground(hDC, OS.GetBkColor(hDC), textRect);
                    }
                } else {
                    if (selected || hot) {
                        this.selectionForeground = clrText = newTextClr;
                        this.ignoreDrawHot = true;
                        this.ignoreDrawSelection = true;
                    }
                    if (this.explorerTheme) {
                        int newColor;
                        nmcd.uItemState |= 4;
                        int n = newColor = clrText == -1 ? this.getForegroundPixel() : clrText;
                        if (nmcd.clrText == newColor) {
                            nmcd.clrText |= 0x20000000;
                            if (nmcd.clrText == newColor) {
                                nmcd.clrText &= 0xDFFFFFFF;
                            }
                        } else {
                            nmcd.clrText = newColor;
                        }
                        OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
                    }
                }
                if (focused && !this.ignoreDrawFocus && (this.style & 0x10000) == 0) {
                    RECT textRect = item.getBounds(index, true, this.explorerTheme, false, false, true, hDC);
                    if (measureEvent != null) {
                        textRect.right = Math.min(cellRect.right, measureEvent.x + measureEvent.width);
                    }
                    nmcd.uItemState &= 0xFFFFFFEF;
                    OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
                    this.focusRect = textRect;
                }
                if (this.explorerTheme) {
                    if (selected || hot && this.ignoreDrawHot) {
                        nmcd.uItemState &= 0xFFFFFFBF;
                    }
                    OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
                }
                RECT itemRect = item.getBounds(index, true, true, false, false, false, hDC);
                OS.SaveDC(hDC);
                OS.SelectClipRgn(hDC, 0);
                if (this.explorerTheme) {
                    itemRect.left -= 2;
                    itemRect.right += 2;
                }
                ++itemRect.right;
                if (this.linesVisible) {
                    ++itemRect.bottom;
                }
                if (clipRect != null) {
                    OS.IntersectClipRect(hDC, clipRect.left, clipRect.top, clipRect.right, clipRect.bottom);
                }
                OS.ExcludeClipRect(hDC, itemRect.left, itemRect.top, itemRect.right, itemRect.bottom);
                return new LRESULT(16);
            }
            if ((this.style & 0x10000) != 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0) {
                rect = new RECT();
                OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                if (selected) {
                    this.fillBackground(hDC, OS.GetBkColor(hDC), rect);
                } else if (OS.IsWindowEnabled(this.handle)) {
                    this.drawBackground(hDC, rect);
                }
                nmcd.uItemState &= 0xFFFFFFEF;
                OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
            }
        }
        LRESULT result = null;
        if (clrText == -1 && clrTextBk == -1 && hFont == -1) {
            result = new LRESULT(16);
        } else {
            result = new LRESULT(18);
            if (hFont != -1) {
                OS.SelectObject(hDC, hFont);
            }
            if (OS.IsWindowEnabled(this.handle) && OS.IsWindowVisible(this.handle)) {
                if (clrTextBk != -1 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0) {
                    if (this.columnCount != 0 && this.hwndHeader != 0) {
                        RECT itemRect;
                        rect = new RECT();
                        hdItem = new HDITEM();
                        hdItem.mask = 1;
                        OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem);
                        OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.left + hdItem.cxy, nmcd.bottom);
                        if ((OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) && OS.TreeView_GetItemRect(this.handle, item.handle, itemRect = new RECT(), true)) {
                            rect.left = Math.min(itemRect.left, rect.right);
                        }
                        if ((this.style & 0x10000) != 0) {
                            if (!selected) {
                                this.fillBackground(hDC, clrTextBk, rect);
                            }
                        } else {
                            this.fillBackground(hDC, clrTextBk, rect);
                        }
                    } else if ((this.style & 0x10000) != 0) {
                        rect = new RECT();
                        OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                        if (!selected) {
                            this.fillBackground(hDC, clrTextBk, rect);
                        }
                    }
                }
                if (!selected) {
                    nmcd.clrText = clrText == -1 ? this.getForegroundPixel() : clrText;
                    nmcd.clrTextBk = clrTextBk == -1 ? this.getBackgroundPixel() : clrTextBk;
                    OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
                }
            }
        }
        if (OS.IsWindowEnabled(this.handle)) {
            if (this.explorerTheme && this.findImageControl() != null && !selected && (nmcd.uItemState & 0x41) == 0) {
                int newColor;
                nmcd.uItemState |= 4;
                int n = newColor = clrText == -1 ? this.getForegroundPixel() : clrText;
                if (nmcd.clrText == newColor) {
                    nmcd.clrText |= 0x20000000;
                    if (nmcd.clrText == newColor) {
                        nmcd.clrText &= 0xDFFFFFFF;
                    }
                } else {
                    nmcd.clrText = newColor;
                }
                OS.MoveMemory(lParam, nmcd, NMTVCUSTOMDRAW.sizeof);
                if (clrTextBk != -1) {
                    if ((this.style & 0x10000) != 0) {
                        rect = new RECT();
                        if (this.columnCount != 0) {
                            hdItem = new HDITEM();
                            hdItem.mask = 1;
                            OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem);
                            OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.left + hdItem.cxy, nmcd.bottom);
                        } else {
                            OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
                        }
                        this.fillBackground(hDC, clrTextBk, rect);
                    } else {
                        RECT textRect = item.getBounds(index, true, false, true, false, true, hDC);
                        this.fillBackground(hDC, clrTextBk, textRect);
                    }
                }
            }
        } else if (clrSortBk != -1) {
            RECT rect4 = new RECT();
            HDITEM hdItem3 = new HDITEM();
            hdItem3.mask = 1;
            OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem3);
            OS.SetRect(rect4, nmcd.left, nmcd.top, nmcd.left + hdItem3.cxy, nmcd.bottom);
            this.fillBackground(hDC, clrSortBk, rect4);
        }
        OS.SaveDC(hDC);
        if (clipRect != null) {
            int hRgn = OS.CreateRectRgn(clipRect.left, clipRect.top, clipRect.right, clipRect.bottom);
            POINT lpPoint = new POINT();
            OS.GetWindowOrgEx(hDC, lpPoint);
            OS.OffsetRgn(hRgn, -lpPoint.x, -lpPoint.y);
            OS.SelectClipRgn(hDC, hRgn);
            OS.DeleteObject(hRgn);
        }
        return result;
    }

    LRESULT CDDS_POSTPAINT(NMTVCUSTOMDRAW nmcd, int wParam, int lParam) {
        if (this.ignoreCustomDraw) {
            return null;
        }
        if (OS.IsWindowVisible(this.handle)) {
            int index;
            if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && this.sortColumn != null && this.sortDirection != 0 && this.findImageControl() == null && (index = this.indexOf(this.sortColumn)) != -1) {
                RECT rect;
                int top = nmcd.top;
                int hItem = 0;
                hItem = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) ? this.getBottomItem() : OS.SendMessage(this.handle, 4362, 10, 0);
                if (hItem != 0 && OS.TreeView_GetItemRect(this.handle, hItem, rect = new RECT(), false)) {
                    top = rect.bottom;
                }
                rect = new RECT();
                OS.SetRect(rect, nmcd.left, top, nmcd.right, nmcd.bottom);
                RECT headerRect = new RECT();
                OS.SendMessage(this.hwndHeader, 4615, index, headerRect);
                rect.left = headerRect.left;
                rect.right = headerRect.right;
                this.fillBackground(nmcd.hdc, this.getSortColumnPixel(), rect);
            }
            if (this.linesVisible) {
                int hDC = nmcd.hdc;
                if (this.hwndHeader != 0) {
                    int x = 0;
                    RECT rect = new RECT();
                    HDITEM hdItem = new HDITEM();
                    hdItem.mask = 1;
                    int i = 0;
                    while (i < this.columnCount) {
                        int index2 = OS.SendMessage(this.hwndHeader, 4623, i, 0);
                        OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index2, hdItem);
                        OS.SetRect(rect, x, nmcd.top, x + hdItem.cxy, nmcd.bottom);
                        OS.DrawEdge(hDC, rect, 8, 4);
                        x += hdItem.cxy;
                        ++i;
                    }
                }
                int height = 0;
                RECT rect = new RECT();
                int hItem = 0;
                hItem = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) ? this.getBottomItem() : OS.SendMessage(this.handle, 4362, 10, 0);
                if (hItem != 0 && OS.TreeView_GetItemRect(this.handle, hItem, rect, false)) {
                    height = rect.bottom - rect.top;
                }
                if (height == 0) {
                    height = OS.SendMessage(this.handle, 4380, 0, 0);
                    OS.GetClientRect(this.handle, rect);
                    OS.SetRect(rect, rect.left, rect.top, rect.right, rect.top + height);
                    OS.DrawEdge(hDC, rect, 8, 8);
                }
                if (height != 0) {
                    while (rect.bottom < nmcd.bottom) {
                        int top = rect.top + height;
                        OS.SetRect(rect, rect.left, top, rect.right, top + height);
                        OS.DrawEdge(hDC, rect, 8, 8);
                    }
                }
            }
        }
        return new LRESULT(0);
    }

    LRESULT CDDS_PREPAINT(NMTVCUSTOMDRAW nmcd, int wParam, int lParam) {
        if (this.explorerTheme && (OS.IsWindowEnabled(this.handle) && this.hooks(40) || this.findImageControl() != null)) {
            RECT rect = new RECT();
            OS.SetRect(rect, nmcd.left, nmcd.top, nmcd.right, nmcd.bottom);
            this.drawBackground(nmcd.hdc, rect);
        }
        return new LRESULT(48);
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        int hItem;
        if (this.handle == 0) {
            return 0;
        }
        if (this.hwndParent != 0 && hwnd == this.hwndParent) {
            return OS.DefWindowProc(hwnd, msg, wParam, lParam);
        }
        if (this.hwndHeader != 0 && hwnd == this.hwndHeader) {
            return OS.CallWindowProc(HeaderProc, hwnd, msg, wParam, lParam);
        }
        switch (msg) {
            case 7: {
                if ((this.style & 4) != 0 || (hItem = OS.SendMessage(this.handle, 4362, 9, 0)) != 0 || (hItem = OS.SendMessage(this.handle, 4362, 5, 0)) == 0) break;
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 24;
                tvItem.hItem = hItem;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                this.hSelect = hItem;
                this.lockSelection = true;
                this.ignoreSelect = true;
                this.ignoreDeselect = true;
                OS.SendMessage(this.handle, 4363, 9, hItem);
                this.lockSelection = false;
                this.ignoreSelect = false;
                this.ignoreDeselect = false;
                this.hSelect = 0;
                if ((tvItem.state & 2) != 0) break;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            }
        }
        hItem = 0;
        boolean redraw = false;
        switch (msg) {
            case 256: {
                if (wParam == 17 || wParam == 16) break;
            }
            case 5: 
            case 257: 
            case 258: 
            case 260: 
            case 261: 
            case 262: 
            case 276: 
            case 277: 
            case 646: {
                boolean bl = redraw = this.findImageControl() != null && this.getDrawing() && OS.IsWindowVisible(this.handle);
                if (redraw) {
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                }
            }
            case 48: 
            case 275: 
            case 512: 
            case 513: 
            case 514: 
            case 515: 
            case 516: 
            case 517: 
            case 518: 
            case 519: 
            case 520: 
            case 521: 
            case 522: 
            case 523: 
            case 524: 
            case 525: 
            case 673: 
            case 675: {
                if (this.findImageControl() == null) break;
                hItem = OS.SendMessage(this.handle, 4362, 5, 0);
            }
        }
        int code = OS.CallWindowProc(TreeProc, hwnd, msg, wParam, lParam);
        switch (msg) {
            case 256: {
                if (wParam == 17 || wParam == 16) break;
            }
            case 5: 
            case 257: 
            case 258: 
            case 260: 
            case 261: 
            case 262: 
            case 276: 
            case 277: 
            case 646: {
                if (redraw) {
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                    OS.InvalidateRect(this.handle, null, true);
                    if (this.hwndHeader != 0) {
                        OS.InvalidateRect(this.hwndHeader, null, true);
                    }
                }
            }
            case 48: 
            case 275: 
            case 512: 
            case 513: 
            case 514: 
            case 515: 
            case 516: 
            case 517: 
            case 518: 
            case 519: 
            case 520: 
            case 521: 
            case 522: 
            case 523: 
            case 524: 
            case 525: 
            case 673: 
            case 675: {
                if (this.findImageControl() != null && hItem != OS.SendMessage(this.handle, 4362, 5, 0)) {
                    OS.InvalidateRect(this.handle, null, true);
                }
                this.updateScrollBar();
                break;
            }
            case 15: {
                this.painted = true;
            }
        }
        return code;
    }

    void checkBuffered() {
        int exStyle;
        super.checkBuffered();
        if ((this.style & 0x10000000) != 0) {
            this.style |= 0x20000000;
            OS.SendMessage(this.handle, 4385, 0, 0);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.IsAppThemed() && ((exStyle = OS.SendMessage(this.handle, 4397, 0, 0)) & 4) != 0) {
            this.style |= 0x20000000;
        }
    }

    boolean checkData(TreeItem item, boolean redraw) {
        if ((this.style & 0x10000000) == 0) {
            return true;
        }
        if (!item.cached) {
            TreeItem parentItem = item.getParentItem();
            return this.checkData(item, parentItem == null ? this.indexOf(item) : parentItem.indexOf(item), redraw);
        }
        return true;
    }

    boolean checkData(TreeItem item, int index, boolean redraw) {
        if ((this.style & 0x10000000) == 0) {
            return true;
        }
        if (!item.cached) {
            item.cached = true;
            Event event = new Event();
            event.item = item;
            event.index = index;
            TreeItem oldItem = this.currentItem;
            this.currentItem = item;
            int hTopItem = OS.SendMessage(this.handle, 4362, 5, 0);
            this.sendEvent(36, event);
            this.currentItem = oldItem;
            if (this.isDisposed() || item.isDisposed()) {
                return false;
            }
            if (redraw) {
                item.redraw();
            }
            if (hTopItem != OS.SendMessage(this.handle, 4362, 5, 0)) {
                OS.InvalidateRect(this.handle, null, true);
            }
        }
        return true;
    }

    boolean checkHandle(int hwnd) {
        return hwnd == this.handle || this.hwndParent != 0 && hwnd == this.hwndParent || this.hwndHeader != 0 && hwnd == this.hwndHeader;
    }

    boolean checkScroll(int hItem) {
        if (this.getDrawing()) {
            return false;
        }
        int hRoot = OS.SendMessage(this.handle, 4362, 0, 0);
        int hParent = OS.SendMessage(this.handle, 4362, 3, hItem);
        while (hParent != hRoot && hParent != 0) {
            hParent = OS.SendMessage(this.handle, 4362, 3, hParent);
        }
        return hParent == 0;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    public void clear(int index, boolean all) {
        this.checkWidget();
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        if (hItem == 0) {
            this.error(6);
        }
        if ((hItem = this.findItem(hItem, index)) == 0) {
            this.error(6);
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        this.clear(hItem, tvItem);
        if (all) {
            hItem = OS.SendMessage(this.handle, 4362, 4, hItem);
            this.clearAll(hItem, tvItem, all);
        }
    }

    void clear(int hItem, TVITEM tvItem) {
        tvItem.hItem = hItem;
        TreeItem item = null;
        if (OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem) != 0) {
            TreeItem treeItem = item = tvItem.lParam != -1 ? this.items[tvItem.lParam] : null;
        }
        if (item != null) {
            if ((this.style & 0x10000000) != 0 && !item.cached) {
                return;
            }
            item.clear();
            item.redraw();
        }
    }

    public void clearAll(boolean all) {
        this.checkWidget();
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        if (hItem == 0) {
            return;
        }
        if (all) {
            boolean redraw = false;
            int i = 0;
            while (i < this.items.length) {
                TreeItem item = this.items[i];
                if (item != null && item != this.currentItem) {
                    item.clear();
                    redraw = true;
                }
                ++i;
            }
            if (redraw) {
                OS.InvalidateRect(this.handle, null, true);
            }
        } else {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 20;
            this.clearAll(hItem, tvItem, all);
        }
    }

    void clearAll(int hItem, TVITEM tvItem, boolean all) {
        while (hItem != 0) {
            this.clear(hItem, tvItem);
            if (all) {
                int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
                this.clearAll(hFirstItem, tvItem, all);
            }
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
    }

    int CompareFunc(int lParam1, int lParam2, int lParamSort) {
        TreeItem item1 = this.items[lParam1];
        TreeItem item2 = this.items[lParam2];
        String text1 = item1.getText(lParamSort);
        String text2 = item2.getText(lParamSort);
        return this.sortDirection == 128 ? text1.compareTo(text2) : text2.compareTo(text1);
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        if (this.hwndHeader != 0) {
            HDITEM hdItem = new HDITEM();
            hdItem.mask = 1;
            int i = 0;
            while (i < this.columnCount) {
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, i, hdItem);
                width += hdItem.cxy;
                ++i;
            }
            RECT rect = new RECT();
            OS.GetWindowRect(this.hwndHeader, rect);
            height += rect.bottom - rect.top;
        }
        RECT rect = new RECT();
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        while (hItem != 0) {
            if ((this.style & 0x10000000) == 0 && !this.painted) {
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 17;
                tvItem.hItem = hItem;
                tvItem.pszText = -1;
                this.ignoreCustomDraw = true;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                this.ignoreCustomDraw = false;
            }
            if (OS.TreeView_GetItemRect(this.handle, hItem, rect, true)) {
                width = Math.max(width, rect.right);
                height += rect.bottom - rect.top;
            }
            hItem = OS.SendMessage(this.handle, 4362, 6, hItem);
        }
        if (width == 0) {
            width = 64;
        }
        if (height == 0) {
            height = 64;
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        int border = this.getBorderWidth();
        width += border * 2;
        height += border * 2;
        if ((this.style & 0x200) != 0) {
            width += OS.GetSystemMetrics(2);
        }
        if ((this.style & 0x100) != 0) {
            height += OS.GetSystemMetrics(3);
        }
        return new Point(width, height);
    }

    void createHandle() {
        super.createHandle();
        this.state &= 0xFFFFFEFD;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.IsAppThemed()) {
            this.explorerTheme = true;
            OS.SetWindowTheme(this.handle, Display.EXPLORER, null);
            int bits = 84;
            OS.SendMessage(this.handle, 4396, 0, bits);
            this.setForegroundPixel(-1);
        }
        if (!OS.IsWinCE && OS.COMCTL32_MAJOR < 6) {
            OS.SendMessage(this.handle, 8199, 5, 0);
        }
        if ((this.style & 0x20) != 0) {
            this.setCheckboxImageList();
        }
        int hFont = OS.GetStockObject(13);
        OS.SendMessage(this.handle, 48, hFont, 0);
        this.createdAsRTL = (this.style & 0x4000000) != 0;
    }

    void createHeaderToolTips() {
        if (OS.IsWinCE) {
            return;
        }
        if (this.headerToolTipHandle != 0) {
            return;
        }
        int bits = 0;
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (this.style & 0x4000000) != 0) {
            bits |= 0x400000;
        }
        this.headerToolTipHandle = OS.CreateWindowEx(bits, new TCHAR(0, "tooltips_class32", true), null, 2, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, this.handle, 0, OS.GetModuleHandle(null), null);
        if (this.headerToolTipHandle == 0) {
            this.error(2);
        }
        OS.SendMessage(this.headerToolTipHandle, 1048, 0, Short.MAX_VALUE);
    }

    void createItem(TreeColumn column, int index) {
        RECT rect;
        if (this.hwndHeader == 0) {
            this.createParent();
        }
        if (index < 0 || index > this.columnCount) {
            this.error(6);
        }
        if (this.columnCount == this.columns.length) {
            TreeColumn[] newColumns = new TreeColumn[this.columns.length + 4];
            System.arraycopy(this.columns, 0, newColumns, 0, this.columns.length);
            this.columns = newColumns;
        }
        int i = 0;
        while (i < this.items.length) {
            TreeItem item = this.items[i];
            if (item != null) {
                Object[] temp;
                Image[] images;
                String[] strings = item.strings;
                if (strings != null) {
                    String[] temp2 = new String[this.columnCount + 1];
                    System.arraycopy(strings, 0, temp2, 0, index);
                    System.arraycopy(strings, index, temp2, index + 1, this.columnCount - index);
                    item.strings = temp2;
                }
                if ((images = item.images) != null) {
                    Image[] temp3 = new Image[this.columnCount + 1];
                    System.arraycopy(images, 0, temp3, 0, index);
                    System.arraycopy(images, index, temp3, index + 1, this.columnCount - index);
                    item.images = temp3;
                }
                if (index == 0 && this.columnCount != 0) {
                    if (strings == null) {
                        item.strings = new String[this.columnCount + 1];
                        item.strings[1] = item.text;
                    }
                    item.text = "";
                    if (images == null) {
                        item.images = new Image[this.columnCount + 1];
                        item.images[1] = item.image;
                    }
                    item.image = null;
                }
                if (item.cellBackground != null) {
                    int[] cellBackground = item.cellBackground;
                    temp = new int[this.columnCount + 1];
                    System.arraycopy(cellBackground, 0, temp, 0, index);
                    System.arraycopy(cellBackground, index, temp, index + 1, this.columnCount - index);
                    temp[index] = -1;
                    item.cellBackground = temp;
                }
                if (item.cellForeground != null) {
                    int[] cellForeground = item.cellForeground;
                    temp = new int[this.columnCount + 1];
                    System.arraycopy(cellForeground, 0, temp, 0, index);
                    System.arraycopy(cellForeground, index, temp, index + 1, this.columnCount - index);
                    temp[index] = -1;
                    item.cellForeground = temp;
                }
                if (item.cellFont != null) {
                    Font[] cellFont = item.cellFont;
                    temp = new Font[this.columnCount + 1];
                    System.arraycopy(cellFont, 0, temp, 0, index);
                    System.arraycopy(cellFont, index, temp, index + 1, this.columnCount - index);
                    item.cellFont = (Font[])temp;
                }
            }
            ++i;
        }
        System.arraycopy(this.columns, index, this.columns, index + 1, this.columnCount++ - index);
        this.columns[index] = column;
        int hHeap = OS.GetProcessHeap();
        int pszText = OS.HeapAlloc(hHeap, 8, TCHAR.sizeof);
        HDITEM hdItem = new HDITEM();
        hdItem.mask = 6;
        hdItem.pszText = pszText;
        if ((column.style & 0x4000) == 16384) {
            hdItem.fmt = 0;
        }
        if ((column.style & 0x1000000) == 0x1000000) {
            hdItem.fmt = 2;
        }
        if ((column.style & 0x20000) == 131072) {
            hdItem.fmt = 1;
        }
        OS.SendMessage(this.hwndHeader, OS.HDM_INSERTITEM, index, hdItem);
        if (pszText != 0) {
            OS.HeapFree(hHeap, 0, pszText);
        }
        if (this.columnCount == 1) {
            int count;
            this.scrollWidth = 0;
            if ((this.style & 0x100) != 0) {
                int bits = OS.GetWindowLong(this.handle, -16);
                OS.SetWindowLong(this.handle, -16, bits |= 0x8000);
            }
            if ((count = OS.SendMessage(this.handle, 4357, 0, 0)) != 0 && !OS.IsWinCE) {
                OS.ShowScrollBar(this.handle, 0, false);
            }
            this.createItemToolTips();
            if (this.itemToolTipHandle != 0) {
                OS.SendMessage(this.itemToolTipHandle, 1027, 0, -1);
            }
        }
        this.setScrollWidth();
        this.updateImageList();
        this.updateScrollBar();
        if (this.columnCount == 1 && OS.SendMessage(this.handle, 4357, 0, 0) != 0) {
            OS.InvalidateRect(this.handle, null, true);
        }
        if (this.headerToolTipHandle != 0 && OS.SendMessage(this.hwndHeader, 4615, index, rect = new RECT()) != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.uFlags = 16;
            lpti.hwnd = this.hwndHeader;
            column.id = this.display.nextToolTipId++;
            lpti.uId = column.id;
            lpti.left = rect.left;
            lpti.top = rect.top;
            lpti.right = rect.right;
            lpti.bottom = rect.bottom;
            lpti.lpszText = -1;
            OS.SendMessage(this.headerToolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
        }
    }

    void createItem(TreeItem item, int hParent, int hInsertAfter, int hItem) {
        boolean fixParent;
        int id = -1;
        if (item != null) {
            id = this.lastID < this.items.length ? this.lastID : 0;
            while (id < this.items.length && this.items[id] != null) {
                ++id;
            }
            if (id == this.items.length) {
                int length = 0;
                if (this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                    length = this.items.length + 4;
                } else {
                    this.shrink = true;
                    length = Math.max(4, this.items.length * 3 / 2);
                }
                TreeItem[] newItems = new TreeItem[length];
                System.arraycopy(this.items, 0, newItems, 0, this.items.length);
                this.items = newItems;
            }
            this.lastID = id + 1;
        }
        int hNewItem = 0;
        int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hParent);
        boolean bl = fixParent = hFirstItem == 0;
        if (hItem == 0) {
            TVINSERTSTRUCT tvInsert = new TVINSERTSTRUCT();
            tvInsert.hParent = hParent;
            tvInsert.hInsertAfter = hInsertAfter;
            tvInsert.lParam = id;
            tvInsert.pszText = -1;
            tvInsert.iSelectedImage = -1;
            tvInsert.iImage = -1;
            tvInsert.mask = 55;
            if ((this.style & 0x20) != 0) {
                tvInsert.mask |= 8;
                tvInsert.state = 4096;
                tvInsert.stateMask = 61440;
            }
            this.ignoreCustomDraw = true;
            hNewItem = OS.SendMessage(this.handle, OS.TVM_INSERTITEM, 0, tvInsert);
            this.ignoreCustomDraw = false;
            if (hNewItem == 0) {
                this.error(14);
            }
        } else {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 20;
            tvItem.hItem = hNewItem = hItem;
            tvItem.lParam = id;
            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
        }
        if (item != null) {
            item.handle = hNewItem;
            this.items[id] = item;
        }
        if (hFirstItem == 0 && (hInsertAfter == -65535 || hInsertAfter == -65534)) {
            this.hLastIndexOf = hFirstItem = hNewItem;
            this.hFirstIndexOf = hFirstItem;
            this.lastIndexOf = 0;
            this.itemCount = 0;
        }
        if (hFirstItem == this.hFirstIndexOf && this.itemCount != -1) {
            ++this.itemCount;
        }
        if (hItem == 0) {
            RECT damageRect;
            boolean damaged;
            RECT rect;
            if (fixParent && this.getDrawing() && OS.IsWindowVisible(this.handle) && OS.TreeView_GetItemRect(this.handle, hParent, rect = new RECT(), false)) {
                OS.InvalidateRect(this.handle, rect, true);
            }
            if ((this.style & 0x10000000) != 0 && this.currentItem != null && OS.TreeView_GetItemRect(this.handle, hNewItem, rect = new RECT(), false) && (damaged = OS.GetUpdateRect(this.handle, damageRect = new RECT(), true)) && damageRect.top < rect.bottom) {
                if (OS.IsWinCE) {
                    OS.OffsetRect(damageRect, 0, rect.bottom - rect.top);
                    OS.InvalidateRect(this.handle, damageRect, true);
                } else {
                    int rgn = OS.CreateRectRgn(0, 0, 0, 0);
                    int result = OS.GetUpdateRgn(this.handle, rgn, true);
                    if (result != 1) {
                        OS.OffsetRgn(rgn, 0, rect.bottom - rect.top);
                        OS.InvalidateRgn(this.handle, rgn, true);
                    }
                    OS.DeleteObject(rgn);
                }
            }
            this.updateScrollBar();
        }
    }

    void createItemToolTips() {
        if (OS.IsWinCE) {
            return;
        }
        if (this.itemToolTipHandle != 0) {
            return;
        }
        int bits1 = OS.GetWindowLong(this.handle, -16);
        OS.SetWindowLong(this.handle, -16, bits1 |= 0x80);
        int bits2 = 0;
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10) && (this.style & 0x4000000) != 0) {
            bits2 |= 0x400000;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            bits2 |= 0x20;
        }
        this.itemToolTipHandle = OS.CreateWindowEx(bits2, new TCHAR(0, "tooltips_class32", true), null, 50, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, this.handle, 0, OS.GetModuleHandle(null), null);
        if (this.itemToolTipHandle == 0) {
            this.error(2);
        }
        OS.SendMessage(this.itemToolTipHandle, 1027, 3, 0);
        TOOLINFO lpti = new TOOLINFO();
        lpti.cbSize = TOOLINFO.sizeof;
        lpti.hwnd = this.handle;
        lpti.uId = this.handle;
        lpti.uFlags = 272;
        lpti.lpszText = -1;
        OS.SendMessage(this.itemToolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
    }

    void createParent() {
        int hwndFocus;
        int hFont;
        this.forceResize();
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        OS.MapWindowPoints(0, this.parent.handle, rect, 2);
        int oldStyle = OS.GetWindowLong(this.handle, -16);
        int newStyle = super.widgetStyle() & 0xEFFFFFFF;
        if ((oldStyle & 0x4000000) != 0) {
            newStyle |= 0x4000000;
        }
        this.hwndParent = OS.CreateWindowEx(super.widgetExtStyle(), super.windowClass(), null, newStyle, rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, this.parent.handle, 0, OS.GetModuleHandle(null), null);
        if (this.hwndParent == 0) {
            this.error(2);
        }
        OS.SetWindowLongPtr(this.hwndParent, -12, this.hwndParent);
        int bits = 0;
        if (OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            bits |= 0x100000;
            if ((this.style & 0x4000000) != 0) {
                bits |= 0x400000;
            }
        }
        this.hwndHeader = OS.CreateWindowEx(bits, HeaderClass, null, 1140850890, 0, 0, 0, 0, this.hwndParent, 0, OS.GetModuleHandle(null), null);
        if (this.hwndHeader == 0) {
            this.error(2);
        }
        OS.SetWindowLongPtr(this.hwndHeader, -12, this.hwndHeader);
        if (OS.IsDBLocale) {
            int hIMC = OS.ImmGetContext(this.handle);
            OS.ImmAssociateContext(this.hwndParent, hIMC);
            OS.ImmAssociateContext(this.hwndHeader, hIMC);
            OS.ImmReleaseContext(this.handle, hIMC);
        }
        if ((hFont = OS.SendMessage(this.handle, 49, 0, 0)) != 0) {
            OS.SendMessage(this.hwndHeader, 48, hFont, 0);
        }
        int hwndInsertAfter = OS.GetWindow(this.handle, 3);
        int flags = 19;
        this.SetWindowPos(this.hwndParent, hwndInsertAfter, 0, 0, 0, 0, flags);
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 3;
        OS.GetScrollInfo(this.hwndParent, 0, info);
        info.nPage = info.nMax + 1;
        OS.SetScrollInfo(this.hwndParent, 0, info, true);
        OS.GetScrollInfo(this.hwndParent, 1, info);
        info.nPage = info.nMax + 1;
        OS.SetScrollInfo(this.hwndParent, 1, info, true);
        this.customDraw = true;
        this.deregister();
        if ((oldStyle & 0x10000000) != 0) {
            OS.ShowWindow(this.hwndParent, 5);
        }
        if ((hwndFocus = OS.GetFocus()) == this.handle) {
            OS.SetFocus(this.hwndParent);
        }
        OS.SetParent(this.handle, this.hwndParent);
        if (hwndFocus == this.handle) {
            OS.SetFocus(this.handle);
        }
        this.register();
        this.subclass();
    }

    void createWidget() {
        super.createWidget();
        this.items = new TreeItem[4];
        this.columns = new TreeColumn[4];
        this.itemCount = -1;
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_WINDOW);
    }

    void deregister() {
        super.deregister();
        if (this.hwndParent != 0) {
            this.display.removeControl(this.hwndParent);
        }
        if (this.hwndHeader != 0) {
            this.display.removeControl(this.hwndHeader);
        }
    }

    void deselect(int hItem, TVITEM tvItem, int hIgnoreItem) {
        while (hItem != 0) {
            if (hItem != hIgnoreItem) {
                tvItem.hItem = hItem;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            }
            int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
            this.deselect(hFirstItem, tvItem, hIgnoreItem);
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
    }

    public void deselect(TreeItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 2;
        tvItem.hItem = item.handle;
        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
    }

    public void deselectAll() {
        this.checkWidget();
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 2;
        if ((this.style & 4) != 0) {
            int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
            if (hItem != 0) {
                tvItem.hItem = hItem;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            }
        } else {
            int oldProc = OS.GetWindowLongPtr(this.handle, -4);
            OS.SetWindowLongPtr(this.handle, -4, TreeProc);
            if ((this.style & 0x10000000) != 0) {
                int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
                this.deselect(hItem, tvItem, 0);
            } else {
                int i = 0;
                while (i < this.items.length) {
                    TreeItem item = this.items[i];
                    if (item != null) {
                        tvItem.hItem = item.handle;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                    ++i;
                }
            }
            OS.SetWindowLongPtr(this.handle, -4, oldProc);
        }
    }

    void destroyItem(TreeColumn column) {
        if (this.hwndHeader == 0) {
            this.error(15);
        }
        int index = 0;
        while (index < this.columnCount) {
            if (this.columns[index] == column) break;
            ++index;
        }
        int[] oldOrder = new int[this.columnCount];
        OS.SendMessage(this.hwndHeader, 4625, this.columnCount, oldOrder);
        int orderIndex = 0;
        while (orderIndex < this.columnCount) {
            if (oldOrder[orderIndex] == index) break;
            ++orderIndex;
        }
        RECT headerRect = new RECT();
        OS.SendMessage(this.hwndHeader, 4615, index, headerRect);
        if (OS.SendMessage(this.hwndHeader, 4610, index, 0) == 0) {
            this.error(15);
        }
        System.arraycopy(this.columns, index + 1, this.columns, index, --this.columnCount - index);
        this.columns[this.columnCount] = null;
        int i = 0;
        while (i < this.items.length) {
            TreeItem item = this.items[i];
            if (item != null) {
                if (this.columnCount == 0) {
                    item.strings = null;
                    item.images = null;
                    item.cellBackground = null;
                    item.cellForeground = null;
                    item.cellFont = null;
                } else {
                    Object[] temp;
                    if (item.strings != null) {
                        String[] strings = item.strings;
                        if (index == 0) {
                            item.text = strings[1] != null ? strings[1] : "";
                        }
                        temp = new String[this.columnCount];
                        System.arraycopy(strings, 0, temp, 0, index);
                        System.arraycopy(strings, index + 1, temp, index, this.columnCount - index);
                        item.strings = temp;
                    } else if (index == 0) {
                        item.text = "";
                    }
                    if (item.images != null) {
                        Image[] images = item.images;
                        if (index == 0) {
                            item.image = images[1];
                        }
                        temp = new Image[this.columnCount];
                        System.arraycopy(images, 0, temp, 0, index);
                        System.arraycopy(images, index + 1, temp, index, this.columnCount - index);
                        item.images = temp;
                    } else if (index == 0) {
                        item.image = null;
                    }
                    if (item.cellBackground != null) {
                        int[] cellBackground = item.cellBackground;
                        temp = new int[this.columnCount];
                        System.arraycopy(cellBackground, 0, temp, 0, index);
                        System.arraycopy(cellBackground, index + 1, temp, index, this.columnCount - index);
                        item.cellBackground = (int[])temp;
                    }
                    if (item.cellForeground != null) {
                        int[] cellForeground = item.cellForeground;
                        temp = new int[this.columnCount];
                        System.arraycopy(cellForeground, 0, temp, 0, index);
                        System.arraycopy(cellForeground, index + 1, temp, index, this.columnCount - index);
                        item.cellForeground = (int[])temp;
                    }
                    if (item.cellFont != null) {
                        Font[] cellFont = item.cellFont;
                        temp = new Font[this.columnCount];
                        System.arraycopy(cellFont, 0, temp, 0, index);
                        System.arraycopy(cellFont, index + 1, temp, index, this.columnCount - index);
                        item.cellFont = temp;
                    }
                }
            }
            ++i;
        }
        if (this.columnCount == 0) {
            this.scrollWidth = 0;
            if (!this.hooks(41)) {
                int bits = OS.GetWindowLong(this.handle, -16);
                if ((this.style & 0x100) != 0) {
                    bits &= 0xFFFF7FFF;
                }
                OS.SetWindowLong(this.handle, -16, bits);
                OS.InvalidateRect(this.handle, null, true);
            }
            if (this.itemToolTipHandle != 0) {
                OS.SendMessage(this.itemToolTipHandle, 1027, 3, 0);
            }
        } else {
            if (index == 0) {
                this.columns[0].style &= 0xFEFDBFFF;
                this.columns[0].style |= 0x4000;
                HDITEM hdItem = new HDITEM();
                hdItem.mask = 36;
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, index, hdItem);
                hdItem.fmt &= 0xFFFFFFFC;
                hdItem.fmt |= 0;
                OS.SendMessage(this.hwndHeader, OS.HDM_SETITEM, index, hdItem);
            }
            RECT rect = new RECT();
            OS.GetClientRect(this.handle, rect);
            rect.left = headerRect.left;
            OS.InvalidateRect(this.handle, rect, true);
        }
        this.setScrollWidth();
        this.updateImageList();
        this.updateScrollBar();
        if (this.columnCount != 0) {
            int[] newOrder = new int[this.columnCount];
            OS.SendMessage(this.hwndHeader, 4625, this.columnCount, newOrder);
            TreeColumn[] newColumns = new TreeColumn[this.columnCount - orderIndex];
            int i2 = orderIndex;
            while (i2 < newOrder.length) {
                newColumns[i2 - orderIndex] = this.columns[newOrder[i2]];
                newColumns[i2 - orderIndex].updateToolTip(newOrder[i2]);
                ++i2;
            }
            i2 = 0;
            while (i2 < newColumns.length) {
                if (!newColumns[i2].isDisposed()) {
                    newColumns[i2].sendEvent(10);
                }
                ++i2;
            }
        }
        if (this.headerToolTipHandle != 0) {
            TOOLINFO lpti = new TOOLINFO();
            lpti.cbSize = TOOLINFO.sizeof;
            lpti.uId = column.id;
            lpti.hwnd = this.hwndHeader;
            OS.SendMessage(this.headerToolTipHandle, OS.TTM_DELTOOL, 0, lpti);
        }
    }

    void destroyItem(TreeItem item, int hItem) {
        int count;
        int hwndToolTip;
        RECT rect;
        this.hLastIndexOf = 0;
        this.hFirstIndexOf = 0;
        this.itemCount = -1;
        int hParent = 0;
        boolean fixRedraw = false;
        if ((this.style & 0x20000000) == 0 && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
            rect = new RECT();
            boolean bl = fixRedraw = !OS.TreeView_GetItemRect(this.handle, hItem, rect, false);
        }
        if (fixRedraw) {
            hParent = OS.SendMessage(this.handle, 4362, 3, hItem);
            OS.UpdateWindow(this.handle);
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        if ((this.style & 2) != 0) {
            this.lockSelection = true;
            this.ignoreSelect = true;
            this.ignoreDeselect = true;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && (hwndToolTip = OS.SendMessage(this.handle, 4377, 0, 0)) != 0) {
            OS.SendMessage(hwndToolTip, 1052, 0, 0);
        }
        this.ignoreShrink = true;
        this.shrink = true;
        OS.SendMessage(this.handle, 4353, 0, hItem);
        this.ignoreShrink = false;
        if ((this.style & 2) != 0) {
            this.lockSelection = false;
            this.ignoreSelect = false;
            this.ignoreDeselect = false;
        }
        if (fixRedraw) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.ValidateRect(this.handle, null);
            if (OS.SendMessage(this.handle, 4362, 4, hParent) == 0 && OS.TreeView_GetItemRect(this.handle, hParent, rect = new RECT(), false)) {
                OS.InvalidateRect(this.handle, rect, true);
            }
        }
        if ((count = OS.SendMessage(this.handle, 4357, 0, 0)) == 0) {
            if (this.imageList != null) {
                OS.SendMessage(this.handle, 4361, 0, 0);
                this.display.releaseImageList(this.imageList);
            }
            this.imageList = null;
            if (!(this.hwndParent != 0 || this.linesVisible || this.hooks(41) || this.hooks(40) || this.hooks(42))) {
                this.customDraw = false;
            }
            this.items = new TreeItem[4];
            this.scrollWidth = 0;
            this.setScrollWidth();
        }
        this.updateScrollBar();
    }

    void destroyScrollBar(int type) {
        super.destroyScrollBar(type);
        int bits = OS.GetWindowLong(this.handle, -16);
        if ((this.style & 0x300) == 0) {
            bits &= 0xFFCFFFFF;
            bits |= 0x2000;
        } else if ((this.style & 0x100) == 0) {
            bits &= 0xFFEFFFFF;
            bits |= 0x8000;
        }
        OS.SetWindowLong(this.handle, -16, bits);
    }

    void enableDrag(boolean enabled) {
        int bits = OS.GetWindowLong(this.handle, -16);
        bits = enabled && this.hooks(29) ? (bits &= 0xFFFFFFEF) : (bits |= 0x10);
        OS.SetWindowLong(this.handle, -16, bits);
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        Control control = this.findBackgroundControl();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && control == null) {
            control = this;
        }
        if (control != null && control.backgroundImage == null) {
            this._setBackgroundPixel(enabled ? control.getBackgroundPixel() : -1);
        }
        if (this.hwndParent != 0) {
            OS.EnableWindow(this.hwndParent, enabled);
        }
        this.updateFullSelection();
    }

    boolean findCell(int x, int y, TreeItem[] item, int[] index, RECT[] cellRect, RECT[] itemRect) {
        boolean found = false;
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = x;
        lpht.y = y;
        OS.SendMessage(this.handle, 4369, 0, lpht);
        if (lpht.hItem != 0) {
            item[0] = this._getItem(lpht.hItem);
            POINT pt = new POINT();
            pt.x = x;
            pt.y = y;
            int hDC = OS.GetDC(this.handle);
            int oldFont = 0;
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            RECT rect = new RECT();
            if (this.hwndParent != 0) {
                OS.GetClientRect(this.hwndParent, rect);
                OS.MapWindowPoints(this.hwndParent, this.handle, rect, 2);
            } else {
                OS.GetClientRect(this.handle, rect);
            }
            int count = Math.max(1, this.columnCount);
            int[] order = new int[count];
            if (this.hwndHeader != 0) {
                OS.SendMessage(this.hwndHeader, 4625, count, order);
            }
            index[0] = 0;
            boolean quit = false;
            while (index[0] < count && !quit) {
                int hFont = item[0].fontHandle(order[index[0]]);
                if (hFont != -1) {
                    hFont = OS.SelectObject(hDC, hFont);
                }
                cellRect[0] = item[0].getBounds(order[index[0]], true, false, true, false, true, hDC);
                if (cellRect[0].left > rect.right) {
                    quit = true;
                } else {
                    cellRect[0].right = Math.min(cellRect[0].right, rect.right);
                    if (OS.PtInRect(cellRect[0], pt)) {
                        if (this.isCustomToolTip()) {
                            int state = OS.SendMessage(this.handle, 4391, lpht.hItem, 2);
                            int detail = (state & 2) != 0 ? 2 : 0;
                            Event event = this.sendMeasureItemEvent(item[0], order[index[0]], hDC, detail);
                            if (this.isDisposed() || item[0].isDisposed()) break;
                            itemRect[0] = new RECT();
                            itemRect[0].left = event.x;
                            itemRect[0].right = event.x + event.width;
                            itemRect[0].top = event.y;
                            itemRect[0].bottom = event.y + event.height;
                        } else {
                            itemRect[0] = item[0].getBounds(order[index[0]], true, false, false, false, false, hDC);
                        }
                        if (itemRect[0].right > cellRect[0].right) {
                            found = true;
                        }
                        quit = true;
                    }
                }
                if (hFont != -1) {
                    OS.SelectObject(hDC, hFont);
                }
                if (found) continue;
                index[0] = index[0] + 1;
            }
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
        }
        return found;
    }

    int findIndex(int hFirstItem, int hItem) {
        if (hFirstItem == 0) {
            return -1;
        }
        if (hFirstItem == this.hFirstIndexOf) {
            if (this.hFirstIndexOf == hItem) {
                this.hLastIndexOf = this.hFirstIndexOf;
                this.lastIndexOf = 0;
                return 0;
            }
            if (this.hLastIndexOf == hItem) {
                return this.lastIndexOf;
            }
            int hPrevItem = OS.SendMessage(this.handle, 4362, 2, this.hLastIndexOf);
            if (hPrevItem == hItem) {
                this.hLastIndexOf = hPrevItem;
                return --this.lastIndexOf;
            }
            int hNextItem = OS.SendMessage(this.handle, 4362, 1, this.hLastIndexOf);
            if (hNextItem == hItem) {
                this.hLastIndexOf = hNextItem;
                return ++this.lastIndexOf;
            }
            int previousIndex = this.lastIndexOf - 1;
            while (hPrevItem != 0 && hPrevItem != hItem) {
                hPrevItem = OS.SendMessage(this.handle, 4362, 2, hPrevItem);
                --previousIndex;
            }
            if (hPrevItem == hItem) {
                this.hLastIndexOf = hPrevItem;
                this.lastIndexOf = previousIndex;
                return this.lastIndexOf;
            }
            int nextIndex = this.lastIndexOf + 1;
            while (hNextItem != 0 && hNextItem != hItem) {
                hNextItem = OS.SendMessage(this.handle, 4362, 1, hNextItem);
                ++nextIndex;
            }
            if (hNextItem == hItem) {
                this.hLastIndexOf = hNextItem;
                this.lastIndexOf = nextIndex;
                return this.lastIndexOf;
            }
            return -1;
        }
        int index = 0;
        int hNextItem = hFirstItem;
        while (hNextItem != 0 && hNextItem != hItem) {
            hNextItem = OS.SendMessage(this.handle, 4362, 1, hNextItem);
            ++index;
        }
        if (hNextItem == hItem) {
            this.itemCount = -1;
            this.hFirstIndexOf = hFirstItem;
            this.hLastIndexOf = hNextItem;
            this.lastIndexOf = index;
            return this.lastIndexOf;
        }
        return -1;
    }

    Widget findItem(int hItem) {
        return this._getItem(hItem);
    }

    int findItem(int hFirstItem, int index) {
        if (hFirstItem == 0) {
            return 0;
        }
        if (hFirstItem == this.hFirstIndexOf) {
            if (index == 0) {
                this.lastIndexOf = 0;
                this.hLastIndexOf = this.hFirstIndexOf;
                return this.hLastIndexOf;
            }
            if (this.lastIndexOf == index) {
                return this.hLastIndexOf;
            }
            if (this.lastIndexOf - 1 == index) {
                --this.lastIndexOf;
                this.hLastIndexOf = OS.SendMessage(this.handle, 4362, 2, this.hLastIndexOf);
                return this.hLastIndexOf;
            }
            if (this.lastIndexOf + 1 == index) {
                ++this.lastIndexOf;
                this.hLastIndexOf = OS.SendMessage(this.handle, 4362, 1, this.hLastIndexOf);
                return this.hLastIndexOf;
            }
            if (index < this.lastIndexOf) {
                int previousIndex = this.lastIndexOf - 1;
                int hPrevItem = OS.SendMessage(this.handle, 4362, 2, this.hLastIndexOf);
                while (hPrevItem != 0 && index < previousIndex) {
                    hPrevItem = OS.SendMessage(this.handle, 4362, 2, hPrevItem);
                    --previousIndex;
                }
                if (index == previousIndex) {
                    this.lastIndexOf = previousIndex;
                    this.hLastIndexOf = hPrevItem;
                    return this.hLastIndexOf;
                }
            } else {
                int nextIndex = this.lastIndexOf + 1;
                int hNextItem = OS.SendMessage(this.handle, 4362, 1, this.hLastIndexOf);
                while (hNextItem != 0 && nextIndex < index) {
                    hNextItem = OS.SendMessage(this.handle, 4362, 1, hNextItem);
                    ++nextIndex;
                }
                if (index == nextIndex) {
                    this.lastIndexOf = nextIndex;
                    this.hLastIndexOf = hNextItem;
                    return this.hLastIndexOf;
                }
            }
            return 0;
        }
        int nextIndex = 0;
        int hNextItem = hFirstItem;
        while (hNextItem != 0 && nextIndex < index) {
            hNextItem = OS.SendMessage(this.handle, 4362, 1, hNextItem);
            ++nextIndex;
        }
        if (index == nextIndex) {
            this.itemCount = -1;
            this.lastIndexOf = nextIndex;
            this.hFirstIndexOf = hFirstItem;
            this.hLastIndexOf = hNextItem;
            return this.hLastIndexOf;
        }
        return 0;
    }

    TreeItem getFocusItem() {
        int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
        return hItem != 0 ? this._getItem(hItem) : null;
    }

    public int getGridLineWidth() {
        this.checkWidget();
        return 1;
    }

    public int getHeaderHeight() {
        this.checkWidget();
        if (this.hwndHeader == 0) {
            return 0;
        }
        RECT rect = new RECT();
        OS.GetWindowRect(this.hwndHeader, rect);
        return rect.bottom - rect.top;
    }

    public boolean getHeaderVisible() {
        this.checkWidget();
        if (this.hwndHeader == 0) {
            return false;
        }
        int bits = OS.GetWindowLong(this.hwndHeader, -16);
        return (bits & 0x10000000) != 0;
    }

    Point getImageSize() {
        if (this.imageList != null) {
            return this.imageList.getImageSize();
        }
        return new Point(0, this.getItemHeight());
    }

    int getBottomItem() {
        int hItem = OS.SendMessage(this.handle, 4362, 5, 0);
        if (hItem == 0) {
            return 0;
        }
        int index = 0;
        int count = OS.SendMessage(this.handle, 4368, 0, 0);
        while (index <= count) {
            int hNextItem = OS.SendMessage(this.handle, 4362, 6, hItem);
            if (hNextItem == 0) {
                return hItem;
            }
            hItem = hNextItem;
            ++index;
        }
        return hItem;
    }

    public TreeColumn getColumn(int index) {
        this.checkWidget();
        if (index < 0 || index >= this.columnCount) {
            this.error(6);
        }
        return this.columns[index];
    }

    public int getColumnCount() {
        this.checkWidget();
        return this.columnCount;
    }

    public int[] getColumnOrder() {
        this.checkWidget();
        if (this.columnCount == 0) {
            return new int[0];
        }
        int[] order = new int[this.columnCount];
        OS.SendMessage(this.hwndHeader, 4625, this.columnCount, order);
        return order;
    }

    public TreeColumn[] getColumns() {
        this.checkWidget();
        TreeColumn[] result = new TreeColumn[this.columnCount];
        System.arraycopy(this.columns, 0, result, 0, this.columnCount);
        return result;
    }

    public TreeItem getItem(int index) {
        int hItem;
        int hFirstItem;
        this.checkWidget();
        if (index < 0) {
            this.error(6);
        }
        if ((hFirstItem = OS.SendMessage(this.handle, 4362, 0, 0)) == 0) {
            this.error(6);
        }
        if ((hItem = this.findItem(hFirstItem, index)) == 0) {
            this.error(6);
        }
        return this._getItem(hItem);
    }

    TreeItem getItem(NMTVCUSTOMDRAW nmcd) {
        int id = nmcd.lItemlParam;
        if ((this.style & 0x10000000) != 0 && id == -1) {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 20;
            tvItem.hItem = nmcd.dwItemSpec;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            id = tvItem.lParam;
        }
        return this._getItem(nmcd.dwItemSpec, id);
    }

    public TreeItem getItem(Point point) {
        this.checkWidget();
        if (point == null) {
            this.error(4);
        }
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = point.x;
        lpht.y = point.y;
        OS.SendMessage(this.handle, 4369, 0, lpht);
        if (lpht.hItem != 0) {
            int flags = 70;
            if ((this.style & 0x10000) != 0) {
                flags |= 0x28;
            } else if (this.hooks(41)) {
                lpht.flags &= 0xFFFFFFF9;
                if (this.hitTestSelection(lpht.hItem, lpht.x, lpht.y)) {
                    lpht.flags |= 6;
                }
            }
            if ((lpht.flags & flags) != 0) {
                return this._getItem(lpht.hItem);
            }
        }
        return null;
    }

    public int getItemCount() {
        this.checkWidget();
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        if (hItem == 0) {
            return 0;
        }
        return this.getItemCount(hItem);
    }

    int getItemCount(int hItem) {
        int count = 0;
        int hFirstItem = hItem;
        if (hItem == this.hFirstIndexOf) {
            if (this.itemCount != -1) {
                return this.itemCount;
            }
            hFirstItem = this.hLastIndexOf;
            count = this.lastIndexOf;
        }
        while (hFirstItem != 0) {
            hFirstItem = OS.SendMessage(this.handle, 4362, 1, hFirstItem);
            ++count;
        }
        if (hItem == this.hFirstIndexOf) {
            this.itemCount = count;
        }
        return count;
    }

    public int getItemHeight() {
        this.checkWidget();
        return OS.SendMessage(this.handle, 4380, 0, 0);
    }

    public TreeItem[] getItems() {
        this.checkWidget();
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        if (hItem == 0) {
            return new TreeItem[0];
        }
        return this.getItems(hItem);
    }

    TreeItem[] getItems(int hTreeItem) {
        int count = 0;
        int hItem = hTreeItem;
        while (hItem != 0) {
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
            ++count;
        }
        int index = 0;
        TreeItem[] result = new TreeItem[count];
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        tvItem.hItem = hTreeItem;
        while (tvItem.hItem != 0) {
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            TreeItem item = this._getItem(tvItem.hItem, tvItem.lParam);
            if (item != null) {
                result[index++] = item;
            }
            tvItem.hItem = OS.SendMessage(this.handle, 4362, 1, tvItem.hItem);
        }
        if (index != count) {
            TreeItem[] newResult = new TreeItem[index];
            System.arraycopy(result, 0, newResult, 0, index);
            result = newResult;
        }
        return result;
    }

    public boolean getLinesVisible() {
        this.checkWidget();
        return this.linesVisible;
    }

    int getNextSelection(int hItem, TVITEM tvItem) {
        while (hItem != 0) {
            int state = 0;
            if (OS.IsWinCE) {
                tvItem.hItem = hItem;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                state = tvItem.state;
            } else {
                state = OS.SendMessage(this.handle, 4391, hItem, 2);
            }
            if ((state & 2) != 0) {
                return hItem;
            }
            int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
            int hSelected = this.getNextSelection(hFirstItem, tvItem);
            if (hSelected != 0) {
                return hSelected;
            }
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
        return 0;
    }

    public TreeItem getParentItem() {
        this.checkWidget();
        return null;
    }

    int getSelection(int hItem, TVITEM tvItem, TreeItem[] selection, int index, int count, boolean bigSelection, boolean all) {
        while (hItem != 0) {
            if (OS.IsWinCE || bigSelection) {
                tvItem.hItem = hItem;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                if ((tvItem.state & 2) != 0) {
                    if (selection != null && index < selection.length) {
                        selection[index] = this._getItem(hItem, tvItem.lParam);
                    }
                    ++index;
                }
            } else {
                int state = OS.SendMessage(this.handle, 4391, hItem, 2);
                if ((state & 2) != 0) {
                    if (tvItem != null && selection != null && index < selection.length) {
                        tvItem.hItem = hItem;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        selection[index] = this._getItem(hItem, tvItem.lParam);
                    }
                    ++index;
                }
            }
            if (index == count) break;
            if (all) {
                int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
                index = this.getSelection(hFirstItem, tvItem, selection, index, count, bigSelection, all);
                if (index == count) break;
                hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
                continue;
            }
            hItem = OS.SendMessage(this.handle, 4362, 6, hItem);
        }
        return index;
    }

    public TreeItem[] getSelection() {
        boolean bigSelection;
        TVITEM tvItem;
        this.checkWidget();
        if ((this.style & 4) != 0) {
            int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
            if (hItem == 0) {
                return new TreeItem[0];
            }
            TVITEM tvItem2 = new TVITEM();
            tvItem2.mask = 28;
            tvItem2.hItem = hItem;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem2);
            if ((tvItem2.state & 2) == 0) {
                return new TreeItem[0];
            }
            return new TreeItem[]{this._getItem(tvItem2.hItem, tvItem2.lParam)};
        }
        int count = 0;
        TreeItem[] guess = new TreeItem[(this.style & 0x10000000) != 0 ? 8 : 1];
        int oldProc = OS.GetWindowLongPtr(this.handle, -4);
        OS.SetWindowLongPtr(this.handle, -4, TreeProc);
        if ((this.style & 0x10000000) != 0) {
            tvItem = new TVITEM();
            tvItem.mask = 28;
            int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
            count = this.getSelection(hItem, tvItem, guess, 0, -1, false, true);
        } else {
            tvItem = null;
            if (OS.IsWinCE) {
                tvItem = new TVITEM();
                tvItem.mask = 8;
            }
            int i = 0;
            while (i < this.items.length) {
                TreeItem item = this.items[i];
                if (item != null) {
                    int hItem = item.handle;
                    int state = 0;
                    if (OS.IsWinCE) {
                        tvItem.hItem = hItem;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        state = tvItem.state;
                    } else {
                        state = OS.SendMessage(this.handle, 4391, hItem, 2);
                    }
                    if ((state & 2) != 0) {
                        if (count < guess.length) {
                            guess[count] = item;
                        }
                        ++count;
                    }
                }
                ++i;
            }
        }
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
        if (count == 0) {
            return new TreeItem[0];
        }
        if (count == guess.length) {
            return guess;
        }
        TreeItem[] result = new TreeItem[count];
        if (count < guess.length) {
            System.arraycopy(guess, 0, result, 0, count);
            return result;
        }
        OS.SetWindowLongPtr(this.handle, -4, TreeProc);
        TVITEM tvItem3 = new TVITEM();
        tvItem3.mask = 28;
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        int itemCount = OS.SendMessage(this.handle, 4357, 0, 0);
        boolean bl = bigSelection = result.length > itemCount / 2;
        if (count != this.getSelection(hItem, tvItem3, result, 0, count, bigSelection, false)) {
            this.getSelection(hItem, tvItem3, result, 0, count, bigSelection, true);
        }
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
        return result;
    }

    public int getSelectionCount() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
            if (hItem == 0) {
                return 0;
            }
            int state = 0;
            if (OS.IsWinCE) {
                TVITEM tvItem = new TVITEM();
                tvItem.hItem = hItem;
                tvItem.mask = 8;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                state = tvItem.state;
            } else {
                state = OS.SendMessage(this.handle, 4391, hItem, 2);
            }
            return (state & 2) == 0 ? 0 : 1;
        }
        int count = 0;
        int oldProc = OS.GetWindowLongPtr(this.handle, -4);
        TVITEM tvItem = null;
        if (OS.IsWinCE) {
            tvItem = new TVITEM();
            tvItem.mask = 8;
        }
        OS.SetWindowLongPtr(this.handle, -4, TreeProc);
        if ((this.style & 0x10000000) != 0) {
            int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
            count = this.getSelection(hItem, tvItem, null, 0, -1, false, true);
        } else {
            int i = 0;
            while (i < this.items.length) {
                TreeItem item = this.items[i];
                if (item != null) {
                    int hItem = item.handle;
                    int state = 0;
                    if (OS.IsWinCE) {
                        tvItem.hItem = hItem;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        state = tvItem.state;
                    } else {
                        state = OS.SendMessage(this.handle, 4391, hItem, 2);
                    }
                    if ((state & 2) != 0) {
                        ++count;
                    }
                }
                ++i;
            }
        }
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
        return count;
    }

    public TreeColumn getSortColumn() {
        this.checkWidget();
        return this.sortColumn;
    }

    int getSortColumnPixel() {
        int pixel = OS.IsWindowEnabled(this.handle) ? this.getBackgroundPixel() : OS.GetSysColor(OS.COLOR_3DFACE);
        int red = pixel & 0xFF;
        int green = (pixel & 0xFF00) >> 8;
        int blue = (pixel & 0xFF0000) >> 16;
        if (red > 240 && green > 240 && blue > 240) {
            red -= 8;
            green -= 8;
            blue -= 8;
        } else {
            red = Math.min(255, red / 10 + red);
            green = Math.min(255, green / 10 + green);
            blue = Math.min(255, blue / 10 + blue);
        }
        return red & 0xFF | (green & 0xFF) << 8 | (blue & 0xFF) << 16;
    }

    public int getSortDirection() {
        this.checkWidget();
        return this.sortDirection;
    }

    public TreeItem getTopItem() {
        this.checkWidget();
        int hItem = OS.SendMessage(this.handle, 4362, 5, 0);
        return hItem != 0 ? this._getItem(hItem) : null;
    }

    boolean hitTestSelection(int hItem, int x, int y) {
        int state;
        int detail;
        Event event;
        int hFont;
        if (hItem == 0) {
            return false;
        }
        TreeItem item = this._getItem(hItem);
        if (item == null) {
            return false;
        }
        if (!this.hooks(41)) {
            return false;
        }
        boolean result = false;
        int[] order = new int[1];
        int[] index = new int[1];
        int hDC = OS.GetDC(this.handle);
        int oldFont = 0;
        int newFont = OS.SendMessage(this.handle, 49, 0, 0);
        if (newFont != 0) {
            oldFont = OS.SelectObject(hDC, newFont);
        }
        if ((hFont = item.fontHandle(order[index[0]])) != -1) {
            hFont = OS.SelectObject(hDC, hFont);
        }
        if ((event = this.sendMeasureItemEvent(item, order[index[0]], hDC, detail = ((state = OS.SendMessage(this.handle, 4391, hItem, 2)) & 2) != 0 ? 2 : 0)).getBounds().contains(x, y)) {
            result = true;
        }
        if (newFont != 0) {
            OS.SelectObject(hDC, oldFont);
        }
        OS.ReleaseDC(this.handle, hDC);
        return result;
    }

    int imageIndex(Image image, int index) {
        int imageIndex;
        if (image == null) {
            return -2;
        }
        if (this.imageList == null) {
            Rectangle bounds = image.getBounds();
            this.imageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
        }
        if ((imageIndex = this.imageList.indexOf(image)) == -1) {
            imageIndex = this.imageList.add(image);
        }
        if (this.hwndHeader == 0 || OS.SendMessage(this.hwndHeader, 4623, 0, 0) == index) {
            int hImageList = this.imageList.getHandle();
            int hOldImageList = OS.SendMessage(this.handle, 4360, 0, 0);
            if (hOldImageList != hImageList) {
                OS.SendMessage(this.handle, 4361, 0, hImageList);
                this.updateScrollBar();
            }
        }
        return imageIndex;
    }

    int imageIndexHeader(Image image) {
        if (image == null) {
            return -2;
        }
        if (this.headerImageList == null) {
            Rectangle bounds = image.getBounds();
            this.headerImageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
            int index = this.headerImageList.indexOf(image);
            if (index == -1) {
                index = this.headerImageList.add(image);
            }
            int hImageList = this.headerImageList.getHandle();
            if (this.hwndHeader != 0) {
                OS.SendMessage(this.hwndHeader, 4616, 0, hImageList);
            }
            this.updateScrollBar();
            return index;
        }
        int index = this.headerImageList.indexOf(image);
        if (index != -1) {
            return index;
        }
        return this.headerImageList.add(image);
    }

    public int indexOf(TreeColumn column) {
        this.checkWidget();
        if (column == null) {
            this.error(4);
        }
        if (column.isDisposed()) {
            this.error(5);
        }
        int i = 0;
        while (i < this.columnCount) {
            if (this.columns[i] == column) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public int indexOf(TreeItem item) {
        int hItem;
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        return (hItem = OS.SendMessage(this.handle, 4362, 0, 0)) == 0 ? -1 : this.findIndex(hItem, item.handle);
    }

    boolean isCustomToolTip() {
        return this.hooks(41);
    }

    boolean isItemSelected(NMTVCUSTOMDRAW nmcd) {
        boolean selected = false;
        if (OS.IsWindowEnabled(this.handle)) {
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 24;
            tvItem.hItem = nmcd.dwItemSpec;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            if ((tvItem.state & 0xA) != 0) {
                selected = true;
                if (this.handle == OS.GetFocus()) {
                    if (OS.GetTextColor(nmcd.hdc) != OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT)) {
                        selected = false;
                    } else if (OS.GetBkColor(nmcd.hdc) != OS.GetSysColor(OS.COLOR_HIGHLIGHT)) {
                        selected = false;
                    }
                }
            } else if (nmcd.dwDrawStage == 65538 && OS.GetTextColor(nmcd.hdc) == OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT) && OS.GetBkColor(nmcd.hdc) == OS.GetSysColor(OS.COLOR_HIGHLIGHT)) {
                selected = true;
            }
        }
        return selected;
    }

    void redrawSelection() {
        if ((this.style & 4) != 0) {
            RECT rect;
            int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
            if (hItem != 0 && OS.TreeView_GetItemRect(this.handle, hItem, rect = new RECT(), false)) {
                OS.InvalidateRect(this.handle, rect, true);
            }
        } else {
            int hItem = OS.SendMessage(this.handle, 4362, 5, 0);
            if (hItem != 0) {
                TVITEM tvItem = null;
                if (OS.IsWinCE) {
                    tvItem = new TVITEM();
                    tvItem.mask = 8;
                }
                RECT rect = new RECT();
                int index = 0;
                int count = OS.SendMessage(this.handle, 4368, 0, 0);
                while (index <= count && hItem != 0) {
                    int state = 0;
                    if (OS.IsWinCE) {
                        tvItem.hItem = hItem;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        state = tvItem.state;
                    } else {
                        state = OS.SendMessage(this.handle, 4391, hItem, 2);
                    }
                    if ((state & 2) != 0 && OS.TreeView_GetItemRect(this.handle, hItem, rect, false)) {
                        OS.InvalidateRect(this.handle, rect, true);
                    }
                    hItem = OS.SendMessage(this.handle, 4362, 6, hItem);
                    ++index;
                }
            }
        }
    }

    void register() {
        super.register();
        if (this.hwndParent != 0) {
            this.display.addControl(this.hwndParent, this);
        }
        if (this.hwndHeader != 0) {
            this.display.addControl(this.hwndHeader, this);
        }
    }

    void releaseItem(int hItem, TVITEM tvItem, boolean release) {
        if (hItem == this.hAnchor) {
            this.hAnchor = 0;
        }
        if (hItem == this.hInsert) {
            this.hInsert = 0;
        }
        tvItem.hItem = hItem;
        if (OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem) != 0 && tvItem.lParam != -1) {
            TreeItem item;
            if (tvItem.lParam < this.lastID) {
                this.lastID = tvItem.lParam;
            }
            if (release && (item = this.items[tvItem.lParam]) != null) {
                item.release(false);
            }
            this.items[tvItem.lParam] = null;
        }
    }

    void releaseItems(int hItem, TVITEM tvItem) {
        hItem = OS.SendMessage(this.handle, 4362, 4, hItem);
        while (hItem != 0) {
            this.releaseItems(hItem, tvItem);
            this.releaseItem(hItem, tvItem, true);
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.hwndHeader = 0;
        this.hwndParent = 0;
    }

    void releaseChildren(boolean destroy) {
        int i;
        if (this.items != null) {
            i = 0;
            while (i < this.items.length) {
                TreeItem item = this.items[i];
                if (item != null && !item.isDisposed()) {
                    item.release(false);
                }
                ++i;
            }
            this.items = null;
        }
        if (this.columns != null) {
            i = 0;
            while (i < this.columns.length) {
                TreeColumn column = this.columns[i];
                if (column != null && !column.isDisposed()) {
                    column.release(false);
                }
                ++i;
            }
            this.columns = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseWidget() {
        super.releaseWidget();
        this.customDraw = false;
        if (this.imageList != null) {
            OS.SendMessage(this.handle, 4361, 0, 0);
            this.display.releaseImageList(this.imageList);
        }
        if (this.headerImageList != null) {
            if (this.hwndHeader != 0) {
                OS.SendMessage(this.hwndHeader, 4616, 0, 0);
            }
            this.display.releaseImageList(this.headerImageList);
        }
        this.headerImageList = null;
        this.imageList = null;
        int hStateList = OS.SendMessage(this.handle, 4360, 2, 0);
        OS.SendMessage(this.handle, 4361, 2, 0);
        if (hStateList != 0) {
            OS.ImageList_Destroy(hStateList);
        }
        if (this.itemToolTipHandle != 0) {
            OS.DestroyWindow(this.itemToolTipHandle);
        }
        if (this.headerToolTipHandle != 0) {
            OS.DestroyWindow(this.headerToolTipHandle);
        }
        this.headerToolTipHandle = 0;
        this.itemToolTipHandle = 0;
    }

    public void removeAll() {
        boolean redraw;
        this.checkWidget();
        this.hLastIndexOf = 0;
        this.hFirstIndexOf = 0;
        this.itemCount = -1;
        int i = 0;
        while (i < this.items.length) {
            TreeItem item = this.items[i];
            if (item != null && !item.isDisposed()) {
                item.release(false);
            }
            ++i;
        }
        this.ignoreSelect = true;
        this.ignoreDeselect = true;
        boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
        if (redraw) {
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        this.ignoreShrink = true;
        this.shrink = true;
        int result = OS.SendMessage(this.handle, 4353, 0, -65536);
        this.ignoreShrink = false;
        if (redraw) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.InvalidateRect(this.handle, null, true);
        }
        this.ignoreSelect = false;
        this.ignoreDeselect = false;
        if (result == 0) {
            this.error(15);
        }
        if (this.imageList != null) {
            OS.SendMessage(this.handle, 4361, 0, 0);
            this.display.releaseImageList(this.imageList);
        }
        this.imageList = null;
        if (!(this.hwndParent != 0 || this.linesVisible || this.hooks(41) || this.hooks(40) || this.hooks(42))) {
            this.customDraw = false;
        }
        this.hLastIndexOf = 0;
        this.hFirstIndexOf = 0;
        this.hInsert = 0;
        this.hAnchor = 0;
        this.itemCount = -1;
        this.items = new TreeItem[4];
        this.scrollWidth = 0;
        this.setScrollWidth();
        this.updateScrollBar();
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        this.eventTable.unhook(13, listener);
        this.eventTable.unhook(14, listener);
    }

    public void removeTreeListener(TreeListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(17, listener);
        this.eventTable.unhook(18, listener);
    }

    void reskinChildren(int flags) {
        int i;
        if (this.items != null) {
            i = 0;
            while (i < this.items.length) {
                TreeItem item = this.items[i];
                if (item != null) {
                    item.reskinChildren(flags);
                }
                ++i;
            }
        }
        if (this.columns != null) {
            i = 0;
            while (i < this.columns.length) {
                TreeColumn column = this.columns[i];
                if (column != null) {
                    column.reskinChildren(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    public void setInsertMark(TreeItem item, boolean before) {
        this.checkWidget();
        int hItem = 0;
        if (item != null) {
            if (item.isDisposed()) {
                this.error(5);
            }
            hItem = item.handle;
        }
        this.hInsert = hItem;
        this.insertAfter = !before;
        OS.SendMessage(this.handle, 4378, this.insertAfter ? 1 : 0, this.hInsert);
    }

    public void setItemCount(int count) {
        this.checkWidget();
        count = Math.max(0, count);
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        this.setItemCount(count, 0, hItem);
    }

    void setItemCount(int count, int hParent, int hItem) {
        boolean redraw = false;
        if (OS.SendMessage(this.handle, 4357, 0, 0) == 0) {
            boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            if (redraw) {
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
        }
        int itemCount = 0;
        while (hItem != 0 && itemCount < count) {
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
            ++itemCount;
        }
        boolean expanded = false;
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 20;
        if (!redraw && (this.style & 0x10000000) != 0) {
            if (OS.IsWinCE) {
                tvItem.hItem = hParent;
                tvItem.mask = 8;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                expanded = (tvItem.state & 0x20) != 0;
            } else {
                int state = OS.SendMessage(this.handle, 4391, hParent, 32);
                expanded = (state & 0x20) != 0;
            }
        }
        while (hItem != 0) {
            TreeItem item;
            tvItem.hItem = hItem;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
            TreeItem treeItem = item = tvItem.lParam != -1 ? this.items[tvItem.lParam] : null;
            if (item != null && !item.isDisposed()) {
                item.dispose();
                continue;
            }
            this.releaseItem(tvItem.hItem, tvItem, false);
            this.destroyItem(null, tvItem.hItem);
        }
        if ((this.style & 0x10000000) != 0) {
            int i = itemCount;
            while (i < count) {
                if (expanded) {
                    this.ignoreShrink = true;
                }
                this.createItem(null, hParent, -65534, 0);
                if (expanded) {
                    this.ignoreShrink = false;
                }
                ++i;
            }
        } else {
            this.shrink = true;
            int extra = Math.max(4, (count + 3) / 4 * 4);
            TreeItem[] newItems = new TreeItem[this.items.length + extra];
            System.arraycopy(this.items, 0, newItems, 0, this.items.length);
            this.items = newItems;
            int i = itemCount;
            while (i < count) {
                new TreeItem(this, 0, hParent, -65534, 0);
                ++i;
            }
        }
        if (redraw) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    void setItemHeight(int itemHeight) {
        this.checkWidget();
        if (itemHeight < -1) {
            this.error(5);
        }
        OS.SendMessage(this.handle, 4379, itemHeight, 0);
    }

    public void setLinesVisible(boolean show) {
        this.checkWidget();
        if (this.linesVisible == show) {
            return;
        }
        this.linesVisible = show;
        if (this.hwndParent == 0 && this.linesVisible) {
            this.customDraw = true;
        }
        OS.InvalidateRect(this.handle, null, true);
    }

    int scrolledHandle() {
        if (this.hwndHeader == 0) {
            return this.handle;
        }
        return this.columnCount == 0 && this.scrollWidth == 0 ? this.handle : this.hwndParent;
    }

    void select(int hItem, TVITEM tvItem) {
        while (hItem != 0) {
            tvItem.hItem = hItem;
            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            int state = OS.SendMessage(this.handle, 4391, hItem, 32);
            if ((state & 0x20) != 0) {
                int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
                this.select(hFirstItem, tvItem);
            }
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
    }

    public void select(TreeItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        if ((this.style & 4) != 0) {
            boolean redraw;
            int hItem = item.handle;
            int state = 0;
            if (OS.IsWinCE) {
                TVITEM tvItem = new TVITEM();
                tvItem.hItem = hItem;
                tvItem.mask = 8;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                state = tvItem.state;
            } else {
                state = OS.SendMessage(this.handle, 4391, hItem, 2);
            }
            if ((state & 2) != 0) {
                return;
            }
            SCROLLINFO hInfo = null;
            int bits = OS.GetWindowLong(this.handle, -16);
            if ((bits & 0xA000) == 0) {
                hInfo = new SCROLLINFO();
                hInfo.cbSize = SCROLLINFO.sizeof;
                hInfo.fMask = 23;
                OS.GetScrollInfo(this.handle, 0, hInfo);
            }
            SCROLLINFO vInfo = new SCROLLINFO();
            vInfo.cbSize = SCROLLINFO.sizeof;
            vInfo.fMask = 23;
            OS.GetScrollInfo(this.handle, 1, vInfo);
            boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            if (redraw) {
                OS.UpdateWindow(this.handle);
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
            this.setSelection(item);
            if (hInfo != null) {
                int hThumb = OS.MAKELPARAM(4, hInfo.nPos);
                OS.SendMessage(this.handle, 276, hThumb, 0);
            }
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                OS.SetScrollInfo(this.handle, 1, vInfo, true);
            }
            int vThumb = OS.MAKELPARAM(4, vInfo.nPos);
            OS.SendMessage(this.handle, 277, vThumb, 0);
            if (redraw) {
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.InvalidateRect(this.handle, null, true);
                if ((this.style & 0x20000000) == 0) {
                    int oldStyle = this.style;
                    this.style |= 0x20000000;
                    OS.UpdateWindow(this.handle);
                    this.style = oldStyle;
                }
            }
            return;
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 2;
        tvItem.state = 2;
        tvItem.hItem = item.handle;
        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
    }

    public void selectAll() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return;
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.state = 2;
        tvItem.stateMask = 2;
        int oldProc = OS.GetWindowLongPtr(this.handle, -4);
        OS.SetWindowLongPtr(this.handle, -4, TreeProc);
        int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
        this.select(hItem, tvItem);
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
    }

    Event sendEraseItemEvent(TreeItem item, NMTTCUSTOMDRAW nmcd, int column, RECT cellRect) {
        int nSavedDC = OS.SaveDC(nmcd.hdc);
        RECT insetRect = this.toolTipInset(cellRect);
        OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
        GCData data = new GCData();
        data.device = this.display;
        data.foreground = OS.GetTextColor(nmcd.hdc);
        data.background = OS.GetBkColor(nmcd.hdc);
        data.font = item.getFont(column);
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        GC gc = GC.win32_new(nmcd.hdc, data);
        Event event = new Event();
        event.item = item;
        event.index = column;
        event.gc = gc;
        event.detail |= 0x10;
        event.x = cellRect.left;
        event.y = cellRect.top;
        event.width = cellRect.right - cellRect.left;
        event.height = cellRect.bottom - cellRect.top;
        this.sendEvent(40, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(nmcd.hdc, nSavedDC);
        return event;
    }

    Event sendMeasureItemEvent(TreeItem item, int index, int hDC, int detail) {
        RECT itemRect = item.getBounds(index, true, true, false, false, false, hDC);
        int nSavedDC = OS.SaveDC(hDC);
        GCData data = new GCData();
        data.device = this.display;
        data.font = item.getFont(index);
        GC gc = GC.win32_new(hDC, data);
        Event event = new Event();
        event.item = item;
        event.gc = gc;
        event.index = index;
        event.x = itemRect.left;
        event.y = itemRect.top;
        event.width = itemRect.right - itemRect.left;
        event.height = itemRect.bottom - itemRect.top;
        event.detail = detail;
        this.sendEvent(41, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(hDC, nSavedDC);
        if (this.isDisposed() || item.isDisposed()) {
            return null;
        }
        if (this.hwndHeader != 0 && this.columnCount == 0 && event.x + event.width > this.scrollWidth) {
            this.scrollWidth = event.x + event.width;
            this.setScrollWidth(this.scrollWidth);
        }
        if (event.height > this.getItemHeight()) {
            this.setItemHeight(event.height);
        }
        return event;
    }

    Event sendPaintItemEvent(TreeItem item, NMTTCUSTOMDRAW nmcd, int column, RECT itemRect) {
        int nSavedDC = OS.SaveDC(nmcd.hdc);
        RECT insetRect = this.toolTipInset(itemRect);
        OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
        GCData data = new GCData();
        data.device = this.display;
        data.font = item.getFont(column);
        data.foreground = OS.GetTextColor(nmcd.hdc);
        data.background = OS.GetBkColor(nmcd.hdc);
        data.uiState = OS.SendMessage(this.handle, 297, 0, 0);
        GC gc = GC.win32_new(nmcd.hdc, data);
        Event event = new Event();
        event.item = item;
        event.index = column;
        event.gc = gc;
        event.detail |= 0x10;
        event.x = itemRect.left;
        event.y = itemRect.top;
        event.width = itemRect.right - itemRect.left;
        event.height = itemRect.bottom - itemRect.top;
        this.sendEvent(42, event);
        event.gc = null;
        gc.dispose();
        OS.RestoreDC(nmcd.hdc, nSavedDC);
        return event;
    }

    void setBackgroundImage(int hBitmap) {
        super.setBackgroundImage(hBitmap);
        if (hBitmap != 0) {
            if (OS.SendMessage(this.handle, 4383, 0, 0) == -1) {
                OS.SendMessage(this.handle, 4381, 0, -1);
            }
            this._setBackgroundPixel(-1);
        } else {
            Control control = this.findBackgroundControl();
            if (control == null) {
                control = this;
            }
            if (control.backgroundImage == null) {
                this.setBackgroundPixel(control.getBackgroundPixel());
            }
        }
        this.updateFullSelection();
    }

    void setBackgroundPixel(int pixel) {
        Control control = this.findImageControl();
        if (control != null) {
            this.setBackgroundImage(control.backgroundImage);
            return;
        }
        if (OS.IsWindowEnabled(this.handle)) {
            this._setBackgroundPixel(pixel);
        }
        this.updateFullSelection();
    }

    void setCursor() {
        Cursor cursor = this.findCursor();
        int hCursor = cursor == null ? OS.LoadCursor(0, 32512) : cursor.handle;
        OS.SetCursor(hCursor);
    }

    public void setColumnOrder(int[] order) {
        this.checkWidget();
        if (order == null) {
            this.error(4);
        }
        if (this.columnCount == 0) {
            if (order.length != 0) {
                this.error(5);
            }
            return;
        }
        if (order.length != this.columnCount) {
            this.error(5);
        }
        int[] oldOrder = new int[this.columnCount];
        OS.SendMessage(this.hwndHeader, 4625, this.columnCount, oldOrder);
        boolean reorder = false;
        boolean[] seen = new boolean[this.columnCount];
        int i = 0;
        while (i < order.length) {
            int index = order[i];
            if (index < 0 || index >= this.columnCount) {
                this.error(6);
            }
            if (seen[index]) {
                this.error(5);
            }
            seen[index] = true;
            if (index != oldOrder[i]) {
                reorder = true;
            }
            ++i;
        }
        if (reorder) {
            RECT[] oldRects = new RECT[this.columnCount];
            int i2 = 0;
            while (i2 < this.columnCount) {
                oldRects[i2] = new RECT();
                OS.SendMessage(this.hwndHeader, 4615, i2, oldRects[i2]);
                ++i2;
            }
            OS.SendMessage(this.hwndHeader, 4626, order.length, order);
            OS.InvalidateRect(this.handle, null, true);
            this.updateImageList();
            TreeColumn[] newColumns = new TreeColumn[this.columnCount];
            System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
            RECT newRect = new RECT();
            int i3 = 0;
            while (i3 < this.columnCount) {
                TreeColumn column = newColumns[i3];
                if (!column.isDisposed()) {
                    OS.SendMessage(this.hwndHeader, 4615, i3, newRect);
                    if (newRect.left != oldRects[i3].left) {
                        column.updateToolTip(i3);
                        column.sendEvent(10);
                    }
                }
                ++i3;
            }
        }
    }

    void setCheckboxImageList() {
        int height;
        if ((this.style & 0x20) == 0) {
            return;
        }
        int count = 5;
        int flags = 0;
        if (OS.IsWinCE) {
            flags |= 0;
        } else if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            flags |= 0x20;
        } else {
            int hDC = OS.GetDC(this.handle);
            int bits = OS.GetDeviceCaps(hDC, 12);
            int planes = OS.GetDeviceCaps(hDC, 14);
            OS.ReleaseDC(this.handle, hDC);
            int depth = bits * planes;
            switch (depth) {
                case 4: {
                    flags |= 4;
                    break;
                }
                case 8: {
                    flags |= 8;
                    break;
                }
                case 16: {
                    flags |= 0x10;
                    break;
                }
                case 24: {
                    flags |= 0x18;
                    break;
                }
                case 32: {
                    flags |= 0x20;
                    break;
                }
                default: {
                    flags |= 0;
                }
            }
            flags |= 1;
        }
        if ((this.style & 0x4000000) != 0) {
            flags |= 0x2000;
        }
        int width = height = OS.SendMessage(this.handle, 4380, 0, 0);
        int hStateList = OS.ImageList_Create(width, height, flags, count, count);
        int hDC = OS.GetDC(this.handle);
        int memDC = OS.CreateCompatibleDC(hDC);
        int hBitmap = OS.CreateCompatibleBitmap(hDC, width * count, height);
        int hOldBitmap = OS.SelectObject(memDC, hBitmap);
        RECT rect = new RECT();
        OS.SetRect(rect, 0, 0, width * count, height);
        int clrBackground = 0;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            Control control = this.findBackgroundControl();
            if (control == null) {
                control = this;
            }
            clrBackground = control.getBackgroundPixel();
        } else {
            clrBackground = 0x20000FF;
            if ((clrBackground & 0xFFFFFF) == OS.GetSysColor(OS.COLOR_WINDOW)) {
                clrBackground = 0x200FF00;
            }
        }
        int hBrush = OS.CreateSolidBrush(clrBackground);
        OS.FillRect(memDC, rect, hBrush);
        OS.DeleteObject(hBrush);
        int oldFont = OS.SelectObject(hDC, this.defaultFont());
        TEXTMETRIC tm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        OS.GetTextMetrics(hDC, tm);
        OS.SelectObject(hDC, oldFont);
        int itemWidth = Math.min(tm.tmHeight, width);
        int itemHeight = Math.min(tm.tmHeight, height);
        int left = (width - itemWidth) / 2;
        int top = (height - itemHeight) / 2 + 1;
        OS.SetRect(rect, left + width, top, left + width + itemWidth, top + itemHeight);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int hTheme = this.display.hButtonTheme();
            OS.DrawThemeBackground(hTheme, memDC, 3, 1, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 5, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 1, rect, null);
            rect.left += width;
            rect.right += width;
            OS.DrawThemeBackground(hTheme, memDC, 3, 9, rect, null);
        } else {
            OS.DrawFrameControl(memDC, rect, 4, 16384);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17408);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 16640);
            rect.left += width;
            rect.right += width;
            OS.DrawFrameControl(memDC, rect, 4, 17664);
        }
        OS.SelectObject(memDC, hOldBitmap);
        OS.DeleteDC(memDC);
        OS.ReleaseDC(this.handle, hDC);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            OS.ImageList_Add(hStateList, hBitmap, 0);
        } else {
            OS.ImageList_AddMasked(hStateList, hBitmap, clrBackground);
        }
        OS.DeleteObject(hBitmap);
        int hOldStateList = OS.SendMessage(this.handle, 4360, 2, 0);
        OS.SendMessage(this.handle, 4361, 2, hStateList);
        if (hOldStateList != 0) {
            OS.ImageList_Destroy(hOldStateList);
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        super.setFont(font);
        if ((this.style & 0x20) != 0) {
            this.setCheckboxImageList();
        }
    }

    void setForegroundPixel(int pixel) {
        if (this.explorerTheme && pixel == -1) {
            pixel = this.defaultForeground();
        }
        OS.SendMessage(this.handle, 4382, 0, pixel);
    }

    public void setHeaderVisible(boolean show) {
        this.checkWidget();
        if (this.hwndHeader == 0) {
            if (!show) {
                return;
            }
            this.createParent();
        }
        int bits = OS.GetWindowLong(this.hwndHeader, -16);
        if (show) {
            if ((bits & 8) == 0) {
                return;
            }
            OS.SetWindowLong(this.hwndHeader, -16, bits &= 0xFFFFFFF7);
            OS.ShowWindow(this.hwndHeader, 5);
        } else {
            if ((bits & 8) != 0) {
                return;
            }
            OS.SetWindowLong(this.hwndHeader, -16, bits |= 8);
            OS.ShowWindow(this.hwndHeader, 0);
        }
        this.setScrollWidth();
        this.updateHeaderToolTips();
        this.updateScrollBar();
    }

    public void setRedraw(boolean redraw) {
        this.checkWidget();
        int hItem = 0;
        if (redraw && this.drawCount == 1) {
            int count = OS.SendMessage(this.handle, 4357, 0, 0);
            if (count == 0) {
                TVINSERTSTRUCT tvInsert = new TVINSERTSTRUCT();
                tvInsert.hInsertAfter = -65535;
                hItem = OS.SendMessage(this.handle, OS.TVM_INSERTITEM, 0, tvInsert);
            }
            OS.DefWindowProc(this.handle, 11, 1, 0);
            this.updateScrollBar();
        }
        super.setRedraw(redraw);
        if (!redraw && this.drawCount == 1) {
            OS.DefWindowProc(this.handle, 11, 0, 0);
        }
        if (hItem != 0) {
            this.ignoreShrink = true;
            OS.SendMessage(this.handle, 4353, 0, hItem);
            this.ignoreShrink = false;
        }
    }

    void setScrollWidth() {
        if (this.hwndHeader == 0 || this.hwndParent == 0) {
            return;
        }
        int width = 0;
        HDITEM hdItem = new HDITEM();
        int i = 0;
        while (i < this.columnCount) {
            hdItem.mask = 1;
            OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, i, hdItem);
            width += hdItem.cxy;
            ++i;
        }
        this.setScrollWidth(Math.max(this.scrollWidth, width));
    }

    void setScrollWidth(int width) {
        if (this.hwndHeader == 0 || this.hwndParent == 0) {
            return;
        }
        int left = 0;
        RECT rect = new RECT();
        SCROLLINFO info = new SCROLLINFO();
        info.cbSize = SCROLLINFO.sizeof;
        info.fMask = 3;
        if (this.columnCount == 0 && width == 0) {
            OS.GetScrollInfo(this.hwndParent, 0, info);
            info.nPage = info.nMax + 1;
            OS.SetScrollInfo(this.hwndParent, 0, info, true);
            OS.GetScrollInfo(this.hwndParent, 1, info);
            info.nPage = info.nMax + 1;
            OS.SetScrollInfo(this.hwndParent, 1, info, true);
        } else if ((this.style & 0x100) != 0) {
            OS.GetClientRect(this.hwndParent, rect);
            OS.GetScrollInfo(this.hwndParent, 0, info);
            info.nMax = width;
            info.nPage = rect.right - rect.left + 1;
            OS.SetScrollInfo(this.hwndParent, 0, info, true);
            info.fMask = 4;
            OS.GetScrollInfo(this.hwndParent, 0, info);
            left = info.nPos;
        }
        if (this.horizontalBar != null) {
            this.horizontalBar.setIncrement(5);
            this.horizontalBar.setPageIncrement(info.nPage);
        }
        OS.GetClientRect(this.hwndParent, rect);
        int hHeap = OS.GetProcessHeap();
        HDLAYOUT playout = new HDLAYOUT();
        playout.prc = OS.HeapAlloc(hHeap, 8, RECT.sizeof);
        playout.pwpos = OS.HeapAlloc(hHeap, 8, WINDOWPOS.sizeof);
        OS.MoveMemory(playout.prc, rect, RECT.sizeof);
        OS.SendMessage(this.hwndHeader, 4613, 0, playout);
        WINDOWPOS pos = new WINDOWPOS();
        OS.MoveMemory(pos, playout.pwpos, WINDOWPOS.sizeof);
        if (playout.prc != 0) {
            OS.HeapFree(hHeap, 0, playout.prc);
        }
        if (playout.pwpos != 0) {
            OS.HeapFree(hHeap, 0, playout.pwpos);
        }
        this.SetWindowPos(this.hwndHeader, 0, pos.x - left, pos.y, pos.cx + left, pos.cy, 16);
        int bits = OS.GetWindowLong(this.handle, -20);
        int b = (bits & 0x200) != 0 ? OS.GetSystemMetrics(45) : 0;
        int w = pos.cx + (this.columnCount == 0 && width == 0 ? 0 : OS.GetSystemMetrics(2));
        int h = rect.bottom - rect.top - pos.cy;
        boolean oldIgnore = this.ignoreResize;
        this.ignoreResize = true;
        this.SetWindowPos(this.handle, 0, pos.x - left - b, pos.y + pos.cy - b, w + left + b * 2, h + b * 2, 20);
        this.ignoreResize = oldIgnore;
    }

    void setSelection(int hItem, TVITEM tvItem, TreeItem[] selection) {
        while (hItem != 0) {
            int index = 0;
            while (index < selection.length) {
                TreeItem item = selection[index];
                if (item != null && item.handle == hItem) break;
                ++index;
            }
            tvItem.hItem = hItem;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            if ((tvItem.state & 2) != 0) {
                if (index == selection.length) {
                    tvItem.state = 0;
                    OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                }
            } else if (index != selection.length) {
                tvItem.state = 2;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            }
            int hFirstItem = OS.SendMessage(this.handle, 4362, 4, hItem);
            this.setSelection(hFirstItem, tvItem, selection);
            hItem = OS.SendMessage(this.handle, 4362, 1, hItem);
        }
    }

    public void setSelection(TreeItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        this.setSelection(new TreeItem[]{item});
    }

    public void setSelection(TreeItem[] items) {
        int length;
        this.checkWidget();
        if (items == null) {
            this.error(4);
        }
        if ((length = items.length) == 0 || (this.style & 4) != 0 && length > 1) {
            this.deselectAll();
            return;
        }
        TreeItem item = items[0];
        if (item != null) {
            if (item.isDisposed()) {
                this.error(5);
            }
            int hOldItem = OS.SendMessage(this.handle, 4362, 9, 0);
            this.hAnchor = item.handle;
            int hNewItem = this.hAnchor;
            boolean fixScroll = this.checkScroll(hNewItem);
            if (fixScroll) {
                OS.SendMessage(this.handle, 11, 1, 0);
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
            this.ignoreSelect = true;
            OS.SendMessage(this.handle, 4363, 9, hNewItem);
            this.ignoreSelect = false;
            if (OS.SendMessage(this.handle, 4368, 0, 0) == 0) {
                OS.SendMessage(this.handle, 4363, 5, hNewItem);
                int hParent = OS.SendMessage(this.handle, 4362, 3, hNewItem);
                if (hParent == 0) {
                    OS.SendMessage(this.handle, 276, 6, 0);
                }
            }
            if (fixScroll) {
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.SendMessage(this.handle, 11, 0, 0);
            }
            if (hOldItem == hNewItem) {
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 24;
                tvItem.state = 2;
                tvItem.stateMask = 2;
                tvItem.hItem = hNewItem;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                this.showItem(hNewItem);
            }
        }
        if ((this.style & 4) != 0) {
            return;
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 2;
        int oldProc = OS.GetWindowLongPtr(this.handle, -4);
        OS.SetWindowLongPtr(this.handle, -4, TreeProc);
        if ((this.style & 0x10000000) != 0) {
            int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
            this.setSelection(hItem, tvItem, items);
        } else {
            int i = 0;
            while (i < this.items.length) {
                item = this.items[i];
                if (item != null) {
                    int index = 0;
                    while (index < length) {
                        if (items[index] == item) break;
                        ++index;
                    }
                    tvItem.hItem = item.handle;
                    OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                    if ((tvItem.state & 2) != 0) {
                        if (index == length) {
                            tvItem.state = 0;
                            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        }
                    } else if (index != length) {
                        tvItem.state = 2;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                }
                ++i;
            }
        }
        OS.SetWindowLongPtr(this.handle, -4, oldProc);
    }

    public void setSortColumn(TreeColumn column) {
        this.checkWidget();
        if (column != null && column.isDisposed()) {
            this.error(5);
        }
        if (this.sortColumn != null && !this.sortColumn.isDisposed()) {
            this.sortColumn.setSortDirection(0);
        }
        this.sortColumn = column;
        if (this.sortColumn != null && this.sortDirection != 0) {
            this.sortColumn.setSortDirection(this.sortDirection);
        }
    }

    public void setSortDirection(int direction) {
        this.checkWidget();
        if ((direction & 0x480) == 0 && direction != 0) {
            return;
        }
        this.sortDirection = direction;
        if (this.sortColumn != null && !this.sortColumn.isDisposed()) {
            this.sortColumn.setSortDirection(direction);
        }
    }

    public void setTopItem(TreeItem item) {
        int hTopItem;
        int hItem;
        this.checkWidget();
        if (item == null) {
            SWT.error(4);
        }
        if (item.isDisposed()) {
            SWT.error(5);
        }
        if ((hItem = item.handle) == (hTopItem = OS.SendMessage(this.handle, 4362, 5, 0))) {
            return;
        }
        boolean fixScroll = this.checkScroll(hItem);
        boolean redraw = false;
        if (fixScroll) {
            OS.SendMessage(this.handle, 11, 1, 0);
            OS.DefWindowProc(this.handle, 11, 0, 0);
        } else {
            boolean bl = redraw = this.getDrawing() && OS.IsWindowVisible(this.handle);
            if (redraw) {
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
        }
        SCROLLINFO hInfo = null;
        int bits = OS.GetWindowLong(this.handle, -16);
        int hParent = OS.SendMessage(this.handle, 4362, 3, hItem);
        if (hParent != 0 && (bits & 0xA000) == 0) {
            hInfo = new SCROLLINFO();
            hInfo.cbSize = SCROLLINFO.sizeof;
            hInfo.fMask = 23;
            OS.GetScrollInfo(this.handle, 0, hInfo);
        }
        OS.SendMessage(this.handle, 4363, 5, hItem);
        if (hParent != 0) {
            if (hInfo != null) {
                int hThumb = OS.MAKELPARAM(4, hInfo.nPos);
                OS.SendMessage(this.handle, 276, hThumb, 0);
            }
        } else {
            OS.SendMessage(this.handle, 276, 6, 0);
        }
        if (fixScroll) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.SendMessage(this.handle, 11, 0, 0);
        } else if (redraw) {
            OS.DefWindowProc(this.handle, 11, 1, 0);
            OS.InvalidateRect(this.handle, null, true);
        }
        this.updateScrollBar();
    }

    void showItem(int hItem) {
        RECT itemRect;
        if (OS.SendMessage(this.handle, 4368, 0, 0) == 0) {
            boolean fixScroll = this.checkScroll(hItem);
            if (fixScroll) {
                OS.SendMessage(this.handle, 11, 1, 0);
                OS.DefWindowProc(this.handle, 11, 0, 0);
            }
            OS.SendMessage(this.handle, 4363, 5, hItem);
            OS.SendMessage(this.handle, 276, 6, 0);
            if (fixScroll) {
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.SendMessage(this.handle, 11, 0, 0);
            }
        } else {
            boolean scroll = true;
            RECT itemRect2 = new RECT();
            if (OS.TreeView_GetItemRect(this.handle, hItem, itemRect2, true)) {
                this.forceResize();
                RECT rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                POINT pt = new POINT();
                pt.x = itemRect2.left;
                pt.y = itemRect2.top;
                if (OS.PtInRect(rect, pt)) {
                    pt.y = itemRect2.bottom;
                    if (OS.PtInRect(rect, pt)) {
                        scroll = false;
                    }
                }
            }
            if (scroll) {
                boolean fixScroll = this.checkScroll(hItem);
                if (fixScroll) {
                    OS.SendMessage(this.handle, 11, 1, 0);
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                }
                OS.SendMessage(this.handle, 4372, 0, hItem);
                if (fixScroll) {
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                    OS.SendMessage(this.handle, 11, 0, 0);
                }
            }
        }
        if (this.hwndParent != 0 && OS.TreeView_GetItemRect(this.handle, hItem, itemRect = new RECT(), true)) {
            this.forceResize();
            RECT rect = new RECT();
            OS.GetClientRect(this.hwndParent, rect);
            OS.MapWindowPoints(this.hwndParent, this.handle, rect, 2);
            POINT pt = new POINT();
            pt.x = itemRect.left;
            pt.y = itemRect.top;
            if (!OS.PtInRect(rect, pt)) {
                pt.y = itemRect.bottom;
                if (!OS.PtInRect(rect, pt)) {
                    SCROLLINFO info = new SCROLLINFO();
                    info.cbSize = SCROLLINFO.sizeof;
                    info.fMask = 4;
                    info.nPos = Math.max(0, pt.x - 1);
                    OS.SetScrollInfo(this.hwndParent, 0, info, true);
                    this.setScrollWidth();
                }
            }
        }
        this.updateScrollBar();
    }

    public void showColumn(TreeColumn column) {
        this.checkWidget();
        if (column == null) {
            this.error(4);
        }
        if (column.isDisposed()) {
            this.error(5);
        }
        if (column.parent != this) {
            return;
        }
        int index = this.indexOf(column);
        if (index == -1) {
            return;
        }
        if (index >= 0 && index < this.columnCount) {
            boolean scroll;
            this.forceResize();
            RECT rect = new RECT();
            OS.GetClientRect(this.hwndParent, rect);
            OS.MapWindowPoints(this.hwndParent, this.handle, rect, 2);
            RECT headerRect = new RECT();
            OS.SendMessage(this.hwndHeader, 4615, index, headerRect);
            boolean bl = scroll = headerRect.left < rect.left;
            if (!scroll) {
                int width = Math.min(rect.right - rect.left, headerRect.right - headerRect.left);
                boolean bl2 = scroll = headerRect.left + width > rect.right;
            }
            if (scroll) {
                SCROLLINFO info = new SCROLLINFO();
                info.cbSize = SCROLLINFO.sizeof;
                info.fMask = 4;
                info.nPos = Math.max(0, headerRect.left - 1);
                OS.SetScrollInfo(this.hwndParent, 0, info, true);
                this.setScrollWidth();
            }
        }
    }

    public void showItem(TreeItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        this.showItem(item.handle);
    }

    public void showSelection() {
        this.checkWidget();
        int hItem = 0;
        if ((this.style & 4) != 0) {
            hItem = OS.SendMessage(this.handle, 4362, 9, 0);
            if (hItem == 0) {
                return;
            }
            int state = 0;
            if (OS.IsWinCE) {
                TVITEM tvItem = new TVITEM();
                tvItem.hItem = hItem;
                tvItem.mask = 8;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                state = tvItem.state;
            } else {
                state = OS.SendMessage(this.handle, 4391, hItem, 2);
            }
            if ((state & 2) == 0) {
                return;
            }
        } else {
            int oldProc = OS.GetWindowLongPtr(this.handle, -4);
            OS.SetWindowLongPtr(this.handle, -4, TreeProc);
            TVITEM tvItem = null;
            if (OS.IsWinCE) {
                tvItem = new TVITEM();
                tvItem.mask = 8;
            }
            if ((this.style & 0x10000000) != 0) {
                int hRoot = OS.SendMessage(this.handle, 4362, 0, 0);
                hItem = this.getNextSelection(hRoot, tvItem);
            } else {
                int index = 0;
                while (index < this.items.length) {
                    TreeItem item = this.items[index];
                    if (item != null) {
                        int state = 0;
                        if (OS.IsWinCE) {
                            tvItem.hItem = item.handle;
                            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                            state = tvItem.state;
                        } else {
                            state = OS.SendMessage(this.handle, 4391, item.handle, 2);
                        }
                        if ((state & 2) != 0) {
                            hItem = item.handle;
                            break;
                        }
                    }
                    ++index;
                }
            }
            OS.SetWindowLongPtr(this.handle, -4, oldProc);
        }
        if (hItem != 0) {
            this.showItem(hItem);
        }
    }

    void sort() {
        this.checkWidget();
        if ((this.style & 0x10000000) != 0) {
            return;
        }
        this.sort(-65536, false);
    }

    void sort(int hParent, boolean all) {
        int itemCount = OS.SendMessage(this.handle, 4357, 0, 0);
        if (itemCount == 0 || itemCount == 1) {
            return;
        }
        this.hLastIndexOf = 0;
        this.hFirstIndexOf = 0;
        itemCount = -1;
        if (this.sortDirection == 128 || this.sortDirection == 0) {
            OS.SendMessage(this.handle, 4371, all ? 1 : 0, hParent);
        } else {
            Callback compareCallback = new Callback(this, "CompareFunc", 3);
            int lpfnCompare = compareCallback.getAddress();
            TVSORTCB psort = new TVSORTCB();
            psort.hParent = hParent;
            psort.lpfnCompare = lpfnCompare;
            psort.lParam = this.sortColumn == null ? 0 : this.indexOf(this.sortColumn);
            OS.SendMessage(this.handle, 4373, all ? 1 : 0, psort);
            compareCallback.dispose();
        }
    }

    void subclass() {
        super.subclass();
        if (this.hwndHeader != 0) {
            OS.SetWindowLongPtr(this.hwndHeader, -4, this.display.windowProc);
        }
    }

    RECT toolTipInset(RECT rect) {
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            RECT insetRect = new RECT();
            OS.SetRect(insetRect, rect.left - 1, rect.top - 1, rect.right + 1, rect.bottom + 1);
            return insetRect;
        }
        return rect;
    }

    RECT toolTipRect(RECT rect) {
        RECT toolRect = new RECT();
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            OS.SetRect(toolRect, rect.left - 1, rect.top - 1, rect.right + 1, rect.bottom + 1);
        } else {
            OS.SetRect(toolRect, rect.left, rect.top, rect.right, rect.bottom);
            int dwStyle = OS.GetWindowLong(this.itemToolTipHandle, -16);
            int dwExStyle = OS.GetWindowLong(this.itemToolTipHandle, -20);
            OS.AdjustWindowRectEx(toolRect, dwStyle, false, dwExStyle);
        }
        return toolRect;
    }

    String toolTipText(NMTTDISPINFO hdr) {
        int hwndToolTip = OS.SendMessage(this.handle, 4377, 0, 0);
        if (hwndToolTip == hdr.hwndFrom && this.toolTipText != null) {
            return "";
        }
        if (this.headerToolTipHandle == hdr.hwndFrom) {
            int i = 0;
            while (i < this.columnCount) {
                TreeColumn column = this.columns[i];
                if (column.id == hdr.idFrom) {
                    return column.toolTipText;
                }
                ++i;
            }
            return super.toolTipText(hdr);
        }
        if (this.itemToolTipHandle == hdr.hwndFrom) {
            if (this.toolTipText != null) {
                return "";
            }
            int pos = OS.GetMessagePos();
            POINT pt = new POINT();
            OS.POINTSTOPOINT(pt, pos);
            OS.ScreenToClient(this.handle, pt);
            int[] index = new int[1];
            TreeItem[] item = new TreeItem[1];
            RECT[] cellRect = new RECT[1];
            RECT[] itemRect = new RECT[1];
            if (this.findCell(pt.x, pt.y, item, index, cellRect, itemRect)) {
                String text = null;
                if (index[0] == 0) {
                    text = item[0].text;
                } else {
                    String[] strings = item[0].strings;
                    if (strings != null) {
                        text = strings[index[0]];
                    }
                }
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && this.isCustomToolTip()) {
                    text = " ";
                }
                if (text != null) {
                    return text;
                }
            }
        }
        return super.toolTipText(hdr);
    }

    int topHandle() {
        return this.hwndParent != 0 ? this.hwndParent : this.handle;
    }

    void updateFullSelection() {
        if ((this.style & 0x10000) != 0) {
            int oldBits = OS.GetWindowLong(this.handle, -16);
            int newBits = oldBits;
            if ((newBits & 0x1000) != 0) {
                if (!(OS.IsWindowEnabled(this.handle) && this.findImageControl() == null || this.explorerTheme)) {
                    newBits &= 0xFFFFEFFF;
                }
            } else if (OS.IsWindowEnabled(this.handle) && this.findImageControl() == null && !this.hooks(40) && !this.hooks(42)) {
                newBits |= 0x1000;
            }
            if (newBits != oldBits) {
                OS.SetWindowLong(this.handle, -16, newBits);
                OS.InvalidateRect(this.handle, null, true);
            }
        }
    }

    void updateHeaderToolTips() {
        if (this.headerToolTipHandle == 0) {
            return;
        }
        RECT rect = new RECT();
        TOOLINFO lpti = new TOOLINFO();
        lpti.cbSize = TOOLINFO.sizeof;
        lpti.uFlags = 16;
        lpti.hwnd = this.hwndHeader;
        lpti.lpszText = -1;
        int i = 0;
        while (i < this.columnCount) {
            TreeColumn column = this.columns[i];
            if (OS.SendMessage(this.hwndHeader, 4615, i, rect) != 0) {
                ++this.display.nextToolTipId;
                lpti.uId = column.id = column.id;
                lpti.left = rect.left;
                lpti.top = rect.top;
                lpti.right = rect.right;
                lpti.bottom = rect.bottom;
                OS.SendMessage(this.headerToolTipHandle, OS.TTM_ADDTOOL, 0, lpti);
            }
            ++i;
        }
    }

    void updateImageList() {
        if (this.imageList == null) {
            return;
        }
        if (this.hwndHeader == 0) {
            return;
        }
        int i = 0;
        int index = OS.SendMessage(this.hwndHeader, 4623, 0, 0);
        while (i < this.items.length) {
            TreeItem item = this.items[i];
            if (item != null) {
                Image image = null;
                if (index == 0) {
                    image = item.image;
                } else {
                    Image[] images = item.images;
                    if (images != null) {
                        image = images[index];
                    }
                }
                if (image != null) break;
            }
            ++i;
        }
        int hImageList = i == this.items.length ? 0 : this.imageList.getHandle();
        int hOldImageList = OS.SendMessage(this.handle, 4360, 0, 0);
        if (hImageList != hOldImageList) {
            OS.SendMessage(this.handle, 4361, 0, hImageList);
        }
    }

    void updateImages() {
        if (this.sortColumn != null && !this.sortColumn.isDisposed() && OS.COMCTL32_MAJOR < 6) {
            switch (this.sortDirection) {
                case 128: 
                case 1024: {
                    this.sortColumn.setImage(this.display.getSortImage(this.sortDirection), true, true);
                }
            }
        }
    }

    void updateOrientation() {
        Image image;
        int i;
        int bits;
        super.updateOrientation();
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        OS.SetWindowPos(this.handle, 0, 0, 0, width - 1, height - 1, 6);
        OS.SetWindowPos(this.handle, 0, 0, 0, width, height, 6);
        if (this.hwndParent != 0) {
            bits = OS.GetWindowLong(this.hwndParent, -20);
            bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
            OS.SetWindowLong(this.hwndParent, -20, bits);
            rect = new RECT();
            OS.GetWindowRect(this.hwndParent, rect);
            width = rect.right - rect.left;
            height = rect.bottom - rect.top;
            OS.SetWindowPos(this.hwndParent, 0, 0, 0, width - 1, height - 1, 6);
            OS.SetWindowPos(this.hwndParent, 0, 0, 0, width, height, 6);
        }
        if (this.hwndHeader != 0) {
            bits = OS.GetWindowLong(this.hwndHeader, -20);
            bits = (this.style & 0x4000000) != 0 ? (bits |= 0x400000) : (bits &= 0xFFBFFFFF);
            OS.SetWindowLong(this.hwndHeader, -20, bits);
            OS.InvalidateRect(this.hwndHeader, null, true);
        }
        if ((this.style & 0x20) != 0) {
            this.setCheckboxImageList();
        }
        if (this.imageList != null) {
            Point size = this.imageList.getImageSize();
            this.display.releaseImageList(this.imageList);
            this.imageList = this.display.getImageList(this.style & 0x4000000, size.x, size.y);
            i = 0;
            while (i < this.items.length) {
                int index;
                TreeItem item = this.items[i];
                if (item != null && (image = item.image) != null && (index = this.imageList.indexOf(image)) == -1) {
                    this.imageList.add(image);
                }
                ++i;
            }
            int hImageList = this.imageList.getHandle();
            OS.SendMessage(this.handle, 4361, 0, hImageList);
        }
        if (this.hwndHeader != 0 && this.headerImageList != null) {
            Point size = this.headerImageList.getImageSize();
            this.display.releaseImageList(this.headerImageList);
            this.headerImageList = this.display.getImageList(this.style & 0x4000000, size.x, size.y);
            if (this.columns != null) {
                i = 0;
                while (i < this.columns.length) {
                    TreeColumn column = this.columns[i];
                    if (column != null && (image = column.image) != null) {
                        HDITEM hdItem = new HDITEM();
                        hdItem.mask = 4;
                        OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, i, hdItem);
                        if ((hdItem.fmt & 0x800) != 0) {
                            int index = this.headerImageList.indexOf(image);
                            if (index == -1) {
                                index = this.headerImageList.add(image);
                            }
                            hdItem.mask = 32;
                            hdItem.iImage = index;
                            OS.SendMessage(this.hwndHeader, OS.HDM_SETITEM, i, hdItem);
                        }
                    }
                    ++i;
                }
            }
            int hImageListHeader = this.headerImageList.getHandle();
            OS.SendMessage(this.hwndHeader, 4616, 0, hImageListHeader);
        }
    }

    void updateScrollBar() {
        if (this.hwndParent != 0 && (this.columnCount != 0 || this.scrollWidth != 0)) {
            SCROLLINFO info = new SCROLLINFO();
            info.cbSize = SCROLLINFO.sizeof;
            info.fMask = 23;
            int itemCount = OS.SendMessage(this.handle, 4357, 0, 0);
            if (itemCount == 0) {
                OS.GetScrollInfo(this.hwndParent, 1, info);
                info.nPage = info.nMax + 1;
                OS.SetScrollInfo(this.hwndParent, 1, info, true);
            } else {
                OS.GetScrollInfo(this.handle, 1, info);
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && info.nPage == 0) {
                    SCROLLBARINFO psbi = new SCROLLBARINFO();
                    psbi.cbSize = SCROLLBARINFO.sizeof;
                    OS.GetScrollBarInfo(this.handle, -5, psbi);
                    if ((psbi.rgstate[0] & 0x8000) != 0) {
                        info.nPage = info.nMax + 1;
                    }
                }
                OS.SetScrollInfo(this.hwndParent, 1, info, true);
            }
        }
    }

    void unsubclass() {
        super.unsubclass();
        if (this.hwndHeader != 0) {
            OS.SetWindowLongPtr(this.hwndHeader, -4, HeaderProc);
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle() | 0x20 | 4 | 1 | 0x4000;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.IsAppThemed()) {
            bits |= 0x200;
            if ((this.style & 0x10000) != 0) {
                bits |= 0x1000;
            }
        } else {
            bits = (this.style & 0x10000) != 0 ? (bits |= 0x1000) : (bits |= 2);
        }
        if ((this.style & 0x300) == 0) {
            bits &= 0xFFCFFFFF;
            bits |= 0x2000;
        } else if ((this.style & 0x100) == 0) {
            bits &= 0xFFEFFFFF;
            bits |= 0x8000;
        }
        return bits | 0x10;
    }

    TCHAR windowClass() {
        return TreeClass;
    }

    int windowProc() {
        return TreeProc;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.hwndHeader != 0 && hwnd == this.hwndHeader) {
            switch (msg) {
                case 123: {
                    LRESULT result = this.wmContextMenu(hwnd, wParam, lParam);
                    if (result == null) break;
                    return result.value;
                }
                case 533: {
                    if (OS.COMCTL32_MAJOR >= 6 || lParam == 0 || lParam == this.hwndHeader) break;
                    OS.InvalidateRect(this.hwndHeader, null, true);
                    break;
                }
                case 675: {
                    if (OS.COMCTL32_MAJOR >= 6) {
                        this.updateHeaderToolTips();
                    }
                    this.updateHeaderToolTips();
                    break;
                }
                case 78: {
                    NMHDR hdr = new NMHDR();
                    OS.MoveMemory(hdr, lParam, NMHDR.sizeof);
                    switch (hdr.code) {
                        case -530: 
                        case -522: 
                        case -521: 
                        case -520: {
                            return OS.SendMessage(this.handle, msg, wParam, lParam);
                        }
                    }
                    break;
                }
                case 32: {
                    short hitTest;
                    if (wParam != hwnd || (hitTest = (short)OS.LOWORD(lParam)) != 1) break;
                    HDHITTESTINFO pinfo = new HDHITTESTINFO();
                    int pos = OS.GetMessagePos();
                    POINT pt = new POINT();
                    OS.POINTSTOPOINT(pt, pos);
                    OS.ScreenToClient(hwnd, pt);
                    pinfo.x = pt.x;
                    pinfo.y = pt.y;
                    int index = OS.SendMessage(this.hwndHeader, 4614, 0, pinfo);
                    if (index < 0 || index >= this.columnCount || this.columns[index].resizable || (pinfo.flags & 0xC) == 0) break;
                    OS.SetCursor(OS.LoadCursor(0, 32512));
                    return 1;
                }
            }
            return this.callWindowProc(hwnd, msg, wParam, lParam);
        }
        if (this.hwndParent != 0 && hwnd == this.hwndParent) {
            switch (msg) {
                case 3: {
                    this.sendEvent(10);
                    return 0;
                }
                case 5: {
                    this.setScrollWidth();
                    if (this.ignoreResize) {
                        return 0;
                    }
                    this.setResizeChildren(false);
                    int code = this.callWindowProc(hwnd, 5, wParam, lParam);
                    this.sendEvent(11);
                    if (this.isDisposed()) {
                        return 0;
                    }
                    if (this.layout != null) {
                        this.markLayout(false, false);
                        this.updateLayout(false, false);
                    }
                    this.setResizeChildren(true);
                    this.updateScrollBar();
                    return code;
                }
                case 133: {
                    LRESULT result = this.wmNCPaint(hwnd, wParam, lParam);
                    if (result == null) break;
                    return result.value;
                }
                case 791: {
                    LRESULT result = this.wmPrint(hwnd, wParam, lParam);
                    if (result == null) break;
                    return result.value;
                }
                case 21: 
                case 78: 
                case 273: {
                    return OS.SendMessage(this.handle, msg, wParam, lParam);
                }
                case 276: {
                    if (this.horizontalBar != null && (lParam == 0 || lParam == this.hwndParent)) {
                        this.wmScroll(this.horizontalBar, true, this.hwndParent, 276, wParam, lParam);
                    }
                    this.setScrollWidth();
                    break;
                }
                case 277: {
                    SCROLLINFO info = new SCROLLINFO();
                    info.cbSize = SCROLLINFO.sizeof;
                    info.fMask = 23;
                    OS.GetScrollInfo(this.hwndParent, 1, info);
                    if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.LOWORD(wParam) == 5) {
                        info.nPos = info.nTrackPos;
                    }
                    OS.SetScrollInfo(this.handle, 1, info, true);
                    int code = OS.SendMessage(this.handle, 277, wParam, lParam);
                    OS.GetScrollInfo(this.handle, 1, info);
                    OS.SetScrollInfo(this.hwndParent, 1, info, true);
                    return code;
                }
            }
            return this.callWindowProc(hwnd, msg, wParam, lParam);
        }
        if (msg == Display.DI_GETDRAGIMAGE && ((this.style & 2) != 0 || this.hooks(40) || this.hooks(42))) {
            int hItem = OS.SendMessage(this.handle, 4362, 5, 0);
            TreeItem[] items = new TreeItem[10];
            TVITEM tvItem = new TVITEM();
            tvItem.mask = 28;
            int count = this.getSelection(hItem, tvItem, items, 0, 10, false, true);
            if (count == 0) {
                return 0;
            }
            POINT mousePos = new POINT();
            OS.POINTSTOPOINT(mousePos, OS.GetMessagePos());
            OS.MapWindowPoints(0, this.handle, mousePos, 1);
            RECT clientRect = new RECT();
            OS.GetClientRect(this.handle, clientRect);
            RECT rect = items[0].getBounds(0, true, true, false);
            if ((this.style & 0x10000) != 0) {
                int width = 301;
                rect.left = Math.max(clientRect.left, mousePos.x - width / 2);
                if (clientRect.right > rect.left + width) {
                    rect.right = rect.left + width;
                } else {
                    rect.right = clientRect.right;
                    rect.left = Math.max(clientRect.left, rect.right - width);
                }
            } else {
                rect.left = Math.max(rect.left, clientRect.left);
                rect.right = Math.min(rect.right, clientRect.right);
            }
            int hRgn = OS.CreateRectRgn(rect.left, rect.top, rect.right, rect.bottom);
            int i = 1;
            while (i < count) {
                if (rect.bottom - rect.top > 301 || rect.bottom > clientRect.bottom) break;
                RECT itemRect = items[i].getBounds(0, true, true, false);
                if ((this.style & 0x10000) != 0) {
                    itemRect.left = rect.left;
                    itemRect.right = rect.right;
                } else {
                    itemRect.left = Math.max(itemRect.left, clientRect.left);
                    itemRect.right = Math.min(itemRect.right, clientRect.right);
                }
                int rectRgn = OS.CreateRectRgn(itemRect.left, itemRect.top, itemRect.right, itemRect.bottom);
                OS.CombineRgn(hRgn, hRgn, rectRgn, 2);
                OS.DeleteObject(rectRgn);
                rect.bottom = itemRect.bottom;
                ++i;
            }
            OS.GetRgnBox(hRgn, rect);
            int hdc = OS.GetDC(this.handle);
            int memHdc = OS.CreateCompatibleDC(hdc);
            BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
            bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
            bmiHeader.biWidth = rect.right - rect.left;
            bmiHeader.biHeight = -(rect.bottom - rect.top);
            bmiHeader.biPlanes = 1;
            bmiHeader.biBitCount = (short)32;
            bmiHeader.biCompression = 0;
            byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
            OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
            int[] pBits = new int[1];
            int memDib = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
            if (memDib == 0) {
                SWT.error(2);
            }
            int oldMemBitmap = OS.SelectObject(memHdc, memDib);
            int colorKey = 253;
            POINT pt = new POINT();
            OS.SetWindowOrgEx(memHdc, rect.left, rect.top, pt);
            OS.FillRect(memHdc, rect, this.findBrush(colorKey, 0));
            OS.OffsetRgn(hRgn, -rect.left, -rect.top);
            OS.SelectClipRgn(memHdc, hRgn);
            OS.PrintWindow(this.handle, memHdc, 0);
            OS.SetWindowOrgEx(memHdc, pt.x, pt.y, null);
            OS.SelectObject(memHdc, oldMemBitmap);
            OS.DeleteDC(memHdc);
            OS.ReleaseDC(0, hdc);
            OS.DeleteObject(hRgn);
            SHDRAGIMAGE shdi = new SHDRAGIMAGE();
            shdi.hbmpDragImage = memDib;
            shdi.crColorKey = colorKey;
            shdi.sizeDragImage.cx = bmiHeader.biWidth;
            shdi.sizeDragImage.cy = -bmiHeader.biHeight;
            shdi.ptOffset.x = mousePos.x - rect.left;
            shdi.ptOffset.y = mousePos.y - rect.top;
            if ((this.style & 0x8000000) != 0) {
                shdi.ptOffset.x = shdi.sizeDragImage.cx - shdi.ptOffset.x;
            }
            OS.MoveMemory(lParam, shdi, SHDRAGIMAGE.sizeof);
            return 1;
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_CHAR(int wParam, int lParam) {
        LRESULT result = super.WM_CHAR(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 32: {
                int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
                if (hItem != 0) {
                    this.hAnchor = hItem;
                    OS.SendMessage(this.handle, 4372, 0, hItem);
                    TVITEM tvItem = new TVITEM();
                    tvItem.mask = 28;
                    tvItem.hItem = hItem;
                    if ((this.style & 0x20) != 0) {
                        tvItem.stateMask = 61440;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        int state = tvItem.state >> 12;
                        state = (state & 1) != 0 ? ++state : --state;
                        tvItem.state = state << 12;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        if (!OS.IsWinCE) {
                            int id = hItem;
                            if (OS.COMCTL32_MAJOR >= 6) {
                                id = OS.SendMessage(this.handle, 4395, hItem, 0);
                            }
                            OS.NotifyWinEvent(32773, this.handle, -4, id);
                        }
                    }
                    tvItem.stateMask = 2;
                    OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                    tvItem.state = (this.style & 2) != 0 && OS.GetKeyState(17) < 0 ? ((tvItem.state & 2) != 0 ? (tvItem.state &= 0xFFFFFFFD) : (tvItem.state |= 2)) : (tvItem.state |= 2);
                    OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    TreeItem item = this._getItem(hItem, tvItem.lParam);
                    Event event = new Event();
                    event.item = item;
                    this.sendSelectionEvent(13, event, false);
                    if ((this.style & 0x20) != 0) {
                        event = new Event();
                        event.item = item;
                        event.detail = 32;
                        this.sendSelectionEvent(13, event, false);
                    }
                }
                return LRESULT.ZERO;
            }
            case 13: {
                Event event = new Event();
                int hItem = OS.SendMessage(this.handle, 4362, 9, 0);
                if (hItem != 0) {
                    event.item = this._getItem(hItem);
                }
                this.sendSelectionEvent(14, event, false);
                return LRESULT.ZERO;
            }
            case 27: {
                return LRESULT.ZERO;
            }
        }
        return result;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if ((this.style & 0x20000000) != 0) {
            return LRESULT.ONE;
        }
        if (this.findImageControl() != null) {
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_GETOBJECT(int wParam, int lParam) {
        if (((this.style & 0x20) != 0 || this.hwndParent != 0) && this.accessible == null) {
            this.accessible = this.new_Accessible(this);
        }
        return super.WM_GETOBJECT(wParam, lParam);
    }

    LRESULT WM_HSCROLL(int wParam, int lParam) {
        boolean fixScroll = false;
        if ((this.style & 0x20000000) != 0) {
            boolean bl = fixScroll = (this.style & 0x10000000) != 0 || this.hooks(40) || this.hooks(42);
        }
        if (fixScroll) {
            this.style &= 0xDFFFFFFF;
            if (this.explorerTheme) {
                OS.SendMessage(this.handle, 4396, 4, 0);
            }
        }
        LRESULT result = super.WM_HSCROLL(wParam, lParam);
        if (fixScroll) {
            this.style |= 0x20000000;
            if (this.explorerTheme) {
                OS.SendMessage(this.handle, 4396, 4, 4);
            }
        }
        if (result != null) {
            return result;
        }
        return result;
    }

    LRESULT WM_KEYDOWN(int wParam, int lParam) {
        LRESULT result = super.WM_KEYDOWN(wParam, lParam);
        if (result != null) {
            return result;
        }
        switch (wParam) {
            case 37: 
            case 39: {
                boolean isRTL;
                boolean bl = isRTL = (this.style & 0x4000000) != 0;
                if (isRTL == this.createdAsRTL) break;
                int code = this.callWindowProc(this.handle, 256, wParam == 39 ? 37 : 39, lParam);
                return new LRESULT(code);
            }
            case 32: {
                return LRESULT.ZERO;
            }
            case 107: {
                if (OS.GetKeyState(17) >= 0 || this.hwndHeader == 0) break;
                TreeColumn[] newColumns = new TreeColumn[this.columnCount];
                System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
                int i = 0;
                while (i < this.columnCount) {
                    TreeColumn column = newColumns[i];
                    if (!column.isDisposed() && column.getResizable()) {
                        column.pack();
                    }
                    ++i;
                }
                break;
            }
            case 33: 
            case 34: 
            case 35: 
            case 36: 
            case 38: 
            case 40: {
                int hItem;
                OS.SendMessage(this.handle, 295, 3, 0);
                if (this.itemToolTipHandle != 0) {
                    OS.ShowWindow(this.itemToolTipHandle, 0);
                }
                if ((this.style & 4) != 0) break;
                if (OS.GetKeyState(16) < 0 && (hItem = OS.SendMessage(this.handle, 4362, 9, 0)) != 0) {
                    if (this.hAnchor == 0) {
                        this.hAnchor = hItem;
                    }
                    this.ignoreDeselect = true;
                    this.ignoreSelect = true;
                    int code = this.callWindowProc(this.handle, 256, wParam, lParam);
                    this.ignoreDeselect = false;
                    this.ignoreSelect = false;
                    int hNewItem = OS.SendMessage(this.handle, 4362, 9, 0);
                    TVITEM tvItem = new TVITEM();
                    tvItem.mask = 24;
                    tvItem.stateMask = 2;
                    int hDeselectItem = hItem;
                    RECT rect1 = new RECT();
                    if (!OS.TreeView_GetItemRect(this.handle, this.hAnchor, rect1, false)) {
                        this.hAnchor = hItem;
                        OS.TreeView_GetItemRect(this.handle, this.hAnchor, rect1, false);
                    }
                    RECT rect2 = new RECT();
                    OS.TreeView_GetItemRect(this.handle, hDeselectItem, rect2, false);
                    int flags = rect1.top < rect2.top ? 7 : 6;
                    while (hDeselectItem != this.hAnchor) {
                        tvItem.hItem = hDeselectItem;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        hDeselectItem = OS.SendMessage(this.handle, 4362, flags, hDeselectItem);
                    }
                    int hSelectItem = this.hAnchor;
                    OS.TreeView_GetItemRect(this.handle, hNewItem, rect1, false);
                    OS.TreeView_GetItemRect(this.handle, hSelectItem, rect2, false);
                    tvItem.state = 2;
                    flags = rect1.top < rect2.top ? 7 : 6;
                    while (hSelectItem != hNewItem) {
                        tvItem.hItem = hSelectItem;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        hSelectItem = OS.SendMessage(this.handle, 4362, flags, hSelectItem);
                    }
                    tvItem.hItem = hNewItem;
                    OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    tvItem.mask = 20;
                    tvItem.hItem = hNewItem;
                    OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                    Event event = new Event();
                    event.item = this._getItem(hNewItem, tvItem.lParam);
                    this.sendSelectionEvent(13, event, false);
                    return new LRESULT(code);
                }
                if (OS.GetKeyState(17) < 0 && (hItem = OS.SendMessage(this.handle, 4362, 9, 0)) != 0) {
                    TVITEM tvItem = new TVITEM();
                    tvItem.mask = 24;
                    tvItem.stateMask = 2;
                    tvItem.hItem = hItem;
                    OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                    boolean oldSelected = (tvItem.state & 2) != 0;
                    int hNewItem = 0;
                    block6 : switch (wParam) {
                        case 38: {
                            hNewItem = OS.SendMessage(this.handle, 4362, 7, hItem);
                            break;
                        }
                        case 40: {
                            hNewItem = OS.SendMessage(this.handle, 4362, 6, hItem);
                            break;
                        }
                        case 36: {
                            hNewItem = OS.SendMessage(this.handle, 4362, 0, 0);
                            break;
                        }
                        case 33: {
                            hNewItem = OS.SendMessage(this.handle, 4362, 5, 0);
                            if (hNewItem != hItem) break;
                            OS.SendMessage(this.handle, 277, 2, 0);
                            hNewItem = OS.SendMessage(this.handle, 4362, 5, 0);
                            break;
                        }
                        case 34: {
                            int hVisible;
                            RECT rect = new RECT();
                            RECT clientRect = new RECT();
                            OS.GetClientRect(this.handle, clientRect);
                            hNewItem = OS.SendMessage(this.handle, 4362, 5, 0);
                            while ((hVisible = OS.SendMessage(this.handle, 4362, 6, hNewItem)) != 0 && OS.TreeView_GetItemRect(this.handle, hVisible, rect, false) && rect.bottom <= clientRect.bottom) {
                                hNewItem = hVisible;
                                if (hNewItem == hItem) {
                                    OS.SendMessage(this.handle, 277, 3, 0);
                                }
                                if (hNewItem != 0) continue;
                                break block6;
                            }
                            break;
                        }
                        case 35: {
                            hNewItem = OS.SendMessage(this.handle, 4362, 10, 0);
                        }
                    }
                    if (hNewItem != 0) {
                        boolean redraw;
                        OS.SendMessage(this.handle, 4372, 0, hNewItem);
                        tvItem.hItem = hNewItem;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        boolean newSelected = (tvItem.state & 2) != 0;
                        boolean bl = redraw = !newSelected && this.getDrawing() && OS.IsWindowVisible(this.handle);
                        if (redraw) {
                            OS.UpdateWindow(this.handle);
                            OS.DefWindowProc(this.handle, 11, 0, 0);
                        }
                        this.hSelect = hNewItem;
                        this.ignoreSelect = true;
                        OS.SendMessage(this.handle, 4363, 9, hNewItem);
                        this.ignoreSelect = false;
                        this.hSelect = 0;
                        if (oldSelected) {
                            tvItem.state = 2;
                            tvItem.hItem = hItem;
                            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        }
                        if (!newSelected) {
                            tvItem.state = 0;
                            tvItem.hItem = hNewItem;
                            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        }
                        if (redraw) {
                            boolean fItemRect;
                            RECT rect1 = new RECT();
                            RECT rect2 = new RECT();
                            boolean bl2 = fItemRect = (this.style & 0x10000) == 0;
                            if (this.hooks(40) || this.hooks(42)) {
                                fItemRect = false;
                            }
                            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                                fItemRect = false;
                            }
                            OS.TreeView_GetItemRect(this.handle, hItem, rect1, fItemRect);
                            OS.TreeView_GetItemRect(this.handle, hNewItem, rect2, fItemRect);
                            OS.DefWindowProc(this.handle, 11, 1, 0);
                            OS.InvalidateRect(this.handle, rect1, true);
                            OS.InvalidateRect(this.handle, rect2, true);
                            OS.UpdateWindow(this.handle);
                        }
                        return LRESULT.ZERO;
                    }
                }
                int code = this.callWindowProc(this.handle, 256, wParam, lParam);
                this.hAnchor = OS.SendMessage(this.handle, 4362, 9, 0);
                return new LRESULT(code);
            }
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        int bits;
        boolean redraw;
        boolean bl = redraw = (this.style & 2) != 0;
        if (!redraw && !OS.IsWinCE && OS.COMCTL32_MAJOR >= 6 && this.imageList != null && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0) {
            redraw = true;
        }
        if (redraw) {
            this.redrawSelection();
        }
        return super.WM_KILLFOCUS(wParam, lParam);
    }

    LRESULT WM_LBUTTONDBLCLK(int wParam, int lParam) {
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = OS.GET_X_LPARAM(lParam);
        lpht.y = OS.GET_Y_LPARAM(lParam);
        OS.SendMessage(this.handle, 4369, 0, lpht);
        if (lpht.hItem != 0 && (this.style & 0x20) != 0 && (lpht.flags & 0x40) != 0) {
            Display display = this.display;
            display.captureChanged = false;
            this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam);
            if (!this.sendMouseEvent(8, 1, this.handle, 515, wParam, lParam)) {
                if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                    OS.SetCapture(this.handle);
                }
                return LRESULT.ZERO;
            }
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            OS.SetFocus(this.handle);
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = lpht.hItem;
            tvItem.mask = 28;
            tvItem.stateMask = 61440;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            int state = tvItem.state >> 12;
            state = (state & 1) != 0 ? ++state : --state;
            tvItem.state = state << 12;
            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            if (!OS.IsWinCE) {
                int id = tvItem.hItem;
                if (OS.COMCTL32_MAJOR >= 6) {
                    id = OS.SendMessage(this.handle, 4395, tvItem.hItem, 0);
                }
                OS.NotifyWinEvent(32773, this.handle, -4, id);
            }
            Event event = new Event();
            event.item = this._getItem(tvItem.hItem, tvItem.lParam);
            event.detail = 32;
            this.sendSelectionEvent(13, event, false);
            return LRESULT.ZERO;
        }
        LRESULT result = super.WM_LBUTTONDBLCLK(wParam, lParam);
        if (result == LRESULT.ZERO) {
            return result;
        }
        if (lpht.hItem != 0) {
            int flags = 70;
            if ((this.style & 0x10000) != 0) {
                flags |= 0x28;
            } else if (this.hooks(41)) {
                lpht.flags &= 0xFFFFFFF9;
                if (this.hitTestSelection(lpht.hItem, lpht.x, lpht.y)) {
                    lpht.flags |= 6;
                }
            }
            if ((lpht.flags & flags) != 0) {
                Event event = new Event();
                event.item = this._getItem(lpht.hItem);
                this.sendSelectionEvent(14, event, false);
            }
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = OS.GET_X_LPARAM(lParam);
        lpht.y = OS.GET_Y_LPARAM(lParam);
        OS.SendMessage(this.handle, 4369, 0, lpht);
        if (lpht.hItem == 0 || (lpht.flags & 0x10) != 0) {
            RECT rect;
            int hItem;
            int bits;
            int hNewSelection;
            Display display = this.display;
            display.captureChanged = false;
            if (!this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam)) {
                if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                    OS.SetCapture(this.handle);
                }
                return LRESULT.ZERO;
            }
            boolean fixSelection = false;
            boolean deselected = false;
            int hOldSelection = OS.SendMessage(this.handle, 4362, 9, 0);
            if (lpht.hItem != 0 && (this.style & 2) != 0 && hOldSelection != 0) {
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 24;
                tvItem.hItem = lpht.hItem;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                if ((tvItem.state & 0x20) != 0) {
                    fixSelection = true;
                    tvItem.stateMask = 2;
                    int hNext = OS.SendMessage(this.handle, 4362, 6, lpht.hItem);
                    while (hNext != 0) {
                        if (hNext == this.hAnchor) {
                            this.hAnchor = 0;
                        }
                        tvItem.hItem = hNext;
                        OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                        if ((tvItem.state & 2) != 0) {
                            deselected = true;
                        }
                        tvItem.state = 0;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        int hItem2 = hNext = OS.SendMessage(this.handle, 4362, 6, hNext);
                        while (hItem2 != 0 && hItem2 != lpht.hItem) {
                            hItem2 = OS.SendMessage(this.handle, 4362, 3, hItem2);
                        }
                        if (hItem2 == 0) break;
                    }
                }
            }
            this.gestureCompleted = false;
            this.dragStarted = false;
            if (fixSelection) {
                this.lockSelection = true;
                this.ignoreSelect = true;
                this.ignoreDeselect = true;
            }
            int code = this.callWindowProc(this.handle, 513, wParam, lParam);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.GetFocus() != this.handle) {
                OS.SetFocus(this.handle);
            }
            if (fixSelection) {
                this.lockSelection = false;
                this.ignoreSelect = false;
                this.ignoreDeselect = false;
            }
            if (hOldSelection != (hNewSelection = OS.SendMessage(this.handle, 4362, 9, 0))) {
                this.hAnchor = hNewSelection;
            }
            if (this.dragStarted && !display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            if ((lpht.flags & 0x10) != 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0 && OS.SendMessage(this.handle, 4360, 0, 0) == 0 && (hItem = OS.SendMessage(this.handle, 4362, 9, 0)) != 0 && OS.TreeView_GetItemRect(this.handle, hItem, rect = new RECT(), false)) {
                OS.InvalidateRect(this.handle, rect, true);
            }
            if (deselected) {
                Event event = new Event();
                event.item = this._getItem(lpht.hItem);
                this.sendSelectionEvent(13, event, false);
            }
            return new LRESULT(code);
        }
        if ((this.style & 0x20) != 0 && (lpht.flags & 0x40) != 0) {
            Display display = this.display;
            display.captureChanged = false;
            if (!this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam)) {
                if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                    OS.SetCapture(this.handle);
                }
                return LRESULT.ZERO;
            }
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            OS.SetFocus(this.handle);
            TVITEM tvItem = new TVITEM();
            tvItem.hItem = lpht.hItem;
            tvItem.mask = 28;
            tvItem.stateMask = 61440;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            int state = tvItem.state >> 12;
            state = (state & 1) != 0 ? ++state : --state;
            tvItem.state = state << 12;
            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
            if (!OS.IsWinCE) {
                int id = tvItem.hItem;
                if (OS.COMCTL32_MAJOR >= 6) {
                    id = OS.SendMessage(this.handle, 4395, tvItem.hItem, 0);
                }
                OS.NotifyWinEvent(32773, this.handle, -4, id);
            }
            Event event = new Event();
            event.item = this._getItem(tvItem.hItem, tvItem.lParam);
            event.detail = 32;
            this.sendSelectionEvent(13, event, false);
            return LRESULT.ZERO;
        }
        boolean selected = false;
        boolean fakeSelection = false;
        if (lpht.hItem != 0) {
            if ((this.style & 0x10000) != 0) {
                int bits = OS.GetWindowLong(this.handle, -16);
                if ((bits & 0x1000) == 0) {
                    fakeSelection = true;
                }
            } else if (this.hooks(41) && (selected = this.hitTestSelection(lpht.hItem, lpht.x, lpht.y)) && (lpht.flags & 0x46) == 0) {
                fakeSelection = true;
            }
        }
        if (!selected && (this.style & 0x10000) == 0 && (lpht.flags & 0x46) == 0) {
            Display display = this.display;
            display.captureChanged = false;
            if (!this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam)) {
                if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                    OS.SetCapture(this.handle);
                }
                return LRESULT.ZERO;
            }
            int code = this.callWindowProc(this.handle, 513, wParam, lParam);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.GetFocus() != this.handle) {
                OS.SetFocus(this.handle);
            }
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return new LRESULT(code);
        }
        TVITEM tvItem = new TVITEM();
        tvItem.mask = 24;
        tvItem.stateMask = 2;
        boolean hittestSelected = false;
        if ((this.style & 2) != 0) {
            tvItem.hItem = lpht.hItem;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            hittestSelected = (tvItem.state & 2) != 0;
        }
        int hOldItem = OS.SendMessage(this.handle, 4362, 9, 0);
        if ((this.style & 2) != 0) {
            tvItem.hItem = hOldItem;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            if (hittestSelected || (wParam & 8) != 0) {
                int uiState = OS.SendMessage(this.handle, 297, 0, 0);
                if ((uiState & 1) != 0) {
                    OS.SendMessage(this.handle, 295, 3, 0);
                }
                OS.UpdateWindow(this.handle);
                OS.DefWindowProc(this.handle, 11, 0, 0);
            } else {
                this.deselectAll();
            }
        }
        Display display = this.display;
        display.captureChanged = false;
        if (!this.sendMouseEvent(3, 1, this.handle, 513, wParam, lParam)) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return LRESULT.ZERO;
        }
        this.hSelect = lpht.hItem;
        this.gestureCompleted = false;
        this.dragStarted = false;
        this.ignoreSelect = true;
        this.ignoreDeselect = true;
        int code = this.callWindowProc(this.handle, 513, wParam, lParam);
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.GetFocus() != this.handle) {
            OS.SetFocus(this.handle);
        }
        int hNewItem = OS.SendMessage(this.handle, 4362, 9, 0);
        if (fakeSelection) {
            if (hOldItem == 0 || hNewItem == hOldItem && lpht.hItem != hOldItem) {
                OS.SendMessage(this.handle, 4363, 9, lpht.hItem);
                hNewItem = OS.SendMessage(this.handle, 4362, 9, 0);
            }
            if (!this.dragStarted && (this.state & 0x8000) != 0 && this.hooks(29)) {
                this.dragStarted = this.dragDetect(this.handle, lpht.x, lpht.y, false, null, null);
            }
        }
        this.ignoreSelect = false;
        this.ignoreDeselect = false;
        this.hSelect = 0;
        if (this.dragStarted && !display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
            OS.SetCapture(this.handle);
        }
        if ((this.style & 4) != 0 && hOldItem == hNewItem) {
            tvItem.mask = 24;
            tvItem.state = 2;
            tvItem.stateMask = 2;
            tvItem.hItem = hNewItem;
            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
        }
        if ((this.style & 2) != 0) {
            if (hittestSelected || (wParam & 8) != 0) {
                boolean fItemRect;
                if (hOldItem == hNewItem && hOldItem == lpht.hItem) {
                    if ((wParam & 8) != 0) {
                        tvItem.state ^= 2;
                        if (this.dragStarted) {
                            tvItem.state = 2;
                        }
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                } else {
                    if ((tvItem.state & 2) != 0) {
                        tvItem.state = 2;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                    if ((wParam & 8) != 0 && !this.dragStarted && hittestSelected) {
                        tvItem.state = 0;
                        tvItem.hItem = lpht.hItem;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                }
                RECT rect1 = new RECT();
                RECT rect2 = new RECT();
                boolean bl = fItemRect = (this.style & 0x10000) == 0;
                if (this.hooks(40) || this.hooks(42)) {
                    fItemRect = false;
                }
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    fItemRect = false;
                }
                OS.TreeView_GetItemRect(this.handle, hOldItem, rect1, fItemRect);
                OS.TreeView_GetItemRect(this.handle, hNewItem, rect2, fItemRect);
                OS.DefWindowProc(this.handle, 11, 1, 0);
                OS.InvalidateRect(this.handle, rect1, true);
                OS.InvalidateRect(this.handle, rect2, true);
                OS.UpdateWindow(this.handle);
            }
            if (!((wParam & 8) != 0 || hittestSelected && this.dragStarted)) {
                tvItem.state = 0;
                int oldProc = OS.GetWindowLongPtr(this.handle, -4);
                OS.SetWindowLongPtr(this.handle, -4, TreeProc);
                if ((this.style & 0x10000000) != 0) {
                    int hItem = OS.SendMessage(this.handle, 4362, 0, 0);
                    this.deselect(hItem, tvItem, hNewItem);
                } else {
                    int i = 0;
                    while (i < this.items.length) {
                        TreeItem item = this.items[i];
                        if (item != null && item.handle != hNewItem) {
                            tvItem.hItem = item.handle;
                            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        }
                        ++i;
                    }
                }
                tvItem.hItem = hNewItem;
                tvItem.state = 2;
                OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                OS.SetWindowLongPtr(this.handle, -4, oldProc);
                if ((wParam & 4) != 0) {
                    RECT rect2;
                    RECT rect1 = new RECT();
                    if (this.hAnchor == 0) {
                        this.hAnchor = hNewItem;
                    }
                    if (OS.TreeView_GetItemRect(this.handle, this.hAnchor, rect1, false) && OS.TreeView_GetItemRect(this.handle, hNewItem, rect2 = new RECT(), false)) {
                        int flags = rect1.top < rect2.top ? 6 : 7;
                        tvItem.state = 2;
                        int hItem = tvItem.hItem = this.hAnchor;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                        while (hItem != hNewItem) {
                            tvItem.hItem = hItem;
                            OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                            hItem = OS.SendMessage(this.handle, 4362, flags, hItem);
                        }
                    }
                }
            }
        }
        if ((wParam & 4) == 0) {
            this.hAnchor = hNewItem;
        }
        if (!this.gestureCompleted) {
            tvItem.hItem = hNewItem;
            tvItem.mask = 20;
            OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
            Event event = new Event();
            event.item = this._getItem(tvItem.hItem, tvItem.lParam);
            this.sendSelectionEvent(13, event, false);
        }
        this.gestureCompleted = false;
        if (this.dragStarted) {
            this.sendDragEvent(1, OS.GET_X_LPARAM(lParam), OS.GET_Y_LPARAM(lParam));
        } else {
            int bits = OS.GetWindowLong(this.handle, -16);
            if ((bits & 0x10) == 0) {
                this.sendMouseEvent(4, 1, this.handle, 514, wParam, lParam);
            }
        }
        this.dragStarted = false;
        return new LRESULT(code);
    }

    LRESULT WM_MOUSEMOVE(int wParam, int lParam) {
        Display display = this.display;
        LRESULT result = super.WM_MOUSEMOVE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.itemToolTipHandle != 0) {
            RECT[] itemRect;
            RECT[] cellRect;
            int[] index;
            TreeItem[] item;
            int y;
            int x;
            int mask = 19;
            if (display.xMouse) {
                mask |= 0x60;
            }
            if ((wParam & mask) == 0 && this.findCell(x = OS.GET_X_LPARAM(lParam), y = OS.GET_Y_LPARAM(lParam), item = new TreeItem[1], index = new int[1], cellRect = new RECT[1], itemRect = new RECT[1])) {
                if (OS.SendMessage(this.itemToolTipHandle, OS.TTM_GETCURRENTTOOL, 0, 0) == 0 && OS.IsWindowVisible(this.itemToolTipHandle)) {
                    OS.ShowWindow(this.itemToolTipHandle, 0);
                }
                TOOLINFO lpti = new TOOLINFO();
                lpti.cbSize = TOOLINFO.sizeof;
                lpti.hwnd = this.handle;
                lpti.uId = this.handle;
                lpti.uFlags = 272;
                lpti.left = cellRect[0].left;
                lpti.top = cellRect[0].top;
                lpti.right = cellRect[0].right;
                lpti.bottom = cellRect[0].bottom;
                OS.SendMessage(this.itemToolTipHandle, OS.TTM_NEWTOOLRECT, 0, lpti);
            }
        }
        return result;
    }

    LRESULT WM_MOUSEWHEEL(int wParam, int lParam) {
        LRESULT result = super.WM_MOUSEWHEEL(wParam, lParam);
        if (this.itemToolTipHandle != 0) {
            OS.ShowWindow(this.itemToolTipHandle, 0);
        }
        return result;
    }

    LRESULT WM_MOVE(int wParam, int lParam) {
        if (this.itemToolTipHandle != 0) {
            OS.ShowWindow(this.itemToolTipHandle, 0);
        }
        if (this.ignoreResize) {
            return null;
        }
        return super.WM_MOVE(wParam, lParam);
    }

    LRESULT WM_RBUTTONDOWN(int wParam, int lParam) {
        Display display = this.display;
        display.captureChanged = false;
        if (!this.sendMouseEvent(3, 3, this.handle, 516, wParam, lParam)) {
            if (!display.captureChanged && !this.isDisposed() && OS.GetCapture() != this.handle) {
                OS.SetCapture(this.handle);
            }
            return LRESULT.ZERO;
        }
        if (OS.GetFocus() != this.handle) {
            OS.SetFocus(this.handle);
        }
        TVHITTESTINFO lpht = new TVHITTESTINFO();
        lpht.x = OS.GET_X_LPARAM(lParam);
        lpht.y = OS.GET_Y_LPARAM(lParam);
        OS.SendMessage(this.handle, 4369, 0, lpht);
        if (lpht.hItem != 0) {
            boolean fakeSelection;
            boolean bl = fakeSelection = (this.style & 0x10000) != 0;
            if (!fakeSelection) {
                if (this.hooks(41)) {
                    fakeSelection = this.hitTestSelection(lpht.hItem, lpht.x, lpht.y);
                } else {
                    int flags = 6;
                    boolean bl2 = fakeSelection = (lpht.flags & flags) != 0;
                }
            }
            if (fakeSelection && (wParam & 0xC) == 0) {
                TVITEM tvItem = new TVITEM();
                tvItem.mask = 24;
                tvItem.stateMask = 2;
                tvItem.hItem = lpht.hItem;
                OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                if ((tvItem.state & 2) == 0) {
                    this.ignoreSelect = true;
                    OS.SendMessage(this.handle, 4363, 9, 0);
                    this.ignoreSelect = false;
                    OS.SendMessage(this.handle, 4363, 9, lpht.hItem);
                }
            }
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_PAINT(int wParam, int lParam) {
        if (this.shrink && !this.ignoreShrink) {
            int count = this.items.length - 1;
            while (count >= 0) {
                if (this.items[count] != null) break;
                --count;
            }
            if (this.items.length > 4 && this.items.length - ++count > 3) {
                int length = Math.max(4, (count + 3) / 4 * 4);
                TreeItem[] newItems = new TreeItem[length];
                System.arraycopy(this.items, 0, newItems, 0, count);
                this.items = newItems;
            }
            this.shrink = false;
        }
        if ((this.style & 0x20000000) != 0 || this.findImageControl() != null) {
            int exStyle;
            boolean doubleBuffer = true;
            if (this.explorerTheme && ((exStyle = OS.SendMessage(this.handle, 4397, 0, 0)) & 4) != 0) {
                doubleBuffer = false;
            }
            if (doubleBuffer) {
                boolean hooksPaint;
                GC gc = null;
                int paintDC = 0;
                PAINTSTRUCT ps = new PAINTSTRUCT();
                boolean bl = hooksPaint = this.hooks(9) || this.filters(9);
                if (hooksPaint) {
                    GCData data = new GCData();
                    data.ps = ps;
                    data.hwnd = this.handle;
                    gc = GC.win32_new(this, data);
                    paintDC = gc.handle;
                } else {
                    paintDC = OS.BeginPaint(this.handle, ps);
                }
                int width = ps.right - ps.left;
                int height = ps.bottom - ps.top;
                if (width != 0 && height != 0) {
                    int hDC = OS.CreateCompatibleDC(paintDC);
                    POINT lpPoint1 = new POINT();
                    POINT lpPoint2 = new POINT();
                    OS.SetWindowOrgEx(hDC, ps.left, ps.top, lpPoint1);
                    OS.SetBrushOrgEx(hDC, ps.left, ps.top, lpPoint2);
                    int hBitmap = OS.CreateCompatibleBitmap(paintDC, width, height);
                    int hOldBitmap = OS.SelectObject(hDC, hBitmap);
                    RECT rect = new RECT();
                    OS.SetRect(rect, ps.left, ps.top, ps.right, ps.bottom);
                    this.drawBackground(hDC, rect);
                    this.callWindowProc(this.handle, 15, hDC, 0);
                    OS.SetWindowOrgEx(hDC, lpPoint1.x, lpPoint1.y, null);
                    OS.SetBrushOrgEx(hDC, lpPoint2.x, lpPoint2.y, null);
                    OS.BitBlt(paintDC, ps.left, ps.top, width, height, hDC, 0, 0, 0xCC0020);
                    OS.SelectObject(hDC, hOldBitmap);
                    OS.DeleteObject(hBitmap);
                    OS.DeleteObject(hDC);
                    if (hooksPaint) {
                        Event event = new Event();
                        event.gc = gc;
                        event.x = ps.left;
                        event.y = ps.top;
                        event.width = ps.right - ps.left;
                        event.height = ps.bottom - ps.top;
                        this.sendEvent(9, event);
                        event.gc = null;
                    }
                }
                if (hooksPaint) {
                    gc.dispose();
                } else {
                    OS.EndPaint(this.handle, ps);
                }
                return LRESULT.ZERO;
            }
        }
        return super.WM_PAINT(wParam, lParam);
    }

    LRESULT WM_PRINTCLIENT(int wParam, int lParam) {
        LRESULT result = super.WM_PRINTCLIENT(wParam, lParam);
        if (result != null) {
            return result;
        }
        this.printClient = true;
        int code = this.callWindowProc(this.handle, 792, wParam, lParam);
        this.printClient = false;
        return new LRESULT(code);
    }

    LRESULT WM_SETCURSOR(int wParam, int lParam) {
        short hitTest;
        LRESULT result = super.WM_SETCURSOR(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 1) && wParam == this.handle && (hitTest = (short)OS.LOWORD(lParam)) == 1) {
            OS.SetCursor(OS.LoadCursor(0, 32512));
            return LRESULT.ONE;
        }
        return null;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        int bits;
        boolean redraw;
        boolean bl = redraw = (this.style & 2) != 0;
        if (!redraw && !OS.IsWinCE && OS.COMCTL32_MAJOR >= 6 && this.imageList != null && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0) {
            redraw = true;
        }
        if (redraw) {
            this.redrawSelection();
        }
        return super.WM_SETFOCUS(wParam, lParam);
    }

    LRESULT WM_SETFONT(int wParam, int lParam) {
        LRESULT result = super.WM_SETFONT(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.hwndHeader != 0) {
            OS.SendMessage(this.hwndHeader, 48, 0, lParam);
            OS.SendMessage(this.hwndHeader, 48, wParam, lParam);
        }
        if (this.itemToolTipHandle != 0) {
            OS.ShowWindow(this.itemToolTipHandle, 0);
            OS.SendMessage(this.itemToolTipHandle, 48, wParam, lParam);
        }
        if (this.headerToolTipHandle != 0) {
            OS.SendMessage(this.headerToolTipHandle, 48, wParam, lParam);
            this.updateHeaderToolTips();
        }
        return result;
    }

    LRESULT WM_SETREDRAW(int wParam, int lParam) {
        LRESULT result = super.WM_SETREDRAW(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.itemToolTipHandle != 0) {
            OS.ShowWindow(this.itemToolTipHandle, 0);
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            int code = OS.DefWindowProc(this.handle, 11, wParam, lParam);
            return code == 0 ? LRESULT.ZERO : new LRESULT(code);
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        int bits;
        if (this.itemToolTipHandle != 0) {
            OS.ShowWindow(this.itemToolTipHandle, 0);
        }
        if (((bits = OS.GetWindowLong(this.handle, -16)) & 0x8000) != 0 && !OS.IsWinCE) {
            OS.ShowScrollBar(this.handle, 0, false);
        }
        if (this.explorerTheme && (this.style & 0x10000) != 0) {
            OS.InvalidateRect(this.handle, null, false);
        }
        if (this.ignoreResize) {
            return null;
        }
        return super.WM_SIZE(wParam, lParam);
    }

    LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOLORCHANGE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.explorerTheme && this.foreground == -1) {
            this.setForegroundPixel(-1);
        }
        if ((this.style & 0x20) != 0) {
            this.setCheckboxImageList();
        }
        return result;
    }

    LRESULT WM_VSCROLL(int wParam, int lParam) {
        boolean fixScroll = false;
        if ((this.style & 0x20000000) != 0) {
            int code = OS.LOWORD(wParam);
            switch (code) {
                case 0: 
                case 1: 
                case 2: 
                case 3: 
                case 6: 
                case 7: {
                    boolean bl = fixScroll = (this.style & 0x10000000) != 0 || this.hooks(40) || this.hooks(42);
                }
            }
        }
        if (fixScroll) {
            this.style &= 0xDFFFFFFF;
            if (this.explorerTheme) {
                OS.SendMessage(this.handle, 4396, 4, 0);
            }
        }
        LRESULT result = super.WM_VSCROLL(wParam, lParam);
        if (fixScroll) {
            this.style |= 0x20000000;
            if (this.explorerTheme) {
                OS.SendMessage(this.handle, 4396, 4, 4);
            }
        }
        if (result != null) {
            return result;
        }
        return result;
    }

    LRESULT WM_TIMER(int wParam, int lParam) {
        LRESULT result = super.WM_TIMER(wParam, lParam);
        if (result != null) {
            return result;
        }
        int bits = OS.SendMessage(this.handle, 4397, 0, 0);
        if ((bits & 0x40) != 0) {
            if (!OS.IsWindowVisible(this.handle)) {
                this.lastTimerCount = this.lastTimerID == wParam ? ++this.lastTimerCount : 0;
                this.lastTimerID = wParam;
                if (this.lastTimerCount >= 8) {
                    OS.CallWindowProc(TreeProc, this.handle, 512, 0, 0);
                    this.lastTimerID = -1;
                    this.lastTimerCount = 0;
                }
            } else {
                this.lastTimerID = -1;
                this.lastTimerCount = 0;
            }
        }
        return result;
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        if (this.findImageControl() != null) {
            if (OS.COMCTL32_MAJOR < 6) {
                return super.wmColorChild(wParam, lParam);
            }
            return new LRESULT(OS.GetStockObject(5));
        }
        return null;
    }

    LRESULT wmNotify(NMHDR hdr, int wParam, int lParam) {
        LRESULT result;
        if (hdr.hwndFrom == this.itemToolTipHandle && (result = this.wmNotifyToolTip(hdr, wParam, lParam)) != null) {
            return result;
        }
        if (hdr.hwndFrom == this.hwndHeader && (result = this.wmNotifyHeader(hdr, wParam, lParam)) != null) {
            return result;
        }
        return super.wmNotify(hdr, wParam, lParam);
    }

    LRESULT wmNotifyChild(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -452: 
            case -403: {
                TreeItem item;
                NMTVDISPINFO lptvdi = new NMTVDISPINFO();
                OS.MoveMemory(lptvdi, lParam, NMTVDISPINFO.sizeof);
                if ((this.style & 0x10000000) != 0) {
                    boolean checkVisible = true;
                    if (!this.ignoreShrink && this.items != null && lptvdi.lParam != -1 && this.items[lptvdi.lParam] != null && this.items[lptvdi.lParam].cached) {
                        checkVisible = false;
                    }
                    if (checkVisible) {
                        RECT itemRect;
                        if (!this.getDrawing() || !OS.IsWindowVisible(this.handle) || !OS.TreeView_GetItemRect(this.handle, lptvdi.hItem, itemRect = new RECT(), false)) break;
                        RECT rect = new RECT();
                        OS.GetClientRect(this.handle, rect);
                        if (!OS.IntersectRect(rect, rect, itemRect)) break;
                        if (this.ignoreShrink) {
                            OS.InvalidateRect(this.handle, rect, true);
                            break;
                        }
                    }
                }
                if (this.items == null) break;
                int id = lptvdi.lParam;
                if ((this.style & 0x10000000) != 0 && id == -1) {
                    TVITEM tvItem = new TVITEM();
                    tvItem.mask = 20;
                    tvItem.hItem = lptvdi.hItem;
                    OS.SendMessage(this.handle, OS.TVM_GETITEM, 0, tvItem);
                    id = tvItem.lParam;
                }
                if ((item = this._getItem(lptvdi.hItem, id)) == null || item.isDisposed()) break;
                if (!item.cached) {
                    if ((this.style & 0x10000000) != 0 && !this.checkData(item, false)) break;
                    if (this.painted) {
                        item.cached = true;
                    }
                }
                int index = 0;
                if (this.hwndHeader != 0) {
                    index = OS.SendMessage(this.hwndHeader, 4623, 0, 0);
                }
                if ((lptvdi.mask & 1) != 0) {
                    String string = null;
                    if (index == 0) {
                        string = item.text;
                    } else {
                        String[] strings = item.strings;
                        if (strings != null) {
                            string = strings[index];
                        }
                    }
                    if (string != null) {
                        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
                        int byteCount = Math.min(buffer.length(), lptvdi.cchTextMax - 1) * TCHAR.sizeof;
                        OS.MoveMemory(lptvdi.pszText, buffer, byteCount);
                        OS.MoveMemory(lptvdi.pszText + byteCount, new byte[TCHAR.sizeof], TCHAR.sizeof);
                        lptvdi.cchTextMax = Math.min(lptvdi.cchTextMax, string.length() + 1);
                    }
                }
                if ((lptvdi.mask & 0x22) != 0) {
                    Image image = null;
                    if (index == 0) {
                        image = item.image;
                    } else {
                        Image[] images = item.images;
                        if (images != null) {
                            image = images[index];
                        }
                    }
                    lptvdi.iSelectedImage = -2;
                    lptvdi.iImage = -2;
                    if (image != null) {
                        lptvdi.iImage = lptvdi.iSelectedImage = this.imageIndex(image, index);
                    }
                    if (this.explorerTheme && OS.IsWindowEnabled(this.handle) && this.findImageControl() != null) {
                        lptvdi.iSelectedImage = -2;
                        lptvdi.iImage = -2;
                    }
                }
                OS.MoveMemory(lParam, lptvdi, NMTVDISPINFO.sizeof);
                break;
            }
            case -12: {
                if (hdr.hwndFrom == this.hwndHeader) break;
                if (this.hooks(41) && this.hwndHeader == 0) {
                    this.createParent();
                }
                if (!this.customDraw && this.findImageControl() == null && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (this.sortColumn == null || this.sortDirection == 0)) break;
                NMTVCUSTOMDRAW nmcd = new NMTVCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMTVCUSTOMDRAW.sizeof);
                switch (nmcd.dwDrawStage) {
                    case 1: {
                        return this.CDDS_PREPAINT(nmcd, wParam, lParam);
                    }
                    case 65537: {
                        return this.CDDS_ITEMPREPAINT(nmcd, wParam, lParam);
                    }
                    case 65538: {
                        return this.CDDS_ITEMPOSTPAINT(nmcd, wParam, lParam);
                    }
                    case 2: {
                        return this.CDDS_POSTPAINT(nmcd, wParam, lParam);
                    }
                }
                break;
            }
            case -3: {
                if (this.hooks(41)) {
                    return LRESULT.ONE;
                }
                if (!this.hooks(14)) break;
                POINT pt = new POINT();
                int pos = OS.GetMessagePos();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                TVHITTESTINFO lpht = new TVHITTESTINFO();
                lpht.x = pt.x;
                lpht.y = pt.y;
                OS.SendMessage(this.handle, 4369, 0, lpht);
                if (lpht.hItem == 0 || (lpht.flags & 0x46) == 0) break;
                return LRESULT.ONE;
            }
            case -417: 
            case -416: {
                if (OS.IsWinCE || OS.WIN32_VERSION < OS.VERSION(6, 0) || (this.style & 2) == 0 || this.hSelect == 0) break;
                NMTVITEMCHANGE pnm = new NMTVITEMCHANGE();
                OS.MoveMemory(pnm, lParam, NMTVITEMCHANGE.sizeof);
                if (this.hSelect == pnm.hItem) break;
                return LRESULT.ONE;
            }
            case -450: 
            case -401: {
                if ((this.style & 2) != 0 && this.lockSelection) {
                    NMTREEVIEW treeView = new NMTREEVIEW();
                    OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                    TVITEM tvItem = treeView.itemOld;
                    this.oldSelected = (tvItem.state & 2) != 0;
                    tvItem = treeView.itemNew;
                    boolean bl = this.newSelected = (tvItem.state & 2) != 0;
                }
                if (this.ignoreSelect || this.ignoreDeselect) break;
                this.hAnchor = 0;
                if ((this.style & 2) == 0) break;
                this.deselectAll();
                break;
            }
            case -451: 
            case -402: {
                TVITEM tvItem;
                NMTREEVIEW treeView = null;
                if ((this.style & 2) != 0 && this.lockSelection) {
                    if (this.oldSelected) {
                        if (treeView == null) {
                            treeView = new NMTREEVIEW();
                            OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                        }
                        tvItem = treeView.itemOld;
                        tvItem.mask = 8;
                        tvItem.stateMask = 2;
                        tvItem.state = 2;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                    if (!this.newSelected && this.ignoreSelect) {
                        if (treeView == null) {
                            treeView = new NMTREEVIEW();
                            OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                        }
                        tvItem = treeView.itemNew;
                        tvItem.mask = 8;
                        tvItem.stateMask = 2;
                        tvItem.state = 0;
                        OS.SendMessage(this.handle, OS.TVM_SETITEM, 0, tvItem);
                    }
                }
                if (!this.ignoreSelect) {
                    if (treeView == null) {
                        treeView = new NMTREEVIEW();
                        OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                    }
                    tvItem = treeView.itemNew;
                    this.hAnchor = tvItem.hItem;
                    Event event = new Event();
                    event.item = this._getItem(tvItem.hItem, tvItem.lParam);
                    this.sendSelectionEvent(13, event, false);
                }
                this.updateScrollBar();
                break;
            }
            case -454: 
            case -405: {
                if (this.itemToolTipHandle != 0) {
                    OS.ShowWindow(this.itemToolTipHandle, 0);
                }
                boolean runExpanded = false;
                if ((this.style & 0x10000000) != 0) {
                    this.style &= 0xDFFFFFFF;
                }
                if (this.hooks(40) || this.hooks(42)) {
                    this.style &= 0xDFFFFFFF;
                }
                if (this.findImageControl() != null && this.getDrawing() && OS.IsWindowVisible(this.handle)) {
                    OS.DefWindowProc(this.handle, 11, 0, 0);
                }
                if (this.hInsert != 0) {
                    OS.SendMessage(this.handle, 4378, 0, 0);
                }
                if (!this.ignoreExpand) {
                    TreeItem item;
                    NMTREEVIEW treeView = new NMTREEVIEW();
                    OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                    TVITEM tvItem = treeView.itemNew;
                    if (this.items == null || (item = this._getItem(tvItem.hItem, tvItem.lParam)) == null) break;
                    Event event = new Event();
                    event.item = item;
                    switch (treeView.action) {
                        case 2: {
                            if ((tvItem.state & 0x20) != 0) break;
                            this.sendEvent(17, event);
                            if (!this.isDisposed()) break;
                            return LRESULT.ZERO;
                        }
                        case 1: {
                            this.sendEvent(18, event);
                            if (!this.isDisposed()) break;
                            return LRESULT.ZERO;
                        }
                    }
                    int hFirstItem = OS.SendMessage(this.handle, 4362, 4, tvItem.hItem);
                    boolean bl = runExpanded = hFirstItem == 0;
                }
                if (!runExpanded) break;
            }
            case -455: 
            case -406: {
                if ((this.style & 0x10000000) != 0) {
                    this.style |= 0x20000000;
                }
                if (this.hooks(40) || this.hooks(42)) {
                    this.style |= 0x20000000;
                }
                if (this.findImageControl() != null && this.getDrawing()) {
                    OS.DefWindowProc(this.handle, 11, 1, 0);
                    OS.InvalidateRect(this.handle, null, true);
                }
                if (this.hInsert != 0) {
                    OS.SendMessage(this.handle, 4378, this.insertAfter ? 1 : 0, this.hInsert);
                }
                if (!OS.IsWinCE && OS.COMCTL32_MAJOR >= 6 && this.imageList != null) {
                    RECT rect;
                    int bits;
                    NMTREEVIEW treeView = new NMTREEVIEW();
                    OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                    TVITEM tvItem = treeView.itemNew;
                    if (tvItem.hItem != 0 && ((bits = OS.GetWindowLong(this.handle, -16)) & 0x1000) == 0 && OS.TreeView_GetItemRect(this.handle, tvItem.hItem, rect = new RECT(), false)) {
                        OS.InvalidateRect(this.handle, rect, true);
                    }
                }
                this.updateScrollBar();
                break;
            }
            case -456: 
            case -407: {
                if (OS.GetKeyState(1) >= 0) break;
            }
            case -457: 
            case -408: {
                this.dragStarted = true;
                NMTREEVIEW treeView = new NMTREEVIEW();
                OS.MoveMemory(treeView, lParam, NMTREEVIEW.sizeof);
                TVITEM tvItem = treeView.itemNew;
                if (tvItem.hItem == 0 || (tvItem.state & 2) != 0) break;
                this.hSelect = tvItem.hItem;
                this.ignoreDeselect = true;
                this.ignoreSelect = true;
                OS.SendMessage(this.handle, 4363, 9, tvItem.hItem);
                this.ignoreDeselect = false;
                this.ignoreSelect = false;
                this.hSelect = 0;
                break;
            }
            case -16: {
                boolean hasMenu;
                if (!OS.IsPPC) break;
                boolean bl = hasMenu = this.menu != null && !this.menu.isDisposed();
                if (hasMenu || this.hooks(35)) break;
                return LRESULT.ONE;
            }
            case 1000: {
                boolean hasMenu;
                if (!OS.IsPPC) break;
                boolean bl = hasMenu = this.menu != null && !this.menu.isDisposed();
                if (!hasMenu && !this.hooks(35)) break;
                NMRGINFO nmrg = new NMRGINFO();
                OS.MoveMemory(nmrg, lParam, NMRGINFO.sizeof);
                this.showMenu(nmrg.x, nmrg.y);
                this.gestureCompleted = true;
                return LRESULT.ONE;
            }
        }
        return super.wmNotifyChild(hdr, wParam, lParam);
    }

    LRESULT wmNotifyHeader(NMHDR hdr, int wParam, int lParam) {
        switch (hdr.code) {
            case -326: 
            case -325: 
            case -306: 
            case -305: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                TreeColumn column = this.columns[phdn.iItem];
                if (column != null && !column.getResizable()) {
                    return LRESULT.ONE;
                }
                this.ignoreColumnMove = true;
                switch (hdr.code) {
                    case -325: 
                    case -305: {
                        if (column == null) break;
                        column.pack();
                    }
                }
                break;
            }
            case -16: {
                if (!this.ignoreColumnMove) {
                    int i = 0;
                    while (i < this.columnCount) {
                        TreeColumn column = this.columns[i];
                        column.updateToolTip(i);
                        ++i;
                    }
                    this.updateImageList();
                }
                this.ignoreColumnMove = false;
                break;
            }
            case -310: {
                TreeColumn column;
                if (this.ignoreColumnMove) {
                    return LRESULT.ONE;
                }
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.iItem == -1 || (column = this.columns[phdn.iItem]) == null || column.getMoveable()) break;
                this.ignoreColumnMove = true;
                return LRESULT.ONE;
            }
            case -311: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.iItem == -1 || phdn.pitem == 0) break;
                HDITEM pitem = new HDITEM();
                OS.MoveMemory(pitem, phdn.pitem, HDITEM.sizeof);
                if ((pitem.mask & 0x80) == 0 || pitem.iOrder == -1) break;
                int[] order = new int[this.columnCount];
                OS.SendMessage(this.hwndHeader, 4625, this.columnCount, order);
                int index = 0;
                while (index < order.length) {
                    if (order[index] == phdn.iItem) break;
                    ++index;
                }
                if (index == order.length) {
                    index = 0;
                }
                if (index == pitem.iOrder) break;
                int start = Math.min(index, pitem.iOrder);
                int end = Math.max(index, pitem.iOrder);
                RECT rect = new RECT();
                RECT headerRect = new RECT();
                OS.GetClientRect(this.handle, rect);
                OS.SendMessage(this.hwndHeader, 4615, order[start], headerRect);
                rect.left = Math.max(rect.left, headerRect.left);
                OS.SendMessage(this.hwndHeader, 4615, order[end], headerRect);
                rect.right = Math.min(rect.right, headerRect.right);
                OS.InvalidateRect(this.handle, rect, true);
                this.ignoreColumnMove = false;
                int i = start;
                while (i <= end) {
                    TreeColumn column = this.columns[order[i]];
                    if (!column.isDisposed()) {
                        column.postEvent(10);
                    }
                    ++i;
                }
                break;
            }
            case -320: 
            case -300: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.pitem == 0) break;
                HDITEM newItem = new HDITEM();
                OS.MoveMemory(newItem, phdn.pitem, HDITEM.sizeof);
                if ((newItem.mask & 1) == 0) break;
                RECT rect = new RECT();
                OS.GetClientRect(this.handle, rect);
                HDITEM oldItem = new HDITEM();
                oldItem.mask = 1;
                OS.SendMessage(this.hwndHeader, OS.HDM_GETITEM, phdn.iItem, oldItem);
                int deltaX = newItem.cxy - oldItem.cxy;
                RECT headerRect = new RECT();
                OS.SendMessage(this.hwndHeader, 4615, phdn.iItem, headerRect);
                int gridWidth = this.linesVisible ? 1 : 0;
                rect.left = headerRect.right - gridWidth;
                int newX = rect.left + deltaX;
                rect.right = Math.max(rect.right, rect.left + Math.abs(deltaX));
                if (this.explorerTheme || this.findImageControl() != null || this.hooks(41) || this.hooks(40) || this.hooks(42)) {
                    rect.left -= OS.GetSystemMetrics(83);
                    OS.InvalidateRect(this.handle, rect, true);
                    OS.OffsetRect(rect, deltaX, 0);
                    OS.InvalidateRect(this.handle, rect, true);
                } else {
                    int flags = 6;
                    OS.ScrollWindowEx(this.handle, deltaX, 0, rect, null, 0, null, flags);
                }
                if (OS.SendMessage(this.hwndHeader, 4623, phdn.iItem, 0) != 0) {
                    rect.left = headerRect.left;
                    rect.right = newX;
                    OS.InvalidateRect(this.handle, rect, true);
                }
                this.setScrollWidth();
                break;
            }
            case -321: 
            case -301: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                if (phdn.pitem == 0) break;
                HDITEM pitem = new HDITEM();
                OS.MoveMemory(pitem, phdn.pitem, HDITEM.sizeof);
                if ((pitem.mask & 1) != 0) {
                    TreeColumn column;
                    if (this.ignoreColumnMove) {
                        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                            int flags = 384;
                            OS.RedrawWindow(this.handle, null, 0, flags);
                        } else if ((this.style & 0x20000000) == 0) {
                            int oldStyle = this.style;
                            this.style |= 0x20000000;
                            OS.UpdateWindow(this.handle);
                            this.style = oldStyle;
                        }
                    }
                    if ((column = this.columns[phdn.iItem]) != null) {
                        column.updateToolTip(phdn.iItem);
                        column.sendEvent(11);
                        if (this.isDisposed()) {
                            return LRESULT.ZERO;
                        }
                        TreeColumn[] newColumns = new TreeColumn[this.columnCount];
                        System.arraycopy(this.columns, 0, newColumns, 0, this.columnCount);
                        int[] order = new int[this.columnCount];
                        OS.SendMessage(this.hwndHeader, 4625, this.columnCount, order);
                        boolean moved = false;
                        int i = 0;
                        while (i < this.columnCount) {
                            TreeColumn nextColumn = newColumns[order[i]];
                            if (moved && !nextColumn.isDisposed()) {
                                nextColumn.updateToolTip(order[i]);
                                nextColumn.sendEvent(10);
                            }
                            if (nextColumn == column) {
                                moved = true;
                            }
                            ++i;
                        }
                    }
                }
                this.setScrollWidth();
                break;
            }
            case -322: 
            case -302: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                TreeColumn column = this.columns[phdn.iItem];
                if (column == null) break;
                column.sendSelectionEvent(13);
                break;
            }
            case -323: 
            case -303: {
                NMHEADER phdn = new NMHEADER();
                OS.MoveMemory(phdn, lParam, NMHEADER.sizeof);
                TreeColumn column = this.columns[phdn.iItem];
                if (column == null) break;
                column.sendSelectionEvent(14);
            }
        }
        return null;
    }

    LRESULT wmNotifyToolTip(NMHDR hdr, int wParam, int lParam) {
        if (OS.IsWinCE) {
            return null;
        }
        switch (hdr.code) {
            case -12: {
                NMTTCUSTOMDRAW nmcd = new NMTTCUSTOMDRAW();
                OS.MoveMemory(nmcd, lParam, NMTTCUSTOMDRAW.sizeof);
                return this.wmNotifyToolTip(nmcd, lParam);
            }
            case -521: {
                LRESULT result = super.wmNotify(hdr, wParam, lParam);
                if (result != null) {
                    return result;
                }
                int pos = OS.GetMessagePos();
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                int[] index = new int[1];
                TreeItem[] item = new TreeItem[1];
                RECT[] cellRect = new RECT[1];
                RECT[] itemRect = new RECT[1];
                if (this.findCell(pt.x, pt.y, item, index, cellRect, itemRect)) {
                    RECT toolRect = this.toolTipRect(itemRect[0]);
                    OS.MapWindowPoints(this.handle, 0, toolRect, 2);
                    int width = toolRect.right - toolRect.left;
                    int height = toolRect.bottom - toolRect.top;
                    int flags = 21;
                    if (this.isCustomToolTip()) {
                        flags &= 0xFFFFFFFE;
                    }
                    this.SetWindowPos(this.itemToolTipHandle, 0, toolRect.left, toolRect.top, width, height, flags);
                    return LRESULT.ONE;
                }
                return result;
            }
        }
        return null;
    }

    LRESULT wmNotifyToolTip(NMTTCUSTOMDRAW nmcd, int lParam) {
        if (OS.IsWinCE) {
            return null;
        }
        switch (nmcd.dwDrawStage) {
            case 1: {
                if (!this.isCustomToolTip()) break;
                if (!OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
                    OS.SetTextColor(nmcd.hdc, OS.GetSysColor(OS.COLOR_INFOBK));
                }
                return new LRESULT(18);
            }
            case 2: {
                if (!OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
                    OS.SetTextColor(nmcd.hdc, OS.GetSysColor(OS.COLOR_INFOTEXT));
                }
                if (OS.SendMessage(this.itemToolTipHandle, OS.TTM_GETCURRENTTOOL, 0, 0) == 0) break;
                TOOLINFO lpti = new TOOLINFO();
                lpti.cbSize = TOOLINFO.sizeof;
                if (OS.SendMessage(this.itemToolTipHandle, OS.TTM_GETCURRENTTOOL, 0, lpti) == 0) break;
                int[] index = new int[1];
                TreeItem[] item = new TreeItem[1];
                RECT[] cellRect = new RECT[1];
                RECT[] itemRect = new RECT[1];
                int pos = OS.GetMessagePos();
                POINT pt = new POINT();
                OS.POINTSTOPOINT(pt, pos);
                OS.ScreenToClient(this.handle, pt);
                if (!this.findCell(pt.x, pt.y, item, index, cellRect, itemRect)) break;
                int hDC = OS.GetDC(this.handle);
                int hFont = item[0].fontHandle(index[0]);
                if (hFont == -1) {
                    hFont = OS.SendMessage(this.handle, 49, 0, 0);
                }
                int oldFont = OS.SelectObject(hDC, hFont);
                boolean drawForeground = true;
                cellRect[0] = item[0].getBounds(index[0], true, true, false, false, false, hDC);
                if (this.hooks(40)) {
                    Event event = this.sendEraseItemEvent(item[0], nmcd, index[0], cellRect[0]);
                    if (this.isDisposed() || item[0].isDisposed()) break;
                    drawForeground = event.doit ? (event.detail & 0x10) != 0 : false;
                }
                if (drawForeground) {
                    Image image;
                    int nSavedDC = OS.SaveDC(nmcd.hdc);
                    int gridWidth = this.getLinesVisible() ? 1 : 0;
                    RECT insetRect = this.toolTipInset(cellRect[0]);
                    OS.SetWindowOrgEx(nmcd.hdc, insetRect.left, insetRect.top, null);
                    GCData data = new GCData();
                    data.device = this.display;
                    data.foreground = OS.GetTextColor(nmcd.hdc);
                    data.background = OS.GetBkColor(nmcd.hdc);
                    data.font = Font.win32_new(this.display, hFont);
                    GC gc = GC.win32_new(nmcd.hdc, data);
                    int x = cellRect[0].left + 3;
                    if (index[0] != 0) {
                        x -= gridWidth;
                    }
                    if ((image = item[0].getImage(index[0])) != null || index[0] == 0) {
                        Point size = this.getImageSize();
                        RECT imageRect = item[0].getBounds(index[0], false, true, false, false, false, hDC);
                        if (this.imageList == null) {
                            size.x = imageRect.right - imageRect.left;
                        }
                        if (image != null) {
                            Rectangle rect = image.getBounds();
                            gc.drawImage(image, rect.x, rect.y, rect.width, rect.height, x, imageRect.top, size.x, size.y);
                            x += 3 + (index[0] == 0 ? 1 : 0);
                        }
                        x += size.x;
                    } else {
                        x += 3;
                    }
                    String string = item[0].getText(index[0]);
                    if (string != null) {
                        TreeColumn column;
                        int flags = 2084;
                        TreeColumn treeColumn = column = this.columns != null ? this.columns[index[0]] : null;
                        if (column != null) {
                            if ((column.style & 0x1000000) != 0) {
                                flags |= 1;
                            }
                            if ((column.style & 0x20000) != 0) {
                                flags |= 2;
                            }
                        }
                        TCHAR buffer = new TCHAR(this.getCodePage(), string, false);
                        RECT textRect = new RECT();
                        OS.SetRect(textRect, x, cellRect[0].top, cellRect[0].right, cellRect[0].bottom);
                        OS.DrawText(nmcd.hdc, buffer, buffer.length(), textRect, flags);
                    }
                    gc.dispose();
                    OS.RestoreDC(nmcd.hdc, nSavedDC);
                }
                if (this.hooks(42)) {
                    itemRect[0] = item[0].getBounds(index[0], true, true, false, false, false, hDC);
                    this.sendPaintItemEvent(item[0], nmcd, index[0], itemRect[0]);
                }
                OS.SelectObject(hDC, oldFont);
                OS.ReleaseDC(this.handle, hDC);
            }
        }
        return null;
    }
}

