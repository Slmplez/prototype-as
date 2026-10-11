/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.jface.databinding.viewers.IViewerListProperty;
import org.eclipse.jface.databinding.viewers.IViewerSetProperty;
import org.eclipse.jface.databinding.viewers.IViewerValueProperty;
import org.eclipse.jface.internal.databinding.viewers.SelectionProviderMultipleSelectionProperty;
import org.eclipse.jface.internal.databinding.viewers.SelectionProviderSingleSelectionProperty;
import org.eclipse.jface.internal.databinding.viewers.StructuredViewerFiltersProperty;
import org.eclipse.jface.internal.databinding.viewers.ViewerCheckedElementsProperty;
import org.eclipse.jface.internal.databinding.viewers.ViewerInputProperty;

public class ViewerProperties {
    public static IViewerSetProperty checkedElements(Object elementType) {
        return new ViewerCheckedElementsProperty(elementType);
    }

    public static IViewerSetProperty filters() {
        return new StructuredViewerFiltersProperty();
    }

    public static IViewerValueProperty input() {
        return new ViewerInputProperty();
    }

    public static IViewerListProperty multipleSelection() {
        return new SelectionProviderMultipleSelectionProperty(false);
    }

    public static IViewerListProperty multiplePostSelection() {
        return new SelectionProviderMultipleSelectionProperty(true);
    }

    public static IViewerValueProperty singleSelection() {
        return new SelectionProviderSingleSelectionProperty(false);
    }

    public static IViewerValueProperty singlePostSelection() {
        return new SelectionProviderSingleSelectionProperty(true);
    }
}

