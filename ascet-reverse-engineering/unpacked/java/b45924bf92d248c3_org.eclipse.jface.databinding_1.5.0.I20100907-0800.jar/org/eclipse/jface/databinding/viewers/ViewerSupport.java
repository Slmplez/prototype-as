/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.property.Properties
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.core.databinding.property.set.ISetProperty
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.property.Properties;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.databinding.viewers.ObservableListContentProvider;
import org.eclipse.jface.databinding.viewers.ObservableListTreeContentProvider;
import org.eclipse.jface.databinding.viewers.ObservableMapLabelProvider;
import org.eclipse.jface.databinding.viewers.ObservableSetContentProvider;
import org.eclipse.jface.databinding.viewers.ObservableSetTreeContentProvider;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.StructuredViewer;

public class ViewerSupport {
    public static void bind(StructuredViewer viewer, IObservableList input, IValueProperty labelProperty) {
        ViewerSupport.bind(viewer, input, new IValueProperty[]{labelProperty});
    }

    public static void bind(StructuredViewer viewer, IObservableList input, IValueProperty[] labelProperties) {
        ObservableListContentProvider contentProvider = new ObservableListContentProvider();
        if (viewer.getInput() != null) {
            viewer.setInput(null);
        }
        viewer.setContentProvider((IContentProvider)contentProvider);
        viewer.setLabelProvider((IBaseLabelProvider)new ObservableMapLabelProvider(Properties.observeEach((IObservableSet)contentProvider.getKnownElements(), (IValueProperty[])labelProperties)));
        if (input != null) {
            viewer.setInput((Object)input);
        }
    }

    public static void bind(StructuredViewer viewer, IObservableSet input, IValueProperty labelProperty) {
        ViewerSupport.bind(viewer, input, new IValueProperty[]{labelProperty});
    }

    public static void bind(StructuredViewer viewer, IObservableSet input, IValueProperty[] labelProperties) {
        ObservableSetContentProvider contentProvider = new ObservableSetContentProvider();
        if (viewer.getInput() != null) {
            viewer.setInput(null);
        }
        viewer.setContentProvider((IContentProvider)contentProvider);
        viewer.setLabelProvider((IBaseLabelProvider)new ObservableMapLabelProvider(Properties.observeEach((IObservableSet)contentProvider.getKnownElements(), (IValueProperty[])labelProperties)));
        if (input != null) {
            viewer.setInput((Object)input);
        }
    }

    public static void bind(AbstractTreeViewer viewer, Object input, IListProperty childrenProperty, IValueProperty labelProperty) {
        ViewerSupport.bind(viewer, input, childrenProperty, new IValueProperty[]{labelProperty});
    }

    public static void bind(AbstractTreeViewer viewer, Object input, IListProperty childrenProperty, IValueProperty[] labelProperties) {
        Realm realm = SWTObservables.getRealm(viewer.getControl().getDisplay());
        ObservableListTreeContentProvider contentProvider = new ObservableListTreeContentProvider(childrenProperty.listFactory(realm), null);
        if (viewer.getInput() != null) {
            viewer.setInput(null);
        }
        viewer.setContentProvider((IContentProvider)contentProvider);
        viewer.setLabelProvider((IBaseLabelProvider)new ObservableMapLabelProvider(Properties.observeEach((IObservableSet)contentProvider.getKnownElements(), (IValueProperty[])labelProperties)));
        if (input != null) {
            viewer.setInput(input);
        }
    }

    public static void bind(AbstractTreeViewer viewer, Object input, ISetProperty childrenProperty, IValueProperty labelProperty) {
        ViewerSupport.bind(viewer, input, childrenProperty, new IValueProperty[]{labelProperty});
    }

    public static void bind(AbstractTreeViewer viewer, Object input, ISetProperty childrenProperty, IValueProperty[] labelProperties) {
        Realm realm = SWTObservables.getRealm(viewer.getControl().getDisplay());
        ObservableSetTreeContentProvider contentProvider = new ObservableSetTreeContentProvider(childrenProperty.setFactory(realm), null);
        if (viewer.getInput() != null) {
            viewer.setInput(null);
        }
        viewer.setContentProvider((IContentProvider)contentProvider);
        viewer.setLabelProvider((IBaseLabelProvider)new ObservableMapLabelProvider(Properties.observeEach((IObservableSet)contentProvider.getKnownElements(), (IValueProperty[])labelProperties)));
        if (input != null) {
            viewer.setInput(input);
        }
    }
}

