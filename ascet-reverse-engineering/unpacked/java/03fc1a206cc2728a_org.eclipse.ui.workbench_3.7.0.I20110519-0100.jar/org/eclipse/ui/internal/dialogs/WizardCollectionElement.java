/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WizardCollectionElement
extends AdaptableList
implements IPluginContribution,
IWizardCategory {
    private String id;
    private String pluginId;
    private String name;
    private WizardCollectionElement parent;
    private AdaptableList wizards = new AdaptableList();
    private IConfigurationElement configElement;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public WizardCollectionElement(String id, String pluginId, String name, WizardCollectionElement parent) {
        this.name = name;
        this.id = id;
        this.pluginId = pluginId;
        this.parent = parent;
    }

    public WizardCollectionElement(IConfigurationElement element, WizardCollectionElement parent) {
        this.configElement = element;
        this.id = this.configElement.getAttribute("id");
        this.parent = parent;
    }

    public AdaptableList add(IAdaptable a) {
        if (a instanceof WorkbenchWizardElement) {
            this.wizards.add(a);
        } else {
            super.add(a);
        }
        return this;
    }

    public void remove(IAdaptable a) {
        if (a instanceof WorkbenchWizardElement) {
            this.wizards.remove(a);
        } else {
            super.remove(a);
        }
    }

    public WizardCollectionElement findChildCollection(IPath searchPath) {
        Object[] children = this.getChildren(null);
        String searchString = searchPath.segment(0);
        int i = 0;
        while (i < children.length) {
            WizardCollectionElement currentCategory = (WizardCollectionElement)children[i];
            if (currentCategory.getId().equals(searchString)) {
                if (searchPath.segmentCount() == 1) {
                    return currentCategory;
                }
                return currentCategory.findChildCollection(searchPath.removeFirstSegments(1));
            }
            ++i;
        }
        return null;
    }

    public WizardCollectionElement findCategory(String id) {
        Object[] children = this.getChildren(null);
        int i = 0;
        while (i < children.length) {
            WizardCollectionElement currentCategory = (WizardCollectionElement)children[i];
            if (id.equals(currentCategory.getId())) {
                return currentCategory;
            }
            WizardCollectionElement childCategory = currentCategory.findCategory(id);
            if (childCategory != null) {
                return childCategory;
            }
            ++i;
        }
        return null;
    }

    public WorkbenchWizardElement findWizard(String searchId, boolean recursive) {
        IWizardDescriptor[] wizards = this.getWizards();
        int i = 0;
        while (i < wizards.length) {
            WorkbenchWizardElement currentWizard = (WorkbenchWizardElement)wizards[i];
            if (currentWizard.getId().equals(searchId)) {
                return currentWizard;
            }
            ++i;
        }
        if (!recursive) {
            return null;
        }
        Iterator iterator = this.children.iterator();
        while (iterator.hasNext()) {
            WizardCollectionElement child = (WizardCollectionElement)iterator.next();
            WorkbenchWizardElement result = child.findWizard(searchId, true);
            if (result == null) continue;
            return result;
        }
        return null;
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
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public String getId() {
        return this.id;
    }

    public String getLabel(Object o) {
        return this.configElement != null ? this.configElement.getAttribute("name") : this.name;
    }

    public Object getParent(Object o) {
        return this.parent;
    }

    public IPath getPath() {
        if (this.parent == null) {
            return new Path("");
        }
        return this.parent.getPath().append(this.getId());
    }

    public IWizardDescriptor[] getWizards() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.wizards.IWizardDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return this.getWizardsExpression((IWizardDescriptor[])this.wizards.getTypedChildren(clazz));
    }

    private IWizardDescriptor[] getWizardsExpression(IWizardDescriptor[] wizardDescriptors) {
        int size = wizardDescriptors.length;
        ArrayList<IWizardDescriptor> result = new ArrayList<IWizardDescriptor>(size);
        int i = 0;
        while (i < size) {
            if (!WorkbenchActivityHelper.restrictUseOf((WorkbenchWizardElement)wizardDescriptors[i])) {
                result.add(wizardDescriptors[i]);
            }
            ++i;
        }
        return result.toArray(new IWizardDescriptor[result.size()]);
    }

    public WorkbenchWizardElement[] getWorkbenchWizardElements() {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.internal.dialogs.WorkbenchWizardElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return this.getWorkbenchWizardElementsExpression((WorkbenchWizardElement[])this.wizards.getTypedChildren(clazz));
    }

    private WorkbenchWizardElement[] getWorkbenchWizardElementsExpression(WorkbenchWizardElement[] workbenchWizardElements) {
        int size = workbenchWizardElements.length;
        ArrayList<WorkbenchWizardElement> result = new ArrayList<WorkbenchWizardElement>(size);
        int i = 0;
        while (i < size) {
            WorkbenchWizardElement element = workbenchWizardElements[i];
            if (!WorkbenchActivityHelper.restrictUseOf(element)) {
                result.add(element);
            }
            ++i;
        }
        return result.toArray(new WorkbenchWizardElement[result.size()]);
    }

    public boolean isEmpty() {
        return this.size() == 0 && this.wizards.size() == 0;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("WizardCollection, ");
        buf.append(this.children.size());
        buf.append(" children, ");
        buf.append(this.wizards.size());
        buf.append(" wizards");
        return buf.toString();
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_FOLDER");
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.configElement != null ? this.configElement.getNamespace() : this.pluginId;
    }

    public IWizardCategory getParent() {
        return this.parent;
    }

    public IWizardCategory[] getCategories() {
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.wizards.IWizardCategory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWizardCategory[])this.getTypedChildren(clazz);
    }

    public WizardCollectionElement[] getCollectionElements() {
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.internal.dialogs.WizardCollectionElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (WizardCollectionElement[])this.getTypedChildren(clazz);
    }

    public AdaptableList getWizardAdaptableList() {
        return this.wizards;
    }

    public String getLabel() {
        return this.getLabel(this);
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configElement;
    }

    public WizardCollectionElement getParentCollection() {
        return this.parent;
    }

    public IWizardDescriptor findWizard(String id) {
        return this.findWizard(id, true);
    }

    public IWizardCategory findCategory(IPath path) {
        return this.findChildCollection(path);
    }
}

