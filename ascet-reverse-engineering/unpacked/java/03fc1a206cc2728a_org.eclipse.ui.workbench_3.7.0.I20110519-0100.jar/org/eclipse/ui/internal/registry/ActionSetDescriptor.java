/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.PluginActionSet;
import org.eclipse.ui.internal.PluginActionSetReader;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.IActionSet;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class ActionSetDescriptor
implements IActionSetDescriptor,
IAdaptable,
IWorkbenchAdapter,
IPluginContribution {
    private static final Object[] NO_CHILDREN = new Object[0];
    private static final String INITIALLY_HIDDEN_PREF_ID_PREFIX = "actionSet.initiallyHidden.";
    private String id;
    private String pluginId;
    private String label;
    private boolean visible;
    private String description;
    private IConfigurationElement configElement;
    static /* synthetic */ Class class$0;

    public ActionSetDescriptor(IConfigurationElement configElement) throws CoreException {
        this.configElement = configElement;
        this.id = configElement.getAttribute("id");
        this.pluginId = configElement.getNamespace();
        this.label = configElement.getAttribute("label");
        this.description = configElement.getAttribute("description");
        String str = configElement.getAttribute("visible");
        if (str != null && str.equals("true")) {
            this.visible = true;
        }
        if (this.label == null) {
            throw new CoreException((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "Invalid extension (missing label): " + this.id, null));
        }
    }

    public IActionSet createActionSet() throws CoreException {
        return new PluginActionSet(this);
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

    public Object[] getChildren(Object o) {
        if (o == this) {
            return new PluginActionSetReader().readActionDescriptors(this);
        }
        return NO_CHILDREN;
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configElement;
    }

    public String getDescription() {
        return this.description;
    }

    public String getId() {
        return this.id;
    }

    public String getLabel() {
        return this.label;
    }

    public String getLabel(Object o) {
        if (o == this) {
            return this.getLabel();
        }
        return "Unknown Label";
    }

    public boolean isInitiallyVisible() {
        String prefId;
        if (this.id == null) {
            return this.visible;
        }
        Preferences prefs = WorkbenchPlugin.getDefault().getPluginPreferences();
        if (prefs.getBoolean(prefId = INITIALLY_HIDDEN_PREF_ID_PREFIX + this.getId())) {
            return false;
        }
        return this.visible;
    }

    public void setInitiallyVisible(boolean newValue) {
        if (this.id == null) {
            return;
        }
        Preferences prefs = WorkbenchPlugin.getDefault().getPluginPreferences();
        String prefId = INITIALLY_HIDDEN_PREF_ID_PREFIX + this.getId();
        prefs.setValue(prefId, !newValue);
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return null;
    }

    public Object getParent(Object o) {
        return null;
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public boolean equals(Object arg0) {
        if (!(arg0 instanceof ActionSetDescriptor)) {
            return false;
        }
        ActionSetDescriptor descr = (ActionSetDescriptor)arg0;
        return this.id.equals(descr.id) && descr.pluginId.equals(this.pluginId);
    }

    public int hashCode() {
        return this.id.hashCode() + this.pluginId.hashCode();
    }
}

