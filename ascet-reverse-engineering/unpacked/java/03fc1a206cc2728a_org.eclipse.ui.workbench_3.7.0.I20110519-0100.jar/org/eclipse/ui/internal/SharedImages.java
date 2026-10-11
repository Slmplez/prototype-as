/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.internal.WorkbenchImages;

public class SharedImages
implements ISharedImages {
    public Image getImage(String symbolicName) {
        Image image = WorkbenchImages.getImage(symbolicName);
        if (image != null) {
            return image;
        }
        ImageDescriptor desc = WorkbenchImages.getImageDescriptor(symbolicName);
        if (desc != null) {
            WorkbenchImages.getImageRegistry().put(symbolicName, desc);
            return WorkbenchImages.getImageRegistry().get(symbolicName);
        }
        return null;
    }

    public ImageDescriptor getImageDescriptor(String symbolicName) {
        return WorkbenchImages.getImageDescriptor(symbolicName);
    }
}

