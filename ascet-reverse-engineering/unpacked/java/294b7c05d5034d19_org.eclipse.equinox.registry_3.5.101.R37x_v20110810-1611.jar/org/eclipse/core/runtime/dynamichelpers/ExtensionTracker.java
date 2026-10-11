/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.ReferenceHashSet
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.runtime.dynamichelpers;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.runtime.ReferenceHashSet;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IFilter;

public class ExtensionTracker
implements IExtensionTracker,
IRegistryChangeListener {
    private Map extensionToObjects = new HashMap();
    private ListenerList handlers = new ListenerList();
    private final Object lock = new Object();
    private boolean closed = false;
    private IExtensionRegistry registry;
    private static final Object[] EMPTY_ARRAY = new Object[0];

    public ExtensionTracker() {
        this(RegistryFactory.getRegistry());
    }

    public ExtensionTracker(IExtensionRegistry theRegistry) {
        this.registry = theRegistry;
        if (this.registry != null) {
            this.registry.addRegistryChangeListener(this);
        } else {
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.registry_no_default, null));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registerHandler(IExtensionChangeHandler handler, IFilter filter) {
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
            this.handlers.add((Object)new HandlerWrapper(handler, filter));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unregisterHandler(IExtensionChangeHandler handler) {
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
            this.handlers.remove((Object)new HandlerWrapper(handler, null));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registerObject(IExtension element, Object object, int referenceType) {
        if (element == null || object == null) {
            return;
        }
        Object object2 = this.lock;
        synchronized (object2) {
            if (this.closed) {
                return;
            }
            ReferenceHashSet associatedObjects = (ReferenceHashSet)this.extensionToObjects.get(element);
            if (associatedObjects == null) {
                associatedObjects = new ReferenceHashSet();
                this.extensionToObjects.put(element, associatedObjects);
            }
            associatedObjects.add(object, referenceType);
        }
    }

    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] delta = event.getExtensionDeltas();
        int len = delta.length;
        int i = 0;
        while (i < len) {
            switch (delta[i].getKind()) {
                case 1: {
                    this.doAdd(delta[i]);
                    break;
                }
                case 2: {
                    this.doRemove(delta[i]);
                    break;
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void notify(IExtensionDelta delta, Object[] objects) {
        Object[] handlersCopy = null;
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
            if (this.handlers == null || this.handlers.isEmpty()) {
                return;
            }
            handlersCopy = this.handlers.getListeners();
        }
        int i = 0;
        while (i < handlersCopy.length) {
            HandlerWrapper wrapper = (HandlerWrapper)handlersCopy[i];
            if (wrapper.filter == null || wrapper.filter.matches(delta.getExtensionPoint())) {
                if (objects == null) {
                    this.applyAdd(wrapper.handler, delta.getExtension());
                } else {
                    this.applyRemove(wrapper.handler, delta.getExtension(), objects);
                }
            }
            ++i;
        }
    }

    protected void applyAdd(IExtensionChangeHandler handler, IExtension extension) {
        handler.addExtension(this, extension);
    }

    private void doAdd(IExtensionDelta delta) {
        this.notify(delta, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void doRemove(IExtensionDelta delta) {
        Object[] removedObjects = null;
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
            ReferenceHashSet associatedObjects = (ReferenceHashSet)this.extensionToObjects.remove(delta.getExtension());
            removedObjects = associatedObjects == null ? EMPTY_ARRAY : associatedObjects.toArray();
        }
        this.notify(delta, removedObjects);
    }

    protected void applyRemove(IExtensionChangeHandler handler, IExtension removedExtension, Object[] removedObjects) {
        handler.removeExtension(removedExtension, removedObjects);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object[] getObjects(IExtension element) {
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return EMPTY_ARRAY;
            }
            ReferenceHashSet objectSet = (ReferenceHashSet)this.extensionToObjects.get(element);
            if (objectSet == null) {
                return EMPTY_ARRAY;
            }
            return objectSet.toArray();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void close() {
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return;
            }
            if (this.registry != null) {
                this.registry.removeRegistryChangeListener(this);
            }
            this.extensionToObjects = null;
            this.handlers = null;
            this.closed = true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unregisterObject(IExtension extension, Object object) {
        Object object2 = this.lock;
        synchronized (object2) {
            if (this.closed) {
                return;
            }
            ReferenceHashSet associatedObjects = (ReferenceHashSet)this.extensionToObjects.get(extension);
            if (associatedObjects != null) {
                associatedObjects.remove(object);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object[] unregisterObject(IExtension extension) {
        Object object = this.lock;
        synchronized (object) {
            if (this.closed) {
                return EMPTY_ARRAY;
            }
            ReferenceHashSet associatedObjects = (ReferenceHashSet)this.extensionToObjects.remove(extension);
            if (associatedObjects == null) {
                return EMPTY_ARRAY;
            }
            return associatedObjects.toArray();
        }
    }

    public static IFilter createExtensionPointFilter(final IExtensionPoint xpt) {
        return new IFilter(){

            public boolean matches(IExtensionPoint target) {
                return xpt.equals(target);
            }
        };
    }

    public static IFilter createExtensionPointFilter(final IExtensionPoint[] xpts) {
        return new IFilter(){

            public boolean matches(IExtensionPoint target) {
                int i = 0;
                while (i < xpts.length) {
                    if (xpts[i].equals(target)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
        };
    }

    public static IFilter createNamespaceFilter(final String id) {
        return new IFilter(){

            public boolean matches(IExtensionPoint target) {
                return id.equals(target.getNamespaceIdentifier());
            }
        };
    }

    private class HandlerWrapper {
        IExtensionChangeHandler handler;
        IFilter filter;

        public HandlerWrapper(IExtensionChangeHandler handler, IFilter filter) {
            this.handler = handler;
            this.filter = filter;
        }

        public boolean equals(Object target) {
            return this.handler.equals(((HandlerWrapper)target).handler);
        }

        public int hashCode() {
            return this.handler.hashCode();
        }
    }
}

