/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.ControlEditor;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;

public class TableEditor
extends ControlEditor {
    Table table;
    TableItem item;
    int column = -1;
    ControlListener columnListener;
    Runnable timer;
    static final int TIMEOUT = 1500;

    public TableEditor(Table table) {
        super(table);
        this.table = table;
        this.columnListener = new ControlListener(){

            public void controlMoved(ControlEvent e) {
                TableEditor.this.layout();
            }

            public void controlResized(ControlEvent e) {
                TableEditor.this.layout();
            }
        };
        this.timer = new Runnable(){

            public void run() {
                TableEditor.this.layout();
            }
        };
        this.grabVertical = true;
    }

    Rectangle computeBounds() {
        if (this.item == null || this.column == -1 || this.item.isDisposed()) {
            return new Rectangle(0, 0, 0, 0);
        }
        Rectangle cell = this.item.getBounds(this.column);
        Rectangle rect = this.item.getImageBounds(this.column);
        if (rect.width != 0) {
            int imageGap = Math.max(rect.x - cell.x, 0);
            cell.x = rect.x + rect.width;
            cell.width -= imageGap + rect.width;
        }
        Rectangle area = this.table.getClientArea();
        if (cell.x < area.x + area.width && cell.x + cell.width > area.x + area.width) {
            cell.width = area.x + area.width - cell.x;
        }
        Rectangle editorRect = new Rectangle(cell.x, cell.y, this.minimumWidth, this.minimumHeight);
        if (this.grabHorizontal) {
            editorRect.width = Math.max(cell.width, this.minimumWidth);
        }
        if (this.grabVertical) {
            editorRect.height = Math.max(cell.height, this.minimumHeight);
        }
        if (this.horizontalAlignment == 131072) {
            editorRect.x += cell.width - editorRect.width;
        } else if (this.horizontalAlignment != 16384) {
            editorRect.x += (cell.width - editorRect.width) / 2;
        }
        if (this.verticalAlignment == 1024) {
            editorRect.y += cell.height - editorRect.height;
        } else if (this.verticalAlignment != 128) {
            editorRect.y += (cell.height - editorRect.height) / 2;
        }
        return editorRect;
    }

    public void dispose() {
        if (this.table != null && !this.table.isDisposed() && this.column > -1 && this.column < this.table.getColumnCount()) {
            TableColumn tableColumn = this.table.getColumn(this.column);
            tableColumn.removeControlListener(this.columnListener);
        }
        this.columnListener = null;
        this.table = null;
        this.item = null;
        this.column = -1;
        this.timer = null;
        super.dispose();
    }

    public int getColumn() {
        return this.column;
    }

    public TableItem getItem() {
        return this.item;
    }

    void resize() {
        this.layout();
        if (this.table != null) {
            Display display = this.table.getDisplay();
            display.timerExec(-1, this.timer);
            display.timerExec(1500, this.timer);
        }
    }

    public void setColumn(int column) {
        TableColumn tableColumn;
        int columnCount = this.table.getColumnCount();
        if (columnCount == 0) {
            this.column = column == 0 ? 0 : -1;
            this.resize();
            return;
        }
        if (this.column > -1 && this.column < columnCount) {
            tableColumn = this.table.getColumn(this.column);
            tableColumn.removeControlListener(this.columnListener);
            this.column = -1;
        }
        if (column < 0 || column >= this.table.getColumnCount()) {
            return;
        }
        this.column = column;
        tableColumn = this.table.getColumn(this.column);
        tableColumn.addControlListener(this.columnListener);
        this.resize();
    }

    public void setItem(TableItem item) {
        this.item = item;
        this.resize();
    }

    public void setEditor(Control editor) {
        super.setEditor(editor);
        this.resize();
    }

    public void setEditor(Control editor, TableItem item, int column) {
        this.setItem(item);
        this.setColumn(column);
        this.setEditor(editor);
    }

    public void layout() {
        if (this.table == null || this.table.isDisposed()) {
            return;
        }
        if (this.item == null || this.item.isDisposed()) {
            return;
        }
        int columnCount = this.table.getColumnCount();
        if (columnCount == 0 && this.column != 0) {
            return;
        }
        if (columnCount > 0 && (this.column < 0 || this.column >= columnCount)) {
            return;
        }
        super.layout();
    }
}

