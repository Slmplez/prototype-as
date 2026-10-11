/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IAggregateWorkingSet;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.internal.AbstractWorkingSet;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.Util;

public class AggregateWorkingSet
extends AbstractWorkingSet
implements IAggregateWorkingSet,
IPropertyChangeListener {
    private IWorkingSet[] components;
    private boolean inElementConstruction = false;

    public AggregateWorkingSet(String name, String label, IWorkingSet[] components) {
        super(name, label);
        IWorkingSet[] componentCopy = new IWorkingSet[components.length];
        System.arraycopy(components, 0, componentCopy, 0, components.length);
        this.internalSetComponents(componentCopy);
        this.constructElements(false);
    }

    public AggregateWorkingSet(String name, String label, IMemento memento) {
        super(name, label);
        String uniqueId;
        this.workingSetMemento = memento;
        if (this.workingSetMemento != null && (uniqueId = this.workingSetMemento.getString("id")) != null) {
            this.setUniqueId(uniqueId);
        }
    }

    void setComponents(IWorkingSet[] components) {
        this.internalSetComponents(components);
        this.constructElements(true);
    }

    private void internalSetComponents(IWorkingSet[] components) {
        this.components = components;
    }

    private void constructElements(boolean fireEvent) {
        if (this.inElementConstruction) {
            String msg = NLS.bind((String)WorkbenchMessages.ProblemCyclicDependency, (Object)this.getName());
            WorkbenchPlugin.log(msg);
            throw new IllegalStateException(msg);
        }
        this.inElementConstruction = true;
        try {
            HashSet<IAdaptable> elements = new HashSet<IAdaptable>();
            IWorkingSet[] localComponents = this.getComponentsInternal();
            int i = 0;
            while (i < localComponents.length) {
                IWorkingSet workingSet = localComponents[i];
                try {
                    IAdaptable[] componentElements = workingSet.getElements();
                    elements.addAll(Arrays.asList(componentElements));
                }
                catch (IllegalStateException illegalStateException) {
                    IWorkingSet[] tmp = new IWorkingSet[this.components.length - 1];
                    if (i > 0) {
                        System.arraycopy(this.components, 0, tmp, 0, i);
                    }
                    if (this.components.length - i - 1 > 0) {
                        System.arraycopy(this.components, i + 1, tmp, i, this.components.length - i - 1);
                    }
                    this.components = tmp;
                    this.workingSetMemento = null;
                    this.fireWorkingSetChanged("workingSetContentChange", null);
                }
                ++i;
            }
            this.internalSetElements(elements.toArray(new IAdaptable[elements.size()]));
            if (fireEvent) {
                this.fireWorkingSetChanged("workingSetContentChange", null);
            }
        }
        finally {
            this.inElementConstruction = false;
        }
    }

    public String getId() {
        return null;
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_WORKING_SETS");
    }

    public void setElements(IAdaptable[] elements) {
    }

    public void setId(String id) {
    }

    public boolean isEditable() {
        return false;
    }

    public boolean isVisible() {
        return false;
    }

    public void saveState(IMemento memento) {
        if (this.workingSetMemento != null) {
            memento.putMemento(this.workingSetMemento);
        } else {
            memento.putString("name", this.getName());
            memento.putString("label", this.getLabel());
            memento.putString("id", this.getUniqueId());
            memento.putString("aggregate", Boolean.TRUE.toString());
            IWorkingSet[] localComponents = this.getComponentsInternal();
            int i = 0;
            while (i < localComponents.length) {
                IWorkingSet componentSet = localComponents[i];
                memento.createChild("workingSet", componentSet.getName());
                ++i;
            }
        }
    }

    public void connect(IWorkingSetManager manager) {
        manager.addPropertyChangeListener(this);
        super.connect(manager);
    }

    public void disconnect() {
        IWorkingSetManager connectedManager = this.getManager();
        if (connectedManager != null) {
            connectedManager.removePropertyChangeListener(this);
        }
        super.disconnect();
    }

    public IWorkingSet[] getComponents() {
        IWorkingSet[] localComponents = this.getComponentsInternal();
        IWorkingSet[] copiedArray = new IWorkingSet[localComponents.length];
        System.arraycopy(localComponents, 0, copiedArray, 0, localComponents.length);
        return copiedArray;
    }

    private IWorkingSet[] getComponentsInternal() {
        if (this.components == null) {
            this.restoreWorkingSet();
            this.workingSetMemento = null;
        }
        return this.components;
    }

    public void propertyChange(PropertyChangeEvent event) {
        block4: {
            String property;
            block5: {
                property = event.getProperty();
                if (!property.equals("workingSetRemove")) break block5;
                Object[] localComponents = this.getComponentsInternal();
                int i = 0;
                while (i < localComponents.length) {
                    IWorkingSet set = localComponents[i];
                    if (set.equals(event.getOldValue())) {
                        Object[] newComponents = new IWorkingSet[localComponents.length - 1];
                        Util.arrayCopyWithRemoval(localComponents, newComponents, i);
                        this.setComponents((IWorkingSet[])newComponents);
                    }
                    ++i;
                }
                break block4;
            }
            if (!property.equals("workingSetContentChange")) break block4;
            IWorkingSet[] localComponents = this.getComponentsInternal();
            int i = 0;
            while (i < localComponents.length) {
                IWorkingSet set = localComponents[i];
                if (set.equals(event.getNewValue())) {
                    this.constructElements(true);
                    break;
                }
                ++i;
            }
        }
    }

    void restoreWorkingSet() {
        IWorkingSetManager manager = this.getManager();
        if (manager == null) {
            throw new IllegalStateException();
        }
        IMemento[] workingSetReferences = this.workingSetMemento.getChildren("workingSet");
        ArrayList<IWorkingSet> list = new ArrayList<IWorkingSet>(workingSetReferences.length);
        int i = 0;
        while (i < workingSetReferences.length) {
            IMemento setReference = workingSetReferences[i];
            String setId = setReference.getID();
            IWorkingSet set = manager.getWorkingSet(setId);
            if (set != null) {
                list.add(set);
            }
            ++i;
        }
        this.internalSetComponents(list.toArray(new IWorkingSet[list.size()]));
        this.constructElements(false);
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof AggregateWorkingSet) {
            AggregateWorkingSet workingSet = (AggregateWorkingSet)object;
            return Util.equals(workingSet.getName(), this.getName()) && Util.equals(workingSet.getComponentsInternal(), this.getComponentsInternal());
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.getName().hashCode() & this.getComponentsInternal().hashCode();
        return hashCode;
    }

    public boolean isSelfUpdating() {
        IWorkingSet[] localComponents = this.getComponentsInternal();
        if (localComponents == null || localComponents.length == 0) {
            return false;
        }
        int i = 0;
        while (i < localComponents.length) {
            if (!localComponents[i].isSelfUpdating()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isAggregateWorkingSet() {
        return true;
    }

    public IAdaptable[] adaptElements(IAdaptable[] objects) {
        return new IAdaptable[0];
    }
}

