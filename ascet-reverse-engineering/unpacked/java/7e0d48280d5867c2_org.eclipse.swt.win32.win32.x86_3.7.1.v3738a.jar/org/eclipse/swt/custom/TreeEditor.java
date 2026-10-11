/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.ControlEditor;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;

public class TreeEditor
extends ControlEditor {
    Tree tree;
    TreeItem item;
    int column = 0;
    ControlListener columnListener;
    TreeListener treeListener;
    Runnable timer;
    static final int TIMEOUT = 1500;

    public TreeEditor(Tree tree) {
        super(tree);
        this.tree = tree;
        this.columnListener = new ControlListener(){

            public void controlMoved(ControlEvent e) {
                TreeEditor.this.layout();
            }

            public void controlResized(ControlEvent e) {
                TreeEditor.this.layout();
            }
        };
        this.timer = new Runnable(){

            public void run() {
                TreeEditor.this.layout();
            }
        };
        this.treeListener = new TreeListener(){
            final Runnable runnable = new Runnable(this){
                final /* synthetic */ 3 this$1;
                {
                    this.this$1 = var1_1;
                }

                public void run() {
                    if (3.access$0(this.this$1).editor == null || 3.access$0(this.this$1).editor.isDisposed()) {
                        return;
                    }
                    if (3.access$0(this.this$1).tree.isDisposed()) {
                        return;
                    }
                    3.access$0(this.this$1).layout();
                    3.access$0(this.this$1).editor.setVisible(true);
                }
            };

            public void treeCollapsed(TreeEvent e) {
                if (TreeEditor.this.editor == null || TreeEditor.this.editor.isDisposed()) {
                    return;
                }
                TreeEditor.this.editor.setVisible(false);
                e.display.asyncExec(this.runnable);
            }

            public void treeExpanded(TreeEvent e) {
                if (TreeEditor.this.editor == null || TreeEditor.this.editor.isDisposed()) {
                    return;
                }
                TreeEditor.this.editor.setVisible(false);
                e.display.asyncExec(this.runnable);
            }

            static /* synthetic */ TreeEditor access$0(3 var0) {
                return var0.TreeEditor.this;
            }
        };
        tree.addTreeListener(this.treeListener);
        this.grabVertical = true;
    }

    Rectangle computeBounds() {
        if (this.item == null || this.column == -1 || this.item.isDisposed()) {
            return new Rectangle(0, 0, 0, 0);
        }
        Rectangle cell = this.item.getBounds(this.column);
        Rectangle rect = this.item.getImageBounds(this.column);
        cell.x = rect.x + rect.width;
        cell.width -= rect.width;
        Rectangle area = this.tree.getClientArea();
        if (cell.x < area.x + area.width && cell.x + cell.width > area.x + area.width) {
            cell.width = area.x + area.width - cell.x;
        }
        Rectangle editorRect = new Rectangle(cell.x, cell.y, this.minimumWidth, this.minimumHeight);
        if (this.grabHorizontal) {
            if (this.tree.getColumnCount() == 0) {
                cell.width = area.x + area.width - cell.x;
            }
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
        editorRect.x = Math.max(cell.x, editorRect.x);
        if (this.verticalAlignment == 1024) {
            editorRect.y += cell.height - editorRect.height;
        } else if (this.verticalAlignment != 128) {
            editorRect.y += (cell.height - editorRect.height) / 2;
        }
        return editorRect;
    }

    public void dispose() {
        if (this.tree != null && !this.tree.isDisposed()) {
            if (this.column > -1 && this.column < this.tree.getColumnCount()) {
                TreeColumn treeColumn = this.tree.getColumn(this.column);
                treeColumn.removeControlListener(this.columnListener);
            }
            if (this.treeListener != null) {
                this.tree.removeTreeListener(this.treeListener);
            }
        }
        this.columnListener = null;
        this.treeListener = null;
        this.tree = null;
        this.item = null;
        this.column = 0;
        this.timer = null;
        super.dispose();
    }

    public int getColumn() {
        return this.column;
    }

    public TreeItem getItem() {
        return this.item;
    }

    void resize() {
        this.layout();
        if (this.tree != null) {
            Display display = this.tree.getDisplay();
            display.timerExec(-1, this.timer);
            display.timerExec(1500, this.timer);
        }
    }

    public void setColumn(int column) {
        TreeColumn treeColumn;
        int columnCount = this.tree.getColumnCount();
        if (columnCount == 0) {
            this.column = column == 0 ? 0 : -1;
            this.resize();
            return;
        }
        if (this.column > -1 && this.column < columnCount) {
            treeColumn = this.tree.getColumn(this.column);
            treeColumn.removeControlListener(this.columnListener);
            this.column = -1;
        }
        if (column < 0 || column >= this.tree.getColumnCount()) {
            return;
        }
        this.column = column;
        treeColumn = this.tree.getColumn(this.column);
        treeColumn.addControlListener(this.columnListener);
        this.resize();
    }

    public void setItem(TreeItem item) {
        this.item = item;
        this.resize();
    }

    public void setEditor(Control editor, TreeItem item, int column) {
        this.setItem(item);
        this.setColumn(column);
        this.setEditor(editor);
    }

    public void setEditor(Control editor) {
        super.setEditor(editor);
        this.resize();
    }

    public void setEditor(Control editor, TreeItem item) {
        this.setItem(item);
        this.setEditor(editor);
    }

    public void layout() {
        if (this.tree == null || this.tree.isDisposed()) {
            return;
        }
        if (this.item == null || this.item.isDisposed()) {
            return;
        }
        int columnCount = this.tree.getColumnCount();
        if (columnCount == 0 && this.column != 0) {
            return;
        }
        if (columnCount > 0 && (this.column < 0 || this.column >= columnCount)) {
            return;
        }
        super.layout();
    }
}

