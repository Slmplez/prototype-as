/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlConstraintDescriptor;
import org.eclipse.emf.validation.service.ConstraintChangeEvent;
import org.eclipse.emf.validation.service.ConstraintChangeEventType;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IConstraintListener;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintRegistry {
    private static final ConstraintRegistry INSTANCE = new ConstraintRegistry();
    private final Map<String, IConstraintDescriptor> descriptors = new HashMap<String, IConstraintDescriptor>();
    private volatile IConstraintListener[] constraintListeners;

    private ConstraintRegistry() {
    }

    public static ConstraintRegistry getInstance() {
        return INSTANCE;
    }

    public IConstraintDescriptor getDescriptor(String id) {
        return this.descriptors.get(id);
    }

    public IConstraintDescriptor getDescriptor(String pluginId, String id) {
        return this.descriptors.get(XmlConstraintDescriptor.normalizedId(pluginId, id));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection<IConstraintDescriptor> getAllDescriptors() {
        Map<String, IConstraintDescriptor> map = this.descriptors;
        synchronized (map) {
            return new ArrayList<IConstraintDescriptor>(this.descriptors.values());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void register(IConstraintDescriptor descriptor) throws ConstraintExistsException {
        boolean registered;
        Map<String, IConstraintDescriptor> map = this.descriptors;
        synchronized (map) {
            registered = this.doRegister(descriptor);
        }
        if (registered) {
            this.broadcastConstraintChangeEvent(new ConstraintChangeEvent(descriptor, ConstraintChangeEventType.REGISTERED));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unregister(IConstraintDescriptor descriptor) {
        boolean unregistered;
        assert (descriptor != null);
        Map<String, IConstraintDescriptor> map = this.descriptors;
        synchronized (map) {
            unregistered = this.descriptors.remove(descriptor.getId()) != null;
        }
        if (unregistered) {
            this.broadcastConstraintChangeEvent(new ConstraintChangeEvent(descriptor, ConstraintChangeEventType.UNREGISTERED));
        }
    }

    public synchronized void addConstraintListener(IConstraintListener listener) {
        if (this.indexOf(listener) < 0) {
            if (this.constraintListeners == null) {
                this.constraintListeners = new IConstraintListener[]{listener};
            } else {
                IConstraintListener[] newListeners = new IConstraintListener[this.constraintListeners.length + 1];
                System.arraycopy(this.constraintListeners, 0, newListeners, 0, this.constraintListeners.length);
                newListeners[this.constraintListeners.length] = listener;
                this.constraintListeners = newListeners;
            }
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Registered constraint listener: " + listener.getClass().getName());
            }
        }
    }

    public synchronized void removeConstraintListener(IConstraintListener listener) {
        int index = this.indexOf(listener);
        if (index >= 0) {
            IConstraintListener[] newListeners = new IConstraintListener[this.constraintListeners.length - 1];
            System.arraycopy(this.constraintListeners, 0, newListeners, 0, index);
            System.arraycopy(this.constraintListeners, index + 1, newListeners, index, this.constraintListeners.length - index - 1);
            this.constraintListeners = newListeners;
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Deregistered constraint listener: " + listener.getClass().getName());
            }
        }
    }

    private int indexOf(IConstraintListener listener) {
        int result = -1;
        if (this.constraintListeners != null) {
            int i = 0;
            while (i < this.constraintListeners.length) {
                if (this.constraintListeners[i] == listener) {
                    result = i;
                    break;
                }
                ++i;
            }
        }
        return result;
    }

    public void broadcastConstraintChangeEvent(ConstraintChangeEvent event) {
        if (this.constraintListeners == null) {
            return;
        }
        IConstraintListener[] array = this.constraintListeners;
        int i = 0;
        while (i < array.length) {
            try {
                array[i].constraintChanged(event);
            }
            catch (Exception e) {
                Trace.catching(this.getClass(), "broadcastConstraintChangeEvent", e);
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                    Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Uncaught exception in constraint listener: " + array[i].getClass().getName());
                }
                Log.l7dWarning(130, EMFModelValidationStatusCodes.LISTENER_UNCAUGHT_EXCEPTION_MSG, e);
            }
            ++i;
        }
    }

    private boolean doRegister(IConstraintDescriptor descriptor) throws ConstraintExistsException {
        boolean result = false;
        String id = descriptor.getId();
        IConstraintDescriptor existing = this.descriptors.get(id);
        if (existing == null) {
            result = true;
            this.descriptors.put(id, descriptor);
        } else if (existing != descriptor) {
            throw new ConstraintExistsException(id);
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void bulkRegister(Collection<? extends IConstraintDescriptor> constraints) throws ConstraintExistsException {
        ArrayList<IConstraintDescriptor> registered = new ArrayList<IConstraintDescriptor>(constraints.size());
        Map<String, IConstraintDescriptor> map = this.descriptors;
        synchronized (map) {
            for (IConstraintDescriptor iConstraintDescriptor : constraints) {
                if (!this.doRegister(iConstraintDescriptor)) continue;
                registered.add(iConstraintDescriptor);
            }
        }
        if (!registered.isEmpty()) {
            ConstraintChangeEvent event = new ConstraintChangeEvent(null, ConstraintChangeEventType.REGISTERED);
            for (IConstraintDescriptor iConstraintDescriptor : registered) {
                event.setConstraint(iConstraintDescriptor);
                this.broadcastConstraintChangeEvent(event);
            }
        }
    }
}

