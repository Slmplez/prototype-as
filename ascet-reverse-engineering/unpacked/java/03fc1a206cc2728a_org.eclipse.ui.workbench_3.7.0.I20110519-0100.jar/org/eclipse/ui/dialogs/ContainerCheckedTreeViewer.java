/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.ITreeViewerListener
 *  org.eclipse.jface.viewers.TreeExpansionEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ITreeViewerListener;
import org.eclipse.jface.viewers.TreeExpansionEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.swt.widgets.Widget;

public class ContainerCheckedTreeViewer
extends CheckboxTreeViewer {
    public ContainerCheckedTreeViewer(Composite parent) {
        super(parent);
        this.initViewer();
    }

    public ContainerCheckedTreeViewer(Composite parent, int style) {
        super(parent, style);
        this.initViewer();
    }

    public ContainerCheckedTreeViewer(Tree tree) {
        super(tree);
        this.initViewer();
    }

    private void initViewer() {
        this.setUseHashlookup(true);
        this.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                ContainerCheckedTreeViewer.this.doCheckStateChanged(event.getElement());
            }
        });
        this.addTreeListener(new ITreeViewerListener(){

            public void treeCollapsed(TreeExpansionEvent event) {
            }

            public void treeExpanded(TreeExpansionEvent event) {
                Widget item = ContainerCheckedTreeViewer.this.findItem(event.getElement());
                if (item instanceof TreeItem) {
                    ContainerCheckedTreeViewer.this.initializeItem((TreeItem)item);
                }
            }
        });
    }

    protected void doCheckStateChanged(Object element) {
        Widget item = this.findItem(element);
        if (item instanceof TreeItem) {
            TreeItem treeItem = (TreeItem)item;
            treeItem.setGrayed(false);
            this.updateChildrenItems(treeItem);
            this.updateParentItems(treeItem.getParentItem());
        }
    }

    private void initializeItem(TreeItem item) {
        if (item.getChecked() && !item.getGrayed()) {
            this.updateChildrenItems(item);
        }
    }

    private void updateChildrenItems(TreeItem parent) {
        Item[] children = this.getChildren((Widget)parent);
        boolean state = parent.getChecked();
        int i = 0;
        while (i < children.length) {
            TreeItem curr = (TreeItem)children[i];
            if (curr.getData() != null && (curr.getChecked() != state || curr.getGrayed())) {
                curr.setChecked(state);
                curr.setGrayed(false);
                this.updateChildrenItems(curr);
            }
            ++i;
        }
    }

    private void updateParentItems(TreeItem item) {
        if (item != null) {
            Item[] children = this.getChildren((Widget)item);
            boolean containsChecked = false;
            boolean containsUnchecked = false;
            int i = 0;
            while (i < children.length) {
                TreeItem curr = (TreeItem)children[i];
                containsChecked |= curr.getChecked();
                containsUnchecked |= !curr.getChecked() || curr.getGrayed();
                ++i;
            }
            item.setChecked(containsChecked);
            item.setGrayed(containsChecked && containsUnchecked);
            this.updateParentItems(item.getParentItem());
        }
    }

    public boolean setChecked(Object element, boolean state) {
        if (super.setChecked(element, state)) {
            this.doCheckStateChanged(element);
            return true;
        }
        return false;
    }

    public void setCheckedElements(Object[] elements) {
        super.setCheckedElements(elements);
        int i = 0;
        while (i < elements.length) {
            this.doCheckStateChanged(elements[i]);
            ++i;
        }
    }

    protected void setExpanded(Item item, boolean expand) {
        super.setExpanded(item, expand);
        if (expand && item instanceof TreeItem) {
            this.initializeItem((TreeItem)item);
        }
    }

    public Object[] getCheckedElements() {
        Object[] checked = super.getCheckedElements();
        ArrayList<Object> result = new ArrayList<Object>();
        int i = 0;
        while (i < checked.length) {
            Item[] children;
            Object curr = checked[i];
            result.add(curr);
            Widget item = this.findItem(curr);
            if (item != null && (children = this.getChildren(item)).length == 1 && children[0].getData() == null) {
                this.collectChildren(curr, result);
            }
            ++i;
        }
        return result.toArray();
    }

    private void collectChildren(Object element, ArrayList result) {
        Object[] filteredChildren = this.getFilteredChildren(element);
        int i = 0;
        while (i < filteredChildren.length) {
            Object curr = filteredChildren[i];
            result.add(curr);
            this.collectChildren(curr, result);
            ++i;
        }
    }
}

