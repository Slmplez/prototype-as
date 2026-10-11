/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.resource;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ResourceManager;

abstract class AbstractResourceManager
extends ResourceManager {
    private HashMap map = null;

    AbstractResourceManager() {
    }

    protected abstract Object allocate(DeviceResourceDescriptor var1) throws DeviceResourceException;

    protected abstract void deallocate(Object var1, DeviceResourceDescriptor var2);

    public final Object create(DeviceResourceDescriptor descriptor) throws DeviceResourceException {
        RefCount count;
        if (this.map == null) {
            this.map = new HashMap();
        }
        if ((count = (RefCount)this.map.get(descriptor)) != null) {
            ++count.count;
            return count.resource;
        }
        Object resource = this.allocate(descriptor);
        count = new RefCount(resource);
        this.map.put(descriptor, count);
        return resource;
    }

    public final void destroy(DeviceResourceDescriptor descriptor) {
        if (this.map == null) {
            return;
        }
        RefCount count = (RefCount)this.map.get(descriptor);
        if (count != null) {
            --count.count;
            if (count.count == 0) {
                this.deallocate(count.resource, descriptor);
                this.map.remove(descriptor);
            }
        }
        if (this.map.isEmpty()) {
            this.map = null;
        }
    }

    public void dispose() {
        super.dispose();
        if (this.map == null) {
            return;
        }
        Set entries = this.map.entrySet();
        Iterator iter = entries.iterator();
        while (iter.hasNext()) {
            Map.Entry next = (Map.Entry)iter.next();
            Object key = next.getKey();
            RefCount val = (RefCount)next.getValue();
            this.deallocate(val.resource, (DeviceResourceDescriptor)key);
        }
        this.map = null;
    }

    public Object find(DeviceResourceDescriptor descriptor) {
        if (this.map == null) {
            return null;
        }
        RefCount refCount = (RefCount)this.map.get(descriptor);
        if (refCount == null) {
            return null;
        }
        return refCount.resource;
    }

    private static class RefCount {
        Object resource;
        int count = 1;

        RefCount(Object resource) {
            this.resource = resource;
        }
    }
}

