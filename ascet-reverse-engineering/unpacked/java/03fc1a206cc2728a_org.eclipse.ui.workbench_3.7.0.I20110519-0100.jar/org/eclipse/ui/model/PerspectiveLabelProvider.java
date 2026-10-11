/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.model;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;

public final class PerspectiveLabelProvider
extends LabelProvider
implements ITableLabelProvider {
    private HashMap imageCache = new HashMap(5);
    private boolean markDefault;

    public PerspectiveLabelProvider() {
        this(true);
    }

    public PerspectiveLabelProvider(boolean markDefault) {
        this.markDefault = markDefault;
    }

    public final Image getImage(Object element) {
        if (element instanceof IPerspectiveDescriptor) {
            Image image;
            IPerspectiveDescriptor desc = (IPerspectiveDescriptor)element;
            ImageDescriptor imageDescriptor = desc.getImageDescriptor();
            if (imageDescriptor == null) {
                imageDescriptor = WorkbenchImages.getImageDescriptor("IMG_ETOOL_DEF_PERSPECTIVE");
            }
            if ((image = (Image)this.imageCache.get(imageDescriptor)) == null) {
                image = imageDescriptor.createImage();
                this.imageCache.put(imageDescriptor, image);
            }
            return image;
        }
        return null;
    }

    public final void dispose() {
        Iterator i = this.imageCache.values().iterator();
        while (i.hasNext()) {
            ((Image)i.next()).dispose();
        }
        this.imageCache.clear();
    }

    public final String getText(Object element) {
        if (element instanceof IPerspectiveDescriptor) {
            IPerspectiveDescriptor desc = (IPerspectiveDescriptor)element;
            String label = desc.getLabel();
            if (this.markDefault) {
                String def = PlatformUI.getWorkbench().getPerspectiveRegistry().getDefaultPerspective();
                if (desc.getId().equals(def)) {
                    label = NLS.bind((String)WorkbenchMessages.PerspectivesPreference_defaultLabel, (Object)label);
                }
            }
            return label;
        }
        return WorkbenchMessages.PerspectiveLabelProvider_unknown;
    }

    public final Image getColumnImage(Object element, int columnIndex) {
        return this.getImage(element);
    }

    public final String getColumnText(Object element, int columnIndex) {
        return this.getText(element);
    }
}

