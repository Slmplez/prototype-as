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
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveFactory;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class PerspectiveDescriptor
implements IPerspectiveDescriptor,
IPluginContribution {
    private String id;
    private String pluginId;
    private String originalId;
    private String label;
    private String className;
    private String description;
    private boolean singleton;
    private boolean fixed;
    private ImageDescriptor image;
    private IConfigurationElement configElement;

    public PerspectiveDescriptor(String id, String label, PerspectiveDescriptor originalDescriptor) {
        this.id = id;
        this.label = label;
        if (originalDescriptor != null) {
            this.originalId = originalDescriptor.getOriginalId();
            this.image = originalDescriptor.image;
            this.pluginId = originalDescriptor.getPluginId();
        }
    }

    public PerspectiveDescriptor(String id, IConfigurationElement configElement) throws CoreException {
        this.configElement = configElement;
        this.id = id;
        if (this.getId() == null || this.getLabel() == null || this.getClassName() == null) {
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "Invalid extension (missing label, id or class name): " + this.getId(), null));
        }
    }

    public IPerspectiveFactory createFactory() throws CoreException {
        if (this.originalId != null) {
            IPerspectiveDescriptor target = ((PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry()).findPerspectiveWithId(this.originalId);
            return target == null ? null : ((PerspectiveDescriptor)target).createFactory();
        }
        if (this.configElement != null) {
            try {
                return (IPerspectiveFactory)this.configElement.createExecutableExtension("class");
            }
            catch (CoreException coreException) {}
        }
        return null;
    }

    public void deleteCustomDefinition() {
        ((PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry()).deleteCustomDefinition(this);
    }

    public String getDescription() {
        return this.configElement == null ? this.description : RegistryReader.getDescription(this.configElement);
    }

    public boolean getFixed() {
        return this.configElement == null ? this.fixed : Boolean.valueOf(this.configElement.getAttribute("fixed"));
    }

    public String getId() {
        return this.id;
    }

    public ImageDescriptor getImageDescriptor() {
        if (this.image == null && this.configElement != null) {
            String icon = this.configElement.getAttribute("icon");
            if (icon != null) {
                this.image = AbstractUIPlugin.imageDescriptorFromPlugin(this.configElement.getNamespace(), icon);
            }
            if (this.image == null) {
                this.image = WorkbenchImages.getImageDescriptor("IMG_ETOOL_DEF_PERSPECTIVE");
            }
        }
        return this.image;
    }

    public String getLabel() {
        return this.configElement == null ? this.label : this.configElement.getAttribute("name");
    }

    public String getOriginalId() {
        if (this.originalId == null) {
            return this.getId();
        }
        return this.originalId;
    }

    public boolean hasCustomDefinition() {
        return ((PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry()).hasCustomDefinition(this);
    }

    public boolean hasDefaultFlag() {
        if (this.configElement == null) {
            return false;
        }
        return Boolean.valueOf(this.configElement.getAttribute("default"));
    }

    public boolean isPredefined() {
        return this.getClassName() != null && this.configElement != null;
    }

    public boolean isSingleton() {
        return this.configElement == null ? this.singleton : this.configElement.getAttributeAsIs("singleton") != null;
    }

    public IStatus restoreState(IMemento memento) {
        IMemento childMem = memento.getChild("descriptor");
        if (childMem != null) {
            this.id = childMem.getString("id");
            this.originalId = childMem.getString("descriptor");
            this.label = childMem.getString("label");
            this.className = childMem.getString("class");
            this.singleton = childMem.getInteger("singleton") != null;
            IPerspectiveDescriptor descriptor = WorkbenchPlugin.getDefault().getPerspectiveRegistry().findPerspectiveWithId(this.getOriginalId());
            if (descriptor != null) {
                this.image = descriptor.getImageDescriptor();
            }
        }
        return Status.OK_STATUS;
    }

    public void revertToPredefined() {
        if (this.isPredefined()) {
            this.deleteCustomDefinition();
        }
    }

    public IStatus saveState(IMemento memento) {
        IMemento childMem = memento.createChild("descriptor");
        childMem.putString("id", this.getId());
        if (this.originalId != null) {
            childMem.putString("descriptor", this.originalId);
        }
        childMem.putString("label", this.getLabel());
        childMem.putString("class", this.getClassName());
        if (this.singleton) {
            childMem.putInteger("singleton", 1);
        }
        return Status.OK_STATUS;
    }

    public IConfigurationElement getConfigElement() {
        return this.configElement;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.configElement == null ? this.pluginId : this.configElement.getNamespace();
    }

    public String getClassName() {
        return this.configElement == null ? this.className : RegistryReader.getClassValue(this.configElement, "class");
    }
}

