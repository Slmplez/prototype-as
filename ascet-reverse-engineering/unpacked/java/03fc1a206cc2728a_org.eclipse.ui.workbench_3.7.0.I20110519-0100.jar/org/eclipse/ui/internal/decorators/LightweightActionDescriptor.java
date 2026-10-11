/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class LightweightActionDescriptor
implements IAdaptable,
IWorkbenchAdapter {
    private static final Object[] NO_CHILDREN = new Object[0];
    private String id;
    private String label;
    private String description;
    private ImageDescriptor image;
    static /* synthetic */ Class class$0;

    public LightweightActionDescriptor(IConfigurationElement actionElement) {
        this.id = actionElement.getAttribute("id");
        this.label = actionElement.getAttribute("label");
        this.description = actionElement.getAttribute("description");
        String iconName = actionElement.getAttribute("icon");
        if (iconName != null) {
            IExtension extension = actionElement.getDeclaringExtension();
            this.image = AbstractUIPlugin.imageDescriptorFromPlugin(extension.getNamespace(), iconName);
        }
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        return null;
    }

    public String getDescription() {
        return this.description;
    }

    public String getId() {
        return this.id;
    }

    public ImageDescriptor getImageDescriptor() {
        return this.image;
    }

    public ImageDescriptor getImageDescriptor(Object o) {
        if (o == this) {
            return this.getImageDescriptor();
        }
        return null;
    }

    public String getLabel() {
        return this.label;
    }

    public String getLabel(Object o) {
        if (o == this) {
            String text = this.getLabel();
            int end = text.lastIndexOf(64);
            if (end >= 0) {
                text = text.substring(0, end);
            }
            return DialogUtil.removeAccel(text);
        }
        return o == null ? "" : o.toString();
    }

    public Object[] getChildren(Object o) {
        return NO_CHILDREN;
    }

    public Object getParent(Object o) {
        return null;
    }
}

