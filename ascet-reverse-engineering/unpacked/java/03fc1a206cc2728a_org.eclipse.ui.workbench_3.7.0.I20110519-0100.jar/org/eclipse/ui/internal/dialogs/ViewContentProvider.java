/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ViewContentProvider
implements ITreeContentProvider {
    private Map childMap = new HashMap();

    public void dispose() {
        this.childMap.clear();
    }

    public Object[] getChildren(Object element) {
        Object[] children = (Object[])this.childMap.get(element);
        if (children == null) {
            children = this.createChildren(element);
            this.childMap.put(element, children);
        }
        return children;
    }

    private Object[] createChildren(Object element) {
        IViewDescriptor[] views;
        if (element instanceof IViewRegistry) {
            IViewRegistry reg = (IViewRegistry)element;
            Object[] categories = reg.getCategories();
            ArrayList<IViewCategory> filtered = new ArrayList<IViewCategory>();
            int i = 0;
            while (i < categories.length) {
                if (this.hasChildren(categories[i])) {
                    filtered.add(categories[i]);
                }
                ++i;
            }
            categories = filtered.toArray(new IViewCategory[filtered.size()]);
            if (categories.length == 1) {
                return this.getChildren(categories[0]);
            }
            return categories;
        }
        if (element instanceof IViewCategory && (views = ((IViewCategory)element).getViews()) != null) {
            ArrayList<IViewDescriptor> filtered = new ArrayList<IViewDescriptor>();
            int i = 0;
            while (i < views.length) {
                IViewDescriptor o = views[i];
                if (!WorkbenchActivityHelper.filterItem(o)) {
                    filtered.add(o);
                }
                ++i;
            }
            return this.removeIntroView(filtered).toArray();
        }
        return new Object[0];
    }

    private ArrayList removeIntroView(ArrayList list) {
        Iterator i = list.iterator();
        while (i.hasNext()) {
            IViewDescriptor view = (IViewDescriptor)i.next();
            if (!view.getId().equals("org.eclipse.ui.internal.introview")) continue;
            i.remove();
        }
        return list;
    }

    public Object[] getElements(Object element) {
        return this.getChildren(element);
    }

    public Object getParent(Object element) {
        return null;
    }

    public boolean hasChildren(Object element) {
        if (element instanceof IViewRegistry) {
            return true;
        }
        return element instanceof IViewCategory && this.getChildren(element).length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        this.childMap.clear();
    }
}

