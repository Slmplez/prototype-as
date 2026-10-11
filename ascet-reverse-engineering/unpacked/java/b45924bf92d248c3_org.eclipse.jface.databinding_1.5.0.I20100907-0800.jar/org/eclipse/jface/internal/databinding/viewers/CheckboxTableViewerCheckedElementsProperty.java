/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Arrays;
import java.util.Set;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.jface.internal.databinding.viewers.CheckboxViewerCheckedElementsProperty;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.StructuredViewer;

public class CheckboxTableViewerCheckedElementsProperty
extends CheckboxViewerCheckedElementsProperty {
    public CheckboxTableViewerCheckedElementsProperty(Object elementType) {
        super(elementType);
    }

    protected Set doGetSet(Object source) {
        CheckboxTableViewer viewer = (CheckboxTableViewer)source;
        Set set = this.createElementSet((StructuredViewer)viewer);
        set.addAll(Arrays.asList(viewer.getCheckedElements()));
        return set;
    }

    protected void doSetSet(Object source, Set set, SetDiff diff) {
        this.doSetSet(source, set);
    }

    protected void doSetSet(Object source, Set set) {
        CheckboxTableViewer viewer = (CheckboxTableViewer)source;
        viewer.setCheckedElements(set.toArray());
    }

    public String toString() {
        String s = "CheckboxTableViewer.checkedElements{}";
        if (this.getElementType() != null) {
            s = String.valueOf(s) + " <" + this.getElementType() + ">";
        }
        return s;
    }
}

