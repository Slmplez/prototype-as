/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.internal;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.AbstractWorkingSet;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkingSetManager;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;
import org.eclipse.ui.internal.util.Util;

public class WorkingSet
extends AbstractWorkingSet {
    private static final String DEFAULT_ID = "org.eclipse.ui.resourceWorkingSetPage";
    private String editPageId;
    static /* synthetic */ Class class$0;

    public WorkingSet(String name, String label, IAdaptable[] elements) {
        super(name, label);
        this.internalSetElements(elements);
    }

    protected WorkingSet(String name, String label, IMemento memento) {
        super(name, label);
        String uniqueId;
        this.workingSetMemento = memento;
        if (this.workingSetMemento != null && (uniqueId = this.workingSetMemento.getString("id")) != null) {
            this.setUniqueId(uniqueId);
        }
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof WorkingSet) {
            WorkingSet workingSet = (WorkingSet)object;
            return Util.equals(workingSet.getName(), this.getName()) && Util.equals(workingSet.getElementsArray(), this.getElementsArray()) && Util.equals(workingSet.getId(), this.getId());
        }
        return false;
    }

    public boolean isEditable() {
        WorkingSetDescriptor descriptor = this.getDescriptor(null);
        return descriptor != null && descriptor.isEditable();
    }

    public String getId() {
        return this.editPageId;
    }

    public ImageDescriptor getImageDescriptor() {
        WorkingSetDescriptor descriptor = this.getDescriptor(DEFAULT_ID);
        if (descriptor == null) {
            return null;
        }
        return descriptor.getIcon();
    }

    public int hashCode() {
        int hashCode = this.getName().hashCode();
        if (this.editPageId != null) {
            hashCode &= this.editPageId.hashCode();
        }
        return hashCode;
    }

    void restoreWorkingSet() {
        IMemento[] itemMementos = this.workingSetMemento.getChildren("item");
        final HashSet items = new HashSet();
        int i = 0;
        while (i < itemMementos.length) {
            final IMemento itemMemento = itemMementos[i];
            final String factoryID = itemMemento.getString("factoryID");
            if (factoryID == null) {
                WorkbenchPlugin.log("Unable to restore working set item - no factory ID.");
            } else {
                final IElementFactory factory = PlatformUI.getWorkbench().getElementFactory(factoryID);
                if (factory == null) {
                    WorkbenchPlugin.log("Unable to restore working set item - cannot instantiate factory: " + factoryID);
                } else {
                    SafeRunner.run((ISafeRunnable)new SafeRunnable("Unable to restore working set item - exception while invoking factory: " + factoryID){

                        public void run() throws Exception {
                            IAdaptable item = factory.createElement(itemMemento);
                            if (item == null) {
                                if (Policy.DEBUG_WORKING_SETS) {
                                    WorkbenchPlugin.log("Unable to restore working set item - cannot instantiate item: " + factoryID);
                                }
                            } else {
                                items.add(item);
                            }
                        }
                    });
                }
            }
            ++i;
        }
        this.internalSetElements(items.toArray(new IAdaptable[items.size()]));
    }

    public void saveState(IMemento memento) {
        if (this.workingSetMemento != null) {
            memento.putMemento(this.workingSetMemento);
        } else {
            memento.putString("name", this.getName());
            memento.putString("label", this.getLabel());
            memento.putString("id", this.getUniqueId());
            memento.putString("editPageId", this.editPageId);
            Iterator iterator = this.elements.iterator();
            while (iterator.hasNext()) {
                IPersistableElement persistable;
                IAdaptable adaptable = (IAdaptable)iterator.next();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.ui.IPersistableElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((persistable = (IPersistableElement)Util.getAdapter(adaptable, clazz)) == null) continue;
                final IMemento itemMemento = memento.createChild("item");
                itemMemento.putString("factoryID", persistable.getFactoryId());
                SafeRunner.run((ISafeRunnable)new SafeRunnable("Problems occurred while saving persistable item state"){

                    public void run() throws Exception {
                        persistable.saveState(itemMemento);
                    }
                });
            }
        }
    }

    public void setElements(IAdaptable[] newElements) {
        this.internalSetElements(newElements);
        this.fireWorkingSetChanged("workingSetContentChange", null);
    }

    public void setId(String pageId) {
        this.editPageId = pageId;
    }

    public boolean isVisible() {
        return true;
    }

    public boolean isSelfUpdating() {
        WorkingSetDescriptor descriptor = this.getDescriptor(null);
        return descriptor != null && descriptor.getUpdaterClassName() != null;
    }

    public boolean isAggregateWorkingSet() {
        return false;
    }

    private WorkingSetDescriptor getDescriptor(String defaultId) {
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        String id = this.getId();
        if (id == null) {
            id = defaultId;
        }
        if (id == null) {
            return null;
        }
        return registry.getWorkingSetDescriptor(id);
    }

    public IAdaptable[] adaptElements(IAdaptable[] objects) {
        IWorkingSetManager manager = this.getManager();
        if (manager instanceof WorkingSetManager) {
            WorkingSetDescriptor descriptor = this.getDescriptor(null);
            if (descriptor == null || !descriptor.isElementAdapterClassLoaded()) {
                return objects;
            }
            return ((WorkingSetManager)manager).getElementAdapter(descriptor).adaptElements(this, objects);
        }
        return objects;
    }
}

