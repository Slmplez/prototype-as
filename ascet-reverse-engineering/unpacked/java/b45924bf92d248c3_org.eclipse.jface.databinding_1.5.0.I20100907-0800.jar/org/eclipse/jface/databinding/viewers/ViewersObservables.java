/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.viewers.IViewerObservableList;
import org.eclipse.jface.databinding.viewers.IViewerObservableSet;
import org.eclipse.jface.databinding.viewers.IViewerObservableValue;
import org.eclipse.jface.databinding.viewers.ViewerProperties;
import org.eclipse.jface.internal.databinding.viewers.ViewerObservableValueDecorator;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;

public class ViewersObservables {
    private static void checkNull(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
    }

    public static IViewerObservableValue observeDelayedValue(int delay, IViewerObservableValue observable) {
        return new ViewerObservableValueDecorator(Observables.observeDelayedValue((int)delay, (IObservableValue)observable), observable.getViewer());
    }

    public static IObservableValue observeSingleSelection(ISelectionProvider selectionProvider) {
        ViewersObservables.checkNull(selectionProvider);
        return ViewerProperties.singleSelection().observe(selectionProvider);
    }

    public static IObservableValue observeSinglePostSelection(IPostSelectionProvider selectionProvider) {
        ViewersObservables.checkNull(selectionProvider);
        return ViewerProperties.singlePostSelection().observe(selectionProvider);
    }

    public static IObservableList observeMultiSelection(ISelectionProvider selectionProvider) {
        ViewersObservables.checkNull(selectionProvider);
        return ViewerProperties.multipleSelection().observe(selectionProvider);
    }

    public static IObservableList observeMultiPostSelection(IPostSelectionProvider selectionProvider) {
        ViewersObservables.checkNull(selectionProvider);
        return ViewerProperties.multiplePostSelection().observe(selectionProvider);
    }

    public static IViewerObservableValue observeSingleSelection(Viewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.singleSelection().observe(viewer);
    }

    public static IViewerObservableValue observeSinglePostSelection(StructuredViewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.singlePostSelection().observe((Viewer)viewer);
    }

    public static IViewerObservableList observeMultiSelection(Viewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.multipleSelection().observe(viewer);
    }

    public static IViewerObservableList observeMultiPostSelection(StructuredViewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.multiplePostSelection().observe((Viewer)viewer);
    }

    public static IObservableValue observeInput(Viewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.input().observe(viewer);
    }

    public static IObservableSet observeCheckedElements(ICheckable checkable, Object elementType) {
        ViewersObservables.checkNull(checkable);
        return ViewerProperties.checkedElements(elementType).observe(checkable);
    }

    public static IViewerObservableSet observeCheckedElements(CheckboxTableViewer viewer, Object elementType) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.checkedElements(elementType).observe((Viewer)viewer);
    }

    public static IViewerObservableSet observeCheckedElements(CheckboxTreeViewer viewer, Object elementType) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.checkedElements(elementType).observe((Viewer)viewer);
    }

    public static IViewerObservableSet observeFilters(StructuredViewer viewer) {
        ViewersObservables.checkNull(viewer);
        return ViewerProperties.filters().observe((Viewer)viewer);
    }
}

