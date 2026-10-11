/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.model;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.model.IWorkbenchAdapter2;
import org.eclipse.ui.model.IWorkbenchAdapter3;

public abstract class WorkbenchAdapter
implements IWorkbenchAdapter,
IWorkbenchAdapter2,
IWorkbenchAdapter3 {
    protected static final Object[] NO_CHILDREN = new Object[0];

    public Object[] getChildren(Object object) {
        return NO_CHILDREN;
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return null;
    }

    public String getLabel(Object object) {
        return object == null ? "" : object.toString();
    }

    public Object getParent(Object object) {
        return null;
    }

    public RGB getBackground(Object element) {
        return null;
    }

    public RGB getForeground(Object element) {
        return null;
    }

    public FontData getFont(Object element) {
        return null;
    }

    public StyledString getStyledText(Object object) {
        return new StyledString(this.getLabel(object));
    }
}

