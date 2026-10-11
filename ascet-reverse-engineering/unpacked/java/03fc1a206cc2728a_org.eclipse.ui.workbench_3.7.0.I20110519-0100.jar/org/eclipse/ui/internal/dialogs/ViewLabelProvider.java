/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.ColumnLabelProvider
 *  org.eclipse.jface.viewers.ColumnViewer
 *  org.eclipse.jface.viewers.ViewerColumn
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.dialogs;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewLabelProvider
extends ColumnLabelProvider {
    private HashMap images;
    private final IWorkbenchWindow window;
    private final Color dimmedForeground;

    public ViewLabelProvider(IWorkbenchWindow window, Color dimmedForeground) {
        this.window = window;
        this.dimmedForeground = dimmedForeground;
    }

    protected void initialize(ColumnViewer viewer, ViewerColumn column) {
        super.initialize(viewer, column);
    }

    Image cacheImage(ImageDescriptor desc) {
        Image image;
        if (this.images == null) {
            this.images = new HashMap(21);
        }
        if ((image = (Image)this.images.get(desc)) == null) {
            image = desc.createImage();
            this.images.put(desc, image);
        }
        return image;
    }

    public void dispose() {
        if (this.images != null) {
            Iterator i = this.images.values().iterator();
            while (i.hasNext()) {
                ((Image)i.next()).dispose();
            }
            this.images = null;
        }
        super.dispose();
    }

    public Image getImage(Object element) {
        if (element instanceof IViewDescriptor) {
            ImageDescriptor desc = ((IViewDescriptor)element).getImageDescriptor();
            if (desc != null) {
                return this.cacheImage(desc);
            }
        } else if (element instanceof IViewCategory) {
            ImageDescriptor desc = WorkbenchImages.getImageDescriptor("IMG_OBJ_FOLDER");
            return this.cacheImage(desc);
        }
        return null;
    }

    public String getText(Object element) {
        String label = WorkbenchMessages.ViewLabel_unknown;
        if (element instanceof IViewCategory) {
            label = ((IViewCategory)element).getLabel();
        } else if (element instanceof IViewDescriptor) {
            label = ((IViewDescriptor)element).getLabel();
        }
        return DialogUtil.removeAccel(label);
    }

    public Color getBackground(Object element) {
        return null;
    }

    public Color getForeground(Object element) {
        IWorkbenchPage activePage;
        if (element instanceof IViewDescriptor && (activePage = this.window.getActivePage()) != null && activePage.findViewReference(((IViewDescriptor)element).getId()) != null) {
            return this.dimmedForeground;
        }
        return null;
    }
}

