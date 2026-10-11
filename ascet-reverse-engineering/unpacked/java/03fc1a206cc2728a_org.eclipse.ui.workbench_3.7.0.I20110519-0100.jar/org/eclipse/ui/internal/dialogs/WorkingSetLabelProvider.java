/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IWorkingSet;

public class WorkingSetLabelProvider
extends LabelProvider {
    private ResourceManager images = new LocalResourceManager(JFaceResources.getResources());

    public void dispose() {
        this.images.dispose();
        super.dispose();
    }

    public Image getImage(Object object) {
        Assert.isTrue((boolean)(object instanceof IWorkingSet));
        IWorkingSet workingSet = (IWorkingSet)object;
        ImageDescriptor imageDescriptor = workingSet.getImageDescriptor();
        if (imageDescriptor == null) {
            return null;
        }
        Image icon = (Image)this.images.get((DeviceResourceDescriptor)imageDescriptor);
        return icon;
    }

    public String getText(Object object) {
        Assert.isTrue((boolean)(object instanceof IWorkingSet));
        IWorkingSet workingSet = (IWorkingSet)object;
        return workingSet.getLabel();
    }
}

