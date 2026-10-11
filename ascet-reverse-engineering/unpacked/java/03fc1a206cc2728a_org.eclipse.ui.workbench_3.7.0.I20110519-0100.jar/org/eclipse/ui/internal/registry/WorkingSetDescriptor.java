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

import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkingSetElementAdapter;
import org.eclipse.ui.IWorkingSetUpdater;
import org.eclipse.ui.dialogs.IWorkingSetPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class WorkingSetDescriptor
implements IPluginContribution {
    private String id;
    private String name;
    private String icon;
    private String pageClassName;
    private String updaterClassName;
    private IConfigurationElement configElement;
    private String[] classTypes;
    private String[] adapterTypes;
    private static final String ATT_ID = "id";
    private static final String ATT_NAME = "name";
    private static final String ATT_ICON = "icon";
    private static final String ATT_PAGE_CLASS = "pageClass";
    private static final String ATT_UPDATER_CLASS = "updaterClass";
    private static final String ATT_ELEMENT_ADAPTER_CLASS = "elementAdapterClass";
    private static final String TAG_APPLICABLE_TYPE = "applicableType";

    public WorkingSetDescriptor(IConfigurationElement configElement) throws CoreException {
        this.configElement = configElement;
        this.id = configElement.getAttribute(ATT_ID);
        this.name = configElement.getAttribute(ATT_NAME);
        this.icon = configElement.getAttribute(ATT_ICON);
        this.pageClassName = configElement.getAttribute(ATT_PAGE_CLASS);
        this.updaterClassName = configElement.getAttribute(ATT_UPDATER_CLASS);
        if (this.name == null) {
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "Invalid extension (missing class name): " + this.id, null));
        }
        IConfigurationElement[] containsChildren = configElement.getChildren(TAG_APPLICABLE_TYPE);
        if (containsChildren.length > 0) {
            ArrayList<String> byClassList = new ArrayList<String>(containsChildren.length);
            ArrayList<String> byAdapterList = new ArrayList<String>(containsChildren.length);
            int i = 0;
            while (i < containsChildren.length) {
                IConfigurationElement child = containsChildren[i];
                String className = child.getAttribute("class");
                if (className != null) {
                    byClassList.add(className);
                }
                if ("true".equals(child.getAttribute("adaptable"))) {
                    byAdapterList.add(className);
                }
                ++i;
            }
            if (!byClassList.isEmpty()) {
                this.classTypes = byClassList.toArray(new String[byClassList.size()]);
                Arrays.sort(this.classTypes);
            }
            if (!byAdapterList.isEmpty()) {
                this.adapterTypes = byAdapterList.toArray(new String[byAdapterList.size()]);
                Arrays.sort(this.adapterTypes);
            }
        }
    }

    public String getDeclaringNamespace() {
        return this.configElement.getNamespace();
    }

    public String getUpdaterNamespace() {
        return WorkbenchPlugin.getBundleForExecutableExtension(this.configElement, ATT_UPDATER_CLASS).getSymbolicName();
    }

    public String getElementAdapterNamespace() {
        return WorkbenchPlugin.getBundleForExecutableExtension(this.configElement, ATT_UPDATER_CLASS).getSymbolicName();
    }

    public IWorkingSetPage createWorkingSetPage() {
        Object page = null;
        if (this.pageClassName != null) {
            try {
                page = WorkbenchPlugin.createExtension(this.configElement, ATT_PAGE_CLASS);
            }
            catch (CoreException exception) {
                WorkbenchPlugin.log("Unable to create working set page: " + this.pageClassName, exception.getStatus());
            }
        }
        return (IWorkingSetPage)page;
    }

    public ImageDescriptor getIcon() {
        if (this.icon == null) {
            return null;
        }
        IExtension extension = this.configElement.getDeclaringExtension();
        String extendingPluginId = extension.getNamespace();
        return AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, this.icon);
    }

    public String getId() {
        return this.id;
    }

    public String getPageClassName() {
        return this.pageClassName;
    }

    public String getName() {
        return this.name;
    }

    public String getUpdaterClassName() {
        return this.updaterClassName;
    }

    public IWorkingSetElementAdapter createWorkingSetElementAdapter() {
        if (!WorkbenchPlugin.hasExecutableExtension(this.configElement, ATT_ELEMENT_ADAPTER_CLASS)) {
            return null;
        }
        IWorkingSetElementAdapter result = null;
        try {
            result = (IWorkingSetElementAdapter)WorkbenchPlugin.createExtension(this.configElement, ATT_ELEMENT_ADAPTER_CLASS);
        }
        catch (CoreException exception) {
            WorkbenchPlugin.log("Unable to create working set element adapter: " + result, exception.getStatus());
        }
        return result;
    }

    public IWorkingSetUpdater createWorkingSetUpdater() {
        if (this.updaterClassName == null) {
            return null;
        }
        IWorkingSetUpdater result = null;
        try {
            result = (IWorkingSetUpdater)WorkbenchPlugin.createExtension(this.configElement, ATT_UPDATER_CLASS);
        }
        catch (CoreException exception) {
            WorkbenchPlugin.log("Unable to create working set updater: " + this.updaterClassName, exception.getStatus());
        }
        return result;
    }

    public boolean isUpdaterClassLoaded() {
        return WorkbenchPlugin.isBundleLoadedForExecutableExtension(this.configElement, ATT_UPDATER_CLASS);
    }

    public boolean isElementAdapterClassLoaded() {
        return WorkbenchPlugin.isBundleLoadedForExecutableExtension(this.configElement, ATT_ELEMENT_ADAPTER_CLASS);
    }

    public boolean isEditable() {
        return this.getPageClassName() != null;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.getDeclaringNamespace();
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configElement;
    }

    public String getDescription() {
        String description = this.configElement.getAttribute("description");
        if (description == null) {
            description = "";
        }
        return description;
    }
}

