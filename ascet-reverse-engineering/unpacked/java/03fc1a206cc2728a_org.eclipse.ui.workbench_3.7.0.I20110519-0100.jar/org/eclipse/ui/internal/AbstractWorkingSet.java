/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.internal.AbstractWorkingSetManager;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.Util;

public abstract class AbstractWorkingSet
implements IAdaptable,
IWorkingSet {
    protected static final String FACTORY_ID = "org.eclipse.ui.internal.WorkingSetFactory";
    static final String TAG_AGGREGATE = "aggregate";
    private String name;
    protected ArrayList elements;
    private IWorkingSetManager manager;
    protected IMemento workingSetMemento;
    private String label;
    private String uniqueId;
    private static int counter;
    private boolean labelBoundToName;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public AbstractWorkingSet(String name, String label) {
        Assert.isNotNull((Object)name, (String)"name must not be null");
        this.name = name;
        this.label = label;
        this.labelBoundToName = Util.equals(name, label);
        this.uniqueId = String.valueOf(Long.toString(System.currentTimeMillis())) + "_" + counter++;
    }

    public Object getAdapter(Class adapter) {
        block12: {
            block11: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.IWorkingSet");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter == clazz) break block11;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.ui.IPersistableElement");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter != clazz2) break block12;
            }
            return this;
        }
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String newName) {
        IWorkingSet wSet;
        Assert.isNotNull((Object)newName, (String)"Working set name must not be null");
        if (this.manager != null && (wSet = this.manager.getWorkingSet(newName)) != this) {
            Assert.isTrue((wSet == null ? 1 : 0) != 0, (String)"working set with same name already registered");
        }
        this.name = newName;
        this.fireWorkingSetChanged("workingSetNameChange", null);
        if (this.labelBoundToName) {
            this.setLabel(newName);
        }
    }

    public void connect(IWorkingSetManager manager) {
        Assert.isTrue((this.manager == null ? 1 : 0) != 0, (String)"A working set can only be connected to one manager");
        this.manager = manager;
    }

    public void disconnect() {
        this.manager = null;
    }

    protected void fireWorkingSetChanged(String property, Object oldValue) {
        AbstractWorkingSetManager receiver = this.manager != null ? (AbstractWorkingSetManager)this.manager : (AbstractWorkingSetManager)WorkbenchPlugin.getDefault().getWorkingSetManager();
        receiver.workingSetChanged(this, property, oldValue);
    }

    protected void internalSetElements(IAdaptable[] newElements) {
        Assert.isNotNull((Object)newElements, (String)"Working set elements array must not be null");
        this.elements = new ArrayList(newElements.length);
        int i = 0;
        while (i < newElements.length) {
            this.elements.add(newElements[i]);
            ++i;
        }
    }

    public IAdaptable[] getElements() {
        ArrayList list = this.getElementsArray();
        return list.toArray(new IAdaptable[list.size()]);
    }

    protected ArrayList getElementsArray() {
        if (this.elements == null) {
            this.restoreWorkingSet();
            this.workingSetMemento = null;
        }
        return this.elements;
    }

    abstract void restoreWorkingSet();

    protected IWorkingSetManager getManager() {
        return this.manager;
    }

    public String getFactoryId() {
        return FACTORY_ID;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String label) {
        this.label = label == null ? this.getName() : label;
        this.labelBoundToName = Util.equals(label, this.name);
        this.fireWorkingSetChanged("workingSetLabelChange", null);
    }

    public boolean isEmpty() {
        return this.getElementsArray().isEmpty();
    }

    public final ImageDescriptor getImage() {
        return this.getImageDescriptor();
    }

    String getUniqueId() {
        return this.uniqueId;
    }

    void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }
}

