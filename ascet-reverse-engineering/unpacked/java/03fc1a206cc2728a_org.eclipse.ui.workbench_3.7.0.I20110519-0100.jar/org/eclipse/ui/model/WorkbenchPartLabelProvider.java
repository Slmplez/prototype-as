/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.model;

import java.util.HashMap;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class WorkbenchPartLabelProvider
extends LabelProvider
implements ITableLabelProvider {
    private ResourceManager resourceManager = new LocalResourceManager(JFaceResources.getResources());
    private HashMap images = new HashMap();

    public final Image getImage(Object element) {
        if (element instanceof IWorkbenchPart) {
            return ((IWorkbenchPart)element).getTitleImage();
        }
        if (element instanceof Saveable) {
            Saveable model = (Saveable)element;
            ImageDescriptor imageDesc = model.getImageDescriptor();
            if (imageDesc == null) {
                return null;
            }
            Image image = (Image)this.images.get(imageDesc);
            if (image == null) {
                try {
                    image = this.resourceManager.createImage(imageDesc);
                    this.images.put(imageDesc, image);
                }
                catch (DeviceResourceException e) {
                    WorkbenchPlugin.log(((Object)((Object)this)).getClass(), "getImage", e);
                }
            }
            return image;
        }
        return null;
    }

    public final String getText(Object element) {
        if (element instanceof IWorkbenchPart) {
            IWorkbenchPart part = (IWorkbenchPart)element;
            String path = part.getTitleToolTip();
            if (path == null || path.trim().length() == 0) {
                return part.getTitle();
            }
            return String.valueOf(part.getTitle()) + "  [" + path + "]";
        }
        if (element instanceof Saveable) {
            Saveable model = (Saveable)element;
            String path = model.getToolTipText();
            if (path == null || path.trim().length() == 0) {
                return model.getName();
            }
            return String.valueOf(model.getName()) + "  [" + path + "]";
        }
        return null;
    }

    public final Image getColumnImage(Object element, int columnIndex) {
        return this.getImage(element);
    }

    public final String getColumnText(Object element, int columnIndex) {
        return this.getText(element);
    }

    public void dispose() {
        this.resourceManager.dispose();
        super.dispose();
    }
}

