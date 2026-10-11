/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal.activities;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.activities.AbstractActivityRegistry;
import org.eclipse.ui.internal.activities.ActivityDefinition;
import org.eclipse.ui.internal.activities.ActivityPatternBindingDefinition;
import org.eclipse.ui.internal.activities.ActivityRequirementBindingDefinition;
import org.eclipse.ui.internal.activities.CategoryActivityBindingDefinition;
import org.eclipse.ui.internal.activities.CategoryDefinition;
import org.eclipse.ui.internal.activities.Persistence;
import org.eclipse.ui.internal.util.ConfigurationElementMemento;
import org.eclipse.ui.statushandlers.StatusManager;

final class ExtensionActivityRegistry
extends AbstractActivityRegistry {
    private static final String PREFIX = "UIActivities.";
    private List activityRequirementBindingDefinitions;
    private List activityDefinitions;
    private List activityPatternBindingDefinitions;
    private List categoryActivityBindingDefinitions;
    private List categoryDefinitions;
    private List defaultEnabledActivities;
    private IExtensionRegistry extensionRegistry;

    ExtensionActivityRegistry(IExtensionRegistry extensionRegistry) {
        if (extensionRegistry == null) {
            throw new NullPointerException();
        }
        this.extensionRegistry = extensionRegistry;
        this.extensionRegistry.addRegistryChangeListener(new IRegistryChangeListener(){

            public void registryChanged(IRegistryChangeEvent registryChangeEvent) {
                IExtensionDelta[] extensionDeltas = registryChangeEvent.getExtensionDeltas("org.eclipse.ui", "activities");
                if (extensionDeltas.length != 0) {
                    try {
                        ExtensionActivityRegistry.this.load();
                    }
                    catch (IOException iOException) {}
                }
            }
        });
        try {
            this.load();
        }
        catch (IOException iOException) {}
    }

    private String getNamespace(IConfigurationElement configurationElement) {
        IExtension extension;
        String namespace = null;
        if (configurationElement != null && (extension = configurationElement.getDeclaringExtension()) != null) {
            namespace = extension.getNamespace();
        }
        return namespace;
    }

    private ActivityDefinition getActivityDefinitionById(String id) {
        int size = this.activityDefinitions.size();
        int i = 0;
        while (i < size) {
            ActivityDefinition activityDef = (ActivityDefinition)this.activityDefinitions.get(i);
            if (activityDef.getId().equals(id)) {
                return activityDef;
            }
            ++i;
        }
        return null;
    }

    private void load() throws IOException {
        ActivityDefinition activityDef;
        if (this.activityRequirementBindingDefinitions == null) {
            this.activityRequirementBindingDefinitions = new ArrayList();
        } else {
            this.activityRequirementBindingDefinitions.clear();
        }
        if (this.activityDefinitions == null) {
            this.activityDefinitions = new ArrayList();
        } else {
            this.activityDefinitions.clear();
        }
        if (this.activityPatternBindingDefinitions == null) {
            this.activityPatternBindingDefinitions = new ArrayList();
        } else {
            this.activityPatternBindingDefinitions.clear();
        }
        if (this.categoryActivityBindingDefinitions == null) {
            this.categoryActivityBindingDefinitions = new ArrayList();
        } else {
            this.categoryActivityBindingDefinitions.clear();
        }
        if (this.categoryDefinitions == null) {
            this.categoryDefinitions = new ArrayList();
        } else {
            this.categoryDefinitions.clear();
        }
        if (this.defaultEnabledActivities == null) {
            this.defaultEnabledActivities = new ArrayList();
        } else {
            this.defaultEnabledActivities.clear();
        }
        IConfigurationElement[] configurationElements = this.extensionRegistry.getConfigurationElementsFor("org.eclipse.ui.activities");
        int i = 0;
        while (i < configurationElements.length) {
            IConfigurationElement configurationElement = configurationElements[i];
            String name = configurationElement.getName();
            if ("activityRequirementBinding".equals(name)) {
                this.readActivityRequirementBindingDefinition(configurationElement);
            } else if ("activity".equals(name)) {
                this.readActivityDefinition(configurationElement);
            } else if ("activityPatternBinding".equals(name)) {
                this.readActivityPatternBindingDefinition(configurationElement);
            } else if ("categoryActivityBinding".equals(name)) {
                this.readCategoryActivityBindingDefinition(configurationElement);
            } else if ("category".equals(name)) {
                this.readCategoryDefinition(configurationElement);
            } else if ("defaultEnablement".equals(name)) {
                this.readDefaultEnablement(configurationElement);
            }
            ++i;
        }
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        Iterator i2 = this.activityDefinitions.iterator();
        while (i2.hasNext()) {
            ActivityDefinition activityDef2 = (ActivityDefinition)i2.next();
            String id = activityDef2.getId();
            String preferenceKey = this.createPreferenceKey(id);
            if ("".equals(store.getDefaultString(preferenceKey))) continue;
            if (store.getDefaultBoolean(preferenceKey)) {
                if (this.defaultEnabledActivities.contains(id) || activityDef2.getEnabledWhen() != null) continue;
                this.defaultEnabledActivities.add(id);
                continue;
            }
            this.defaultEnabledActivities.remove(id);
        }
        int i22 = 0;
        while (i22 < this.defaultEnabledActivities.size()) {
            String id = (String)this.defaultEnabledActivities.get(i22);
            activityDef = this.getActivityDefinitionById(id);
            if (activityDef != null && activityDef.getEnabledWhen() != null) {
                this.defaultEnabledActivities.remove(i22);
                StatusManager.getManager().handle((IStatus)new Status(2, "org.eclipse.ui", "Default enabled activity declarations will be ignored (id: " + id + ")"));
                continue;
            }
            ++i22;
        }
        i = this.activityRequirementBindingDefinitions.iterator();
        while (i.hasNext()) {
            ActivityRequirementBindingDefinition bindingDef = (ActivityRequirementBindingDefinition)i.next();
            activityDef = this.getActivityDefinitionById(bindingDef.getRequiredActivityId());
            if (activityDef != null && activityDef.getEnabledWhen() != null) {
                i.remove();
                StatusManager.getManager().handle((IStatus)new Status(2, "org.eclipse.ui", "Expression activity cannot have requirements (id: " + activityDef.getId() + ")"));
                continue;
            }
            activityDef = this.getActivityDefinitionById(bindingDef.getActivityId());
            if (activityDef == null || activityDef.getEnabledWhen() == null) continue;
            i.remove();
            StatusManager.getManager().handle((IStatus)new Status(2, "org.eclipse.ui", "Expression activity cannot be required (id: " + activityDef.getId() + ")"));
        }
        boolean activityRegistryChanged = false;
        if (!this.activityRequirementBindingDefinitions.equals(((AbstractActivityRegistry)this).activityRequirementBindingDefinitions)) {
            ((AbstractActivityRegistry)this).activityRequirementBindingDefinitions = Collections.unmodifiableList(new ArrayList(this.activityRequirementBindingDefinitions));
            activityRegistryChanged = true;
        }
        if (!this.activityDefinitions.equals(((AbstractActivityRegistry)this).activityDefinitions)) {
            ((AbstractActivityRegistry)this).activityDefinitions = Collections.unmodifiableList(new ArrayList(this.activityDefinitions));
            activityRegistryChanged = true;
        }
        if (!this.activityPatternBindingDefinitions.equals(((AbstractActivityRegistry)this).activityPatternBindingDefinitions)) {
            ((AbstractActivityRegistry)this).activityPatternBindingDefinitions = Collections.unmodifiableList(new ArrayList(this.activityPatternBindingDefinitions));
            activityRegistryChanged = true;
        }
        if (!this.categoryActivityBindingDefinitions.equals(((AbstractActivityRegistry)this).categoryActivityBindingDefinitions)) {
            ((AbstractActivityRegistry)this).categoryActivityBindingDefinitions = Collections.unmodifiableList(new ArrayList(this.categoryActivityBindingDefinitions));
            activityRegistryChanged = true;
        }
        if (!this.categoryDefinitions.equals(((AbstractActivityRegistry)this).categoryDefinitions)) {
            ((AbstractActivityRegistry)this).categoryDefinitions = Collections.unmodifiableList(new ArrayList(this.categoryDefinitions));
            activityRegistryChanged = true;
        }
        if (!this.defaultEnabledActivities.equals(((AbstractActivityRegistry)this).defaultEnabledActivities)) {
            ((AbstractActivityRegistry)this).defaultEnabledActivities = Collections.unmodifiableList(new ArrayList(this.defaultEnabledActivities));
            activityRegistryChanged = true;
        }
        if (activityRegistryChanged) {
            this.fireActivityRegistryChanged();
        }
    }

    private String createPreferenceKey(String activityId) {
        return PREFIX + activityId;
    }

    private void readDefaultEnablement(IConfigurationElement configurationElement) {
        String enabledActivity = Persistence.readDefaultEnablement(new ConfigurationElementMemento(configurationElement));
        if (enabledActivity != null) {
            this.defaultEnabledActivities.add(enabledActivity);
        }
    }

    private void readActivityRequirementBindingDefinition(IConfigurationElement configurationElement) {
        ActivityRequirementBindingDefinition activityRequirementBindingDefinition = Persistence.readActivityRequirementBindingDefinition(new ConfigurationElementMemento(configurationElement), this.getNamespace(configurationElement));
        if (activityRequirementBindingDefinition != null) {
            this.activityRequirementBindingDefinitions.add(activityRequirementBindingDefinition);
        }
    }

    private void readActivityDefinition(IConfigurationElement configurationElement) {
        ActivityDefinition activityDefinition = Persistence.readActivityDefinition(new ConfigurationElementMemento(configurationElement), this.getNamespace(configurationElement));
        if (activityDefinition != null) {
            IConfigurationElement[] expElement;
            IConfigurationElement[] enabledWhen = configurationElement.getChildren("enabledWhen");
            if (enabledWhen.length == 1 && (expElement = enabledWhen[0].getChildren()).length == 1) {
                try {
                    Expression expression = ExpressionConverter.getDefault().perform(expElement[0]);
                    activityDefinition.setEnabledWhen(expression);
                }
                catch (CoreException e) {
                    StatusManager.getManager().handle(e, WorkbenchPlugin.PI_WORKBENCH);
                }
            }
            this.activityDefinitions.add(activityDefinition);
        }
    }

    private void readActivityPatternBindingDefinition(IConfigurationElement configurationElement) {
        ActivityPatternBindingDefinition activityPatternBindingDefinition = Persistence.readActivityPatternBindingDefinition(new ConfigurationElementMemento(configurationElement), this.getNamespace(configurationElement));
        if (activityPatternBindingDefinition != null) {
            this.activityPatternBindingDefinitions.add(activityPatternBindingDefinition);
        }
    }

    private void readCategoryActivityBindingDefinition(IConfigurationElement configurationElement) {
        CategoryActivityBindingDefinition categoryActivityBindingDefinition = Persistence.readCategoryActivityBindingDefinition(new ConfigurationElementMemento(configurationElement), this.getNamespace(configurationElement));
        if (categoryActivityBindingDefinition != null) {
            this.categoryActivityBindingDefinitions.add(categoryActivityBindingDefinition);
        }
    }

    private void readCategoryDefinition(IConfigurationElement configurationElement) {
        CategoryDefinition categoryDefinition = Persistence.readCategoryDefinition(new ConfigurationElementMemento(configurationElement), this.getNamespace(configurationElement));
        if (categoryDefinition != null) {
            this.categoryDefinitions.add(categoryDefinition);
        }
    }
}

