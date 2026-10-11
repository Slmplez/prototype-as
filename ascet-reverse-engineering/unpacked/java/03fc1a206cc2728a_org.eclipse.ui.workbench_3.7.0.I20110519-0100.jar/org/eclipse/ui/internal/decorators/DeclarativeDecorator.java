/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IDecoration
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ILightweightLabelDecorator
 */
package org.eclipse.ui.internal.decorators;

import java.net.URL;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IDecoration;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ILightweightLabelDecorator;
import org.eclipse.ui.internal.util.BundleUtility;

public class DeclarativeDecorator
implements ILightweightLabelDecorator {
    private String iconLocation;
    private IConfigurationElement configElement;
    private ImageDescriptor descriptor;

    DeclarativeDecorator(IConfigurationElement definingElement, String iconPath) {
        this.iconLocation = iconPath;
        this.configElement = definingElement;
    }

    public void addListener(ILabelProviderListener listener) {
    }

    public void dispose() {
    }

    public boolean isLabelProperty(Object element, String property) {
        return false;
    }

    public void removeListener(ILabelProviderListener listener) {
    }

    public void decorate(Object element, IDecoration decoration) {
        if (this.descriptor == null) {
            URL url = BundleUtility.find(this.configElement.getDeclaringExtension().getNamespace(), this.iconLocation);
            if (url == null) {
                return;
            }
            this.descriptor = ImageDescriptor.createFromURL((URL)url);
        }
        decoration.addOverlay(this.descriptor);
    }
}

