/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.NotDefinedException;

public class ActivityCategoryLabelProvider
extends LabelProvider {
    private LocalResourceManager manager;
    private Map descriptorMap = new HashMap();

    public ActivityCategoryLabelProvider() {
        this.manager = new LocalResourceManager(JFaceResources.getResources());
    }

    public Image getImage(Object element) {
        try {
            ImageDescriptor descriptor = this.getDescriptor(element);
            if (descriptor != null) {
                return this.manager.createImage(descriptor);
            }
        }
        catch (DeviceResourceException deviceResourceException) {}
        return null;
    }

    private ImageDescriptor getDescriptor(Object element) {
        ImageDescriptor descriptor = (ImageDescriptor)this.descriptorMap.get(element);
        if (descriptor != null) {
            return descriptor;
        }
        if (element instanceof ICategory) {
            ICategory category = (ICategory)element;
            descriptor = PlatformUI.getWorkbench().getActivitySupport().getImageDescriptor(category);
            if (descriptor != null) {
                this.descriptorMap.put(element, descriptor);
            }
        } else if (element instanceof IActivity) {
            IActivity activity = (IActivity)element;
            descriptor = PlatformUI.getWorkbench().getActivitySupport().getImageDescriptor(activity);
            if (descriptor != null) {
                this.descriptorMap.put(element, descriptor);
            }
        }
        return descriptor;
    }

    public String getText(Object element) {
        if (element instanceof IActivity) {
            IActivity activity = (IActivity)element;
            try {
                return activity.getName();
            }
            catch (NotDefinedException notDefinedException) {
                return activity.getId();
            }
        }
        if (element instanceof ICategory) {
            ICategory category = (ICategory)element;
            try {
                return category.getName();
            }
            catch (NotDefinedException notDefinedException) {
                return category.getId();
            }
        }
        return super.getText(element);
    }

    public void dispose() {
        this.manager.dispose();
        this.descriptorMap.clear();
    }
}

