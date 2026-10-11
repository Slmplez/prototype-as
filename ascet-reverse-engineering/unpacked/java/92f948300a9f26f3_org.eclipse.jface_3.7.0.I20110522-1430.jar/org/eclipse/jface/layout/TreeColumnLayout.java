/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.TreeEvent
 *  org.eclipse.swt.events.TreeListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Scrollable
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.AbstractColumnLayout;
import org.eclipse.jface.viewers.ColumnLayoutData;
import org.eclipse.jface.viewers.ColumnPixelData;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.Widget;

public class TreeColumnLayout
extends AbstractColumnLayout {
    private boolean addListener = true;
    private static final TreeLayoutListener listener = new TreeLayoutListener();

    protected void layout(Composite composite, boolean flushCache) {
        super.layout(composite, flushCache);
        if (this.addListener) {
            this.addListener = false;
            ((Tree)this.getControl(composite)).addTreeListener((TreeListener)listener);
        }
    }

    protected int getColumnCount(Scrollable tree) {
        return ((Tree)tree).getColumnCount();
    }

    protected void setColumnWidths(Scrollable tree, int[] widths) {
        TreeColumn[] columns = ((Tree)tree).getColumns();
        int i = 0;
        while (i < widths.length) {
            columns[i].setWidth(widths[i]);
            ++i;
        }
    }

    protected ColumnLayoutData getLayoutData(Scrollable tableTree, int columnIndex) {
        TreeColumn column = ((Tree)tableTree).getColumn(columnIndex);
        return (ColumnLayoutData)column.getData("org.eclipse.jface.LAYOUT_DATA");
    }

    protected void updateColumnData(Widget column) {
        TreeColumn tColumn = (TreeColumn)column;
        Tree t = tColumn.getParent();
        if (!IS_GTK || t.getColumn(t.getColumnCount() - 1) != tColumn) {
            tColumn.setData("org.eclipse.jface.LAYOUT_DATA", (Object)new ColumnPixelData(tColumn.getWidth()));
            this.layout(t.getParent(), true);
        }
    }

    private static class TreeLayoutListener
    implements TreeListener {
        private TreeLayoutListener() {
        }

        public void treeCollapsed(TreeEvent e) {
            this.update((Tree)e.widget);
        }

        public void treeExpanded(TreeEvent e) {
            this.update((Tree)e.widget);
        }

        private void update(Tree tree) {
            tree.getDisplay().asyncExec(new Runnable(this, tree){
                final /* synthetic */ TreeLayoutListener this$1;
                private final /* synthetic */ Tree val$tree;
                {
                    this.this$1 = treeLayoutListener;
                    this.val$tree = tree;
                }

                public void run() {
                    this.val$tree.update();
                    this.val$tree.getParent().layout();
                }
            });
        }
    }
}

