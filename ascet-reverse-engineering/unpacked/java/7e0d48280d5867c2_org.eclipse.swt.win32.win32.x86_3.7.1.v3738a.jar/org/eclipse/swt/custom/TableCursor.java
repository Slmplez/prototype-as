/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;

public class TableCursor
extends Canvas {
    Table table;
    TableItem row = null;
    TableColumn column = null;
    Listener listener;
    Listener tableListener;
    Listener resizeListener;
    Listener disposeItemListener;
    Listener disposeColumnListener;
    Color background = null;
    Color foreground = null;
    static final int BACKGROUND = 27;
    static final int FOREGROUND = 26;

    public TableCursor(Table parent, int style) {
        super(parent, style);
        ScrollBar vBar;
        this.table = parent;
        this.setBackground(null);
        this.setForeground(null);
        this.listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        TableCursor.this.onDispose(event);
                        break;
                    }
                    case 15: 
                    case 16: {
                        TableCursor.this.redraw();
                        break;
                    }
                    case 1: {
                        TableCursor.this.keyDown(event);
                        break;
                    }
                    case 9: {
                        TableCursor.this.paint(event);
                        break;
                    }
                    case 31: {
                        event.doit = true;
                        switch (event.detail) {
                            case 4: 
                            case 32: 
                            case 64: {
                                event.doit = false;
                            }
                        }
                    }
                }
            }
        };
        int[] events = new int[]{12, 15, 16, 1, 9, 31};
        int i = 0;
        while (i < events.length) {
            this.addListener(events[i], this.listener);
            ++i;
        }
        this.tableListener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 3: {
                        TableCursor.this.tableMouseDown(event);
                        break;
                    }
                    case 15: {
                        TableCursor.this.tableFocusIn(event);
                    }
                }
            }
        };
        this.table.addListener(15, this.tableListener);
        this.table.addListener(3, this.tableListener);
        this.disposeItemListener = new Listener(){

            public void handleEvent(Event event) {
                TableCursor.this.unhookRowColumnListeners();
                TableCursor.this.row = null;
                TableCursor.this.column = null;
                TableCursor.this._resize();
            }
        };
        this.disposeColumnListener = new Listener(){

            public void handleEvent(Event event) {
                TableCursor.this.unhookRowColumnListeners();
                TableCursor.this.row = null;
                TableCursor.this.column = null;
                TableCursor.this._resize();
            }
        };
        this.resizeListener = new Listener(){

            public void handleEvent(Event event) {
                TableCursor.this._resize();
            }
        };
        ScrollBar hBar = this.table.getHorizontalBar();
        if (hBar != null) {
            hBar.addListener(13, this.resizeListener);
        }
        if ((vBar = this.table.getVerticalBar()) != null) {
            vBar.addListener(13, this.resizeListener);
        }
        this.getAccessible().addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getRole(AccessibleControlEvent e) {
                e.detail = 29;
            }
        });
        this.getAccessible().addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                if (TableCursor.this.row == null) {
                    return;
                }
                int columnIndex = TableCursor.this.column == null ? 0 : TableCursor.this.table.indexOf(TableCursor.this.column);
                e.result = TableCursor.this.row.getText(columnIndex);
            }
        });
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    void onDispose(Event event) {
        ScrollBar vBar;
        this.removeListener(12, this.listener);
        this.notifyListeners(12, event);
        event.type = 0;
        this.table.removeListener(15, this.tableListener);
        this.table.removeListener(3, this.tableListener);
        this.unhookRowColumnListeners();
        ScrollBar hBar = this.table.getHorizontalBar();
        if (hBar != null) {
            hBar.removeListener(13, this.resizeListener);
        }
        if ((vBar = this.table.getVerticalBar()) != null) {
            vBar.removeListener(13, this.resizeListener);
        }
    }

    void keyDown(Event event) {
        if (this.row == null) {
            return;
        }
        switch (event.character) {
            case '\r': {
                this.notifyListeners(14, new Event());
                return;
            }
        }
        int rowIndex = this.table.indexOf(this.row);
        int columnIndex = this.column == null ? 0 : this.table.indexOf(this.column);
        switch (event.keyCode) {
            case 0x1000001: {
                this.setRowColumn(Math.max(0, rowIndex - 1), columnIndex, true);
                break;
            }
            case 0x1000002: {
                this.setRowColumn(Math.min(rowIndex + 1, this.table.getItemCount() - 1), columnIndex, true);
                break;
            }
            case 0x1000003: 
            case 0x1000004: {
                int leadKey;
                int columnCount = this.table.getColumnCount();
                if (columnCount == 0) break;
                int[] order = this.table.getColumnOrder();
                int index = 0;
                while (index < order.length) {
                    if (order[index] == columnIndex) break;
                    ++index;
                }
                if (index == order.length) {
                    index = 0;
                }
                int n = leadKey = (this.getStyle() & 0x4000000) != 0 ? 0x1000004 : 0x1000003;
                if (event.keyCode == leadKey) {
                    this.setRowColumn(rowIndex, order[Math.max(0, index - 1)], true);
                    break;
                }
                this.setRowColumn(rowIndex, order[Math.min(columnCount - 1, index + 1)], true);
                break;
            }
            case 0x1000007: {
                this.setRowColumn(0, columnIndex, true);
                break;
            }
            case 0x1000008: {
                int i = this.table.getItemCount() - 1;
                this.setRowColumn(i, columnIndex, true);
                break;
            }
            case 0x1000005: {
                int index = this.table.getTopIndex();
                if (index == rowIndex) {
                    Rectangle rect = this.table.getClientArea();
                    TableItem item = this.table.getItem(index);
                    Rectangle itemRect = item.getBounds(0);
                    rect.height -= itemRect.y;
                    int height = this.table.getItemHeight();
                    int page = Math.max(1, rect.height / height);
                    index = Math.max(0, index - page + 1);
                }
                this.setRowColumn(index, columnIndex, true);
                break;
            }
            case 0x1000006: {
                int index = this.table.getTopIndex();
                Rectangle rect = this.table.getClientArea();
                TableItem item = this.table.getItem(index);
                Rectangle itemRect = item.getBounds(0);
                rect.height -= itemRect.y;
                int height = this.table.getItemHeight();
                int page = Math.max(1, rect.height / height);
                int end = this.table.getItemCount() - 1;
                index = Math.min(end, index + page - 1);
                if (index == rowIndex) {
                    index = Math.min(end, index + page - 1);
                }
                this.setRowColumn(index, columnIndex, true);
            }
        }
    }

    void paint(Event event) {
        String text;
        if (this.row == null) {
            return;
        }
        int columnIndex = this.column == null ? 0 : this.table.indexOf(this.column);
        GC gc = event.gc;
        Display display = this.getDisplay();
        gc.setBackground(this.getBackground());
        gc.setForeground(this.getForeground());
        gc.fillRectangle(event.x, event.y, event.width, event.height);
        int x = 0;
        Point size = this.getSize();
        Image image = this.row.getImage(columnIndex);
        if (image != null) {
            Rectangle imageSize = image.getBounds();
            int imageY = (size.y - imageSize.height) / 2;
            gc.drawImage(image, x, imageY);
            x += imageSize.width;
        }
        if ((text = this.row.getText(columnIndex)).length() > 0) {
            int alignmnent;
            Rectangle bounds = this.row.getBounds(columnIndex);
            Point extent = gc.stringExtent(text);
            String platform = SWT.getPlatform();
            if ("win32".equals(platform)) {
                if (this.table.getColumnCount() == 0 || columnIndex == 0) {
                    x += 2;
                } else {
                    alignmnent = this.column.getAlignment();
                    switch (alignmnent) {
                        case 16384: {
                            x += 6;
                            break;
                        }
                        case 131072: {
                            x = bounds.width - extent.x - 6;
                            break;
                        }
                        case 0x1000000: {
                            x += (bounds.width - x - extent.x) / 2;
                        }
                    }
                }
            } else if (this.table.getColumnCount() == 0) {
                x += 5;
            } else {
                alignmnent = this.column.getAlignment();
                switch (alignmnent) {
                    case 16384: {
                        x += 5;
                        break;
                    }
                    case 131072: {
                        x = bounds.width - extent.x - 2;
                        break;
                    }
                    case 0x1000000: {
                        x += (bounds.width - x - extent.x) / 2 + 2;
                    }
                }
            }
            int textY = (size.y - extent.y) / 2;
            gc.drawString(text, x, textY);
        }
        if (this.isFocusControl()) {
            gc.setBackground(display.getSystemColor(2));
            gc.setForeground(display.getSystemColor(1));
            gc.drawFocus(0, 0, size.x, size.y);
        }
    }

    void tableFocusIn(Event event) {
        if (this.isDisposed()) {
            return;
        }
        if (this.isVisible()) {
            if (this.row == null && this.column == null) {
                return;
            }
            this.setFocus();
        }
    }

    void tableMouseDown(Event event) {
        if (this.isDisposed() || !this.isVisible()) {
            return;
        }
        Point pt = new Point(event.x, event.y);
        int lineWidth = this.table.getLinesVisible() ? this.table.getGridLineWidth() : 0;
        TableItem item = this.table.getItem(pt);
        if ((this.table.getStyle() & 0x10000) != 0) {
            if (item == null) {
                return;
            }
        } else {
            int start = item != null ? this.table.indexOf(item) : this.table.getTopIndex();
            int end = this.table.getItemCount();
            Rectangle clientRect = this.table.getClientArea();
            int i = start;
            while (i < end) {
                TableItem nextItem = this.table.getItem(i);
                Rectangle rect = nextItem.getBounds(0);
                if (pt.y >= rect.y && pt.y < rect.y + rect.height + lineWidth) {
                    item = nextItem;
                    break;
                }
                if (rect.y > clientRect.y + clientRect.height) {
                    return;
                }
                ++i;
            }
            if (item == null) {
                return;
            }
        }
        TableColumn newColumn = null;
        int columnCount = this.table.getColumnCount();
        if (columnCount == 0) {
            if ((this.table.getStyle() & 0x10000) == 0) {
                Rectangle rect = item.getBounds(0);
                rect.width += lineWidth;
                rect.height += lineWidth;
                if (!rect.contains(pt)) {
                    return;
                }
            }
        } else {
            int i = 0;
            while (i < columnCount) {
                Rectangle rect = item.getBounds(i);
                rect.width += lineWidth;
                rect.height += lineWidth;
                if (rect.contains(pt)) {
                    newColumn = this.table.getColumn(i);
                    break;
                }
                ++i;
            }
            if (newColumn == null) {
                if ((this.table.getStyle() & 0x10000) == 0) {
                    return;
                }
                newColumn = this.table.getColumn(0);
            }
        }
        this.setRowColumn(item, newColumn, true);
        this.setFocus();
    }

    void setRowColumn(int row, int column, boolean notify) {
        TableItem item = row == -1 ? null : this.table.getItem(row);
        TableColumn col = column == -1 || this.table.getColumnCount() == 0 ? null : this.table.getColumn(column);
        this.setRowColumn(item, col, notify);
    }

    void setRowColumn(TableItem row, TableColumn column, boolean notify) {
        if (this.row == row && this.column == column) {
            return;
        }
        if (this.row != null && this.row != row) {
            this.row.removeListener(12, this.disposeItemListener);
            this.row = null;
        }
        if (this.column != null && this.column != column) {
            this.column.removeListener(12, this.disposeColumnListener);
            this.column.removeListener(10, this.resizeListener);
            this.column.removeListener(11, this.resizeListener);
            this.column = null;
        }
        if (row != null) {
            if (this.row != row) {
                this.row = row;
                row.addListener(12, this.disposeItemListener);
                this.table.showItem(row);
            }
            if (this.column != column && column != null) {
                this.column = column;
                column.addListener(12, this.disposeColumnListener);
                column.addListener(10, this.resizeListener);
                column.addListener(11, this.resizeListener);
                this.table.showColumn(column);
            }
            int columnIndex = column == null ? 0 : this.table.indexOf(column);
            this.setBounds(row.getBounds(columnIndex));
            this.redraw();
            if (notify) {
                this.notifyListeners(13, new Event());
            }
        }
        this.getAccessible().setFocus(-1);
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if (visible) {
            this._resize();
        }
        super.setVisible(visible);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(13, listener);
        this.removeListener(14, listener);
    }

    void _resize() {
        if (this.row == null) {
            this.setBounds(-200, -200, 0, 0);
        } else {
            int columnIndex = this.column == null ? 0 : this.table.indexOf(this.column);
            this.setBounds(this.row.getBounds(columnIndex));
        }
    }

    public int getColumn() {
        this.checkWidget();
        return this.column == null ? 0 : this.table.indexOf(this.column);
    }

    public Color getBackground() {
        this.checkWidget();
        if (this.background == null) {
            return this.getDisplay().getSystemColor(27);
        }
        return this.background;
    }

    public Color getForeground() {
        this.checkWidget();
        if (this.foreground == null) {
            return this.getDisplay().getSystemColor(26);
        }
        return this.foreground;
    }

    public TableItem getRow() {
        this.checkWidget();
        return this.row;
    }

    public void setBackground(Color color) {
        this.background = color;
        super.setBackground(this.getBackground());
        this.redraw();
    }

    public void setForeground(Color color) {
        this.foreground = color;
        super.setForeground(this.getForeground());
        this.redraw();
    }

    public void setSelection(int row, int column) {
        int maxColumnIndex;
        this.checkWidget();
        int columnCount = this.table.getColumnCount();
        int n = maxColumnIndex = columnCount == 0 ? 0 : columnCount - 1;
        if (row < 0 || row >= this.table.getItemCount() || column < 0 || column > maxColumnIndex) {
            SWT.error(5);
        }
        this.setRowColumn(row, column, false);
    }

    public void setSelection(TableItem row, int column) {
        int maxColumnIndex;
        this.checkWidget();
        int columnCount = this.table.getColumnCount();
        int n = maxColumnIndex = columnCount == 0 ? 0 : columnCount - 1;
        if (row == null || row.isDisposed() || column < 0 || column > maxColumnIndex) {
            SWT.error(5);
        }
        this.setRowColumn(this.table.indexOf(row), column, false);
    }

    void unhookRowColumnListeners() {
        if (this.column != null) {
            this.column.removeListener(12, this.disposeColumnListener);
            this.column.removeListener(10, this.resizeListener);
            this.column.removeListener(11, this.resizeListener);
            this.column = null;
        }
        if (this.row != null) {
            this.row.removeListener(12, this.disposeItemListener);
            this.row = null;
        }
    }
}

