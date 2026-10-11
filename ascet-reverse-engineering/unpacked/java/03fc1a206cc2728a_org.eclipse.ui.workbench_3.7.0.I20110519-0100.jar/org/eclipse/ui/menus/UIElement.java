/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.menus;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.services.IServiceLocator;

public abstract class UIElement {
    private IServiceLocator serviceLocator;

    protected UIElement(IServiceLocator serviceLocator) throws IllegalArgumentException {
        if (serviceLocator == null) {
            throw new IllegalArgumentException();
        }
        this.serviceLocator = serviceLocator;
    }

    public abstract void setText(String var1);

    public abstract void setTooltip(String var1);

    public abstract void setIcon(ImageDescriptor var1);

    public abstract void setDisabledIcon(ImageDescriptor var1);

    public abstract void setHoverIcon(ImageDescriptor var1);

    public abstract void setChecked(boolean var1);

    public final IServiceLocator getServiceLocator() {
        return this.serviceLocator;
    }

    public void setDropDownId(String id) {
    }
}

