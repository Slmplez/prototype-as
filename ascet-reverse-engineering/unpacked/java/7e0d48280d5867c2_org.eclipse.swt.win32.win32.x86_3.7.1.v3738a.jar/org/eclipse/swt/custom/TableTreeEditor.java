/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.ControlEditor;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;

public class TableTreeEditor
extends ControlEditor {
    TableTree tableTree;
    TableTreeItem item;
    int column = -1;
    ControlListener columnListener;
    TreeListener treeListener;

    public TableTreeEditor(TableTree tableTree) {
        super(tableTree.getTable());
        this.tableTree = tableTree;
        this.treeListener = new TreeListener(){
            final Runnable runnable = new Runnable(this){
                final /* synthetic */ 1 this$1;
                {
                    this.this$1 = var1_1;
                }

                public void run() {
                    if (1.access$0(this.this$1).editor == null || 1.access$0(this.this$1).editor.isDisposed()) {
                        return;
                    }
                    if (1.access$0(this.this$1).tableTree.isDisposed()) {
                        return;
                    }
                    1.access$0(this.this$1).layout();
                    1.access$0(this.this$1).editor.setVisible(true);
                }
            };

            public void treeCollapsed(TreeEvent e) {
                if (TableTreeEditor.this.editor == null || TableTreeEditor.this.editor.isDisposed()) {
                    return;
                }
                TableTreeEditor.this.editor.setVisible(false);
                e.display.asyncExec(this.runnable);
            }

            public void treeExpanded(TreeEvent e) {
                if (TableTreeEditor.this.editor == null || TableTreeEditor.this.editor.isDisposed()) {
                    return;
                }
                TableTreeEditor.this.editor.setVisible(false);
                e.display.asyncExec(this.runnable);
            }

            static /* synthetic */ TableTreeEditor access$0(1 var0) {
                return var0.TableTreeEditor.this;
            }
        };
        tableTree.addTreeListener(this.treeListener);
        this.columnListener = new ControlListener(){

            public void controlMoved(ControlEvent e) {
                TableTreeEditor.this.layout();
            }

            public void controlResized(ControlEvent e) {
                TableTreeEditor.this.layout();
            }
        };
        this.grabVertical = true;
    }

    Rectangle computeBounds() {
        if (this.item == null || this.column == -1 || this.item.isDisposed() || this.item.tableItem == null) {
            return new Rectangle(0, 0, 0, 0);
        }
        Rectangle cell = this.item.getBounds(this.column);
        Rectangle area = this.tableTree.getClientArea();
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
        if (this.tableTree != null && !this.tableTree.isDisposed()) {
            Table table = this.tableTree.getTable();
            if (table != null && !table.isDisposed() && this.column > -1 && this.column < table.getColumnCount()) {
                TableColumn tableColumn = table.getColumn(this.column);
                tableColumn.removeControlListener(this.columnListener);
            }
            if (this.treeListener != null) {
                this.tableTree.removeTreeListener(this.treeListener);
            }
        }
        this.treeListener = null;
        this.columnListener = null;
        this.tableTree = null;
        this.item = null;
        this.column = -1;
        super.dispose();
    }

    public int getColumn() {
        return this.column;
    }

    public TableTreeItem getItem() {
        return this.item;
    }

    public void setColumn(int column) {
        TableColumn tableColumn;
        Table table = this.tableTree.getTable();
        int columnCount = table.getColumnCount();
        if (columnCount == 0) {
            this.column = column == 0 ? 0 : -1;
            this.layout();
            return;
        }
        if (this.column > -1 && this.column < columnCount) {
            tableColumn = table.getColumn(this.column);
            tableColumn.removeControlListener(this.columnListener);
            this.column = -1;
        }
        if (column < 0 || column >= table.getColumnCount()) {
            return;
        }
        this.column = column;
        tableColumn = table.getColumn(this.column);
        tableColumn.addControlListener(this.columnListener);
        this.layout();
    }

    public void setItem(TableTreeItem item) {
        this.item = item;
        this.layout();
    }

    public void setEditor(Control editor, TableTreeItem item, int column) {
        this.setItem(item);
        this.setColumn(column);
        this.setEditor(editor);
    }

    public void layout() {
        if (this.tableTree == null || this.tableTree.isDisposed()) {
            return;
        }
        if (this.item == null || this.item.isDisposed()) {
            return;
        }
        Table table = this.tableTree.getTable();
        int columnCount = table.getColumnCount();
        if (columnCount == 0 && this.column != 0) {
            return;
        }
        if (columnCount > 0 && (this.column < 0 || this.column >= columnCount)) {
            return;
        }
        super.layout();
    }
}

