/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Widget;

public class StructuredViewerInternals {
    protected static void setAssociateListener(StructuredViewer viewer, AssociateListener listener) {
        viewer.setAssociateListener(listener);
    }

    protected static Widget[] getItems(StructuredViewer viewer, Object element) {
        return viewer.findItems(element);
    }

    protected static interface AssociateListener {
        public void associate(Object var1, Item var2);

        public void disassociate(Item var1);

        public void filteredOut(Object var1);
    }
}

