/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.IWorkingSetPage;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;
import org.eclipse.ui.internal.registry.WorkingSetRegistryReader;

public class WorkingSetRegistry
implements IExtensionChangeHandler {
    private static final String DEFAULT_PAGE_ID = "org.eclipse.ui.resourceWorkingSetPage";
    private HashMap workingSetDescriptors = new HashMap();

    public WorkingSetRegistry() {
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "workingSets");
    }

    public void addWorkingSetDescriptor(WorkingSetDescriptor descriptor) {
        Assert.isTrue((!this.workingSetDescriptors.containsValue(descriptor) ? 1 : 0) != 0, (String)"working set descriptor already registered");
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerObject(descriptor.getConfigurationElement().getDeclaringExtension(), (Object)descriptor, 2);
        this.workingSetDescriptors.put(descriptor.getId(), descriptor);
    }

    public IWorkingSetPage getDefaultWorkingSetPage() {
        WorkingSetDescriptor descriptor = (WorkingSetDescriptor)this.workingSetDescriptors.get(DEFAULT_PAGE_ID);
        if (descriptor != null) {
            return descriptor.createWorkingSetPage();
        }
        return null;
    }

    public WorkingSetDescriptor getWorkingSetDescriptor(String pageId) {
        return (WorkingSetDescriptor)this.workingSetDescriptors.get(pageId);
    }

    public WorkingSetDescriptor[] getWorkingSetDescriptors() {
        return this.workingSetDescriptors.values().toArray(new WorkingSetDescriptor[this.workingSetDescriptors.size()]);
    }

    public WorkingSetDescriptor[] getNewPageWorkingSetDescriptors() {
        Collection descriptors = this.workingSetDescriptors.values();
        ArrayList<WorkingSetDescriptor> result = new ArrayList<WorkingSetDescriptor>(descriptors.size());
        Iterator iter = descriptors.iterator();
        while (iter.hasNext()) {
            WorkingSetDescriptor descriptor = (WorkingSetDescriptor)iter.next();
            if (descriptor.getPageClassName() == null) continue;
            result.add(descriptor);
        }
        return result.toArray(new WorkingSetDescriptor[result.size()]);
    }

    public boolean hasNewPageWorkingSetDescriptor() {
        Collection descriptors = this.workingSetDescriptors.values();
        Iterator iter = descriptors.iterator();
        while (iter.hasNext()) {
            WorkingSetDescriptor descriptor = (WorkingSetDescriptor)iter.next();
            if (descriptor.getPageClassName() == null) continue;
            return true;
        }
        return false;
    }

    public WorkingSetDescriptor[] getUpdaterDescriptorsForNamespace(String namespace) {
        if (namespace == null) {
            return new WorkingSetDescriptor[0];
        }
        Collection descriptors = this.workingSetDescriptors.values();
        ArrayList<WorkingSetDescriptor> result = new ArrayList<WorkingSetDescriptor>();
        Iterator iter = descriptors.iterator();
        while (iter.hasNext()) {
            WorkingSetDescriptor descriptor = (WorkingSetDescriptor)iter.next();
            if (!namespace.equals(descriptor.getUpdaterNamespace())) continue;
            result.add(descriptor);
        }
        return result.toArray(new WorkingSetDescriptor[result.size()]);
    }

    public WorkingSetDescriptor[] getElementAdapterDescriptorsForNamespace(String namespace) {
        if (namespace == null) {
            return new WorkingSetDescriptor[0];
        }
        Collection descriptors = this.workingSetDescriptors.values();
        ArrayList<WorkingSetDescriptor> result = new ArrayList<WorkingSetDescriptor>();
        Iterator iter = descriptors.iterator();
        while (iter.hasNext()) {
            WorkingSetDescriptor descriptor = (WorkingSetDescriptor)iter.next();
            if (!namespace.equals(descriptor.getDeclaringNamespace())) continue;
            result.add(descriptor);
        }
        return result.toArray(new WorkingSetDescriptor[result.size()]);
    }

    public IWorkingSetPage getWorkingSetPage(String pageId) {
        WorkingSetDescriptor descriptor = (WorkingSetDescriptor)this.workingSetDescriptors.get(pageId);
        if (descriptor == null) {
            return null;
        }
        return descriptor.createWorkingSetPage();
    }

    public void load() {
        WorkingSetRegistryReader reader = new WorkingSetRegistryReader();
        reader.readWorkingSets(Platform.getExtensionRegistry(), this);
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        WorkingSetRegistryReader reader = new WorkingSetRegistryReader(this);
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            reader.readElement(elements[i]);
            ++i;
        }
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof WorkingSetDescriptor) {
                WorkingSetDescriptor desc = (WorkingSetDescriptor)objects[i];
                this.workingSetDescriptors.remove(desc.getId());
            }
            ++i;
        }
    }
}

