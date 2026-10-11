/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.intro;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.intro.IIntroDescriptor;
import org.eclipse.ui.intro.IIntroPart;
import org.eclipse.ui.intro.IntroContentDetector;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class IntroDescriptor
implements IIntroDescriptor,
IPluginContribution {
    private IConfigurationElement element;
    private ImageDescriptor imageDescriptor;

    public IntroDescriptor(IConfigurationElement configElement) throws CoreException {
        this.element = configElement;
        if (configElement.getAttribute("class") == null) {
            throw new CoreException((IStatus)new Status(4, configElement.getNamespace(), 0, "Invalid extension (Missing class name): " + this.getId(), null));
        }
    }

    public IIntroPart createIntro() throws CoreException {
        return (IIntroPart)this.element.createExecutableExtension("class");
    }

    public IntroContentDetector getIntroContentDetector() throws CoreException {
        if (this.element.getAttribute("contentDetector") == null) {
            return null;
        }
        return (IntroContentDetector)this.element.createExecutableExtension("contentDetector");
    }

    public String getId() {
        return this.element.getAttribute("id");
    }

    public ImageDescriptor getImageDescriptor() {
        if (this.imageDescriptor != null) {
            return this.imageDescriptor;
        }
        String iconName = this.element.getAttribute("icon");
        if (iconName == null) {
            return null;
        }
        this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.element.getNamespace(), iconName);
        return this.imageDescriptor;
    }

    public String getLocalId() {
        return this.element.getAttribute("id");
    }

    public String getPluginId() {
        return this.element.getNamespace();
    }

    public IConfigurationElement getConfigurationElement() {
        return this.element;
    }

    public String getLabelOverride() {
        return this.element.getAttribute("label");
    }
}

