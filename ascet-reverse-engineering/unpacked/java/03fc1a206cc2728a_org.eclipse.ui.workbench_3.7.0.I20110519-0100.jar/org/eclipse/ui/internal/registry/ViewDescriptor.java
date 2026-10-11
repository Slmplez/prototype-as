/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.registry;

import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.tweaklets.InterceptContributions;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewDescriptor
implements IViewDescriptor,
IPluginContribution {
    private String id;
    private ImageDescriptor imageDescriptor;
    private IConfigurationElement configElement;
    private String[] categoryPath;
    private float fastViewWidthRatio;
    static /* synthetic */ Class class$0;

    public ViewDescriptor(IConfigurationElement e) throws CoreException {
        this.configElement = e;
        this.loadFromExtension();
    }

    public IViewPart createView() throws CoreException {
        Object extension = WorkbenchPlugin.createExtension(this.getConfigurationElement(), "class");
        return ((InterceptContributions)Tweaklets.get(InterceptContributions.KEY)).tweakView(extension);
    }

    public String[] getCategoryPath() {
        return this.categoryPath;
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configElement;
    }

    public String getDescription() {
        return RegistryReader.getDescription(this.configElement);
    }

    public String getId() {
        return this.id;
    }

    public ImageDescriptor getImageDescriptor() {
        if (this.imageDescriptor != null) {
            return this.imageDescriptor;
        }
        String iconName = this.configElement.getAttribute("icon");
        if (iconName == null) {
            return PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_DEF_VIEW");
        }
        IExtension extension = this.configElement.getDeclaringExtension();
        String extendingPluginId = extension.getNamespace();
        this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, iconName);
        if (this.imageDescriptor == null) {
            this.imageDescriptor = ImageDescriptor.getMissingImageDescriptor();
        }
        return this.imageDescriptor;
    }

    public String getLabel() {
        return this.configElement.getAttribute("name");
    }

    public String getAccelerator() {
        return this.configElement.getAttribute("accelerator");
    }

    public float getFastViewWidthRatio() {
        this.configElement.getAttribute("fastViewWidthRatio");
        return this.fastViewWidthRatio;
    }

    private void loadFromExtension() throws CoreException {
        String ratio;
        this.id = this.configElement.getAttribute("id");
        String category = this.configElement.getAttribute("category");
        if (this.configElement.getAttribute("name") == null || RegistryReader.getClassValue(this.configElement, "class") == null) {
            throw new CoreException((IStatus)new Status(4, this.configElement.getNamespace(), 0, "Invalid extension (missing label or class name): " + this.id, null));
        }
        if (category != null) {
            StringTokenizer stok = new StringTokenizer(category, "/");
            this.categoryPath = new String[stok.countTokens()];
            int i = 0;
            while (stok.hasMoreTokens()) {
                this.categoryPath[i] = stok.nextToken();
                ++i;
            }
        }
        if ((ratio = this.configElement.getAttribute("fastViewWidthRatio")) != null) {
            try {
                this.fastViewWidthRatio = new Float(ratio).floatValue();
                if (this.fastViewWidthRatio > 0.95f) {
                    this.fastViewWidthRatio = 0.95f;
                }
                if (this.fastViewWidthRatio < 0.05f) {
                    this.fastViewWidthRatio = 0.05f;
                }
            }
            catch (NumberFormatException numberFormatException) {
                this.fastViewWidthRatio = 0.3f;
            }
        } else {
            this.fastViewWidthRatio = 0.3f;
        }
    }

    public String toString() {
        return "View(" + this.getId() + ")";
    }

    public String getPluginId() {
        String pluginId = this.configElement.getNamespace();
        return pluginId == null ? "" : pluginId;
    }

    public String getLocalId() {
        return this.getId() == null ? "" : this.getId();
    }

    public boolean getAllowMultiple() {
        String string = this.configElement.getAttribute("allowMultiple");
        return string == null ? false : Boolean.valueOf(string);
    }

    public boolean isRestorable() {
        String string = this.configElement.getAttribute("restorable");
        return string == null ? true : Boolean.valueOf(string);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this.getConfigurationElement();
        }
        return null;
    }
}

