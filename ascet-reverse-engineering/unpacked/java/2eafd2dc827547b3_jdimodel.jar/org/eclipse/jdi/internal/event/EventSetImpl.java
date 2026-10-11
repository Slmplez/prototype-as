/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.event.EventIterator
 *  com.sun.jdi.event.EventSet
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.InternalException;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.EventIterator;
import com.sun.jdi.event.EventSet;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.event.EventIteratorImpl;
import org.eclipse.jdi.internal.event.EventMessages;
import org.eclipse.jdi.internal.request.EventRequestImpl;

public class EventSetImpl
extends MirrorImpl
implements EventSet {
    private List fEvents;
    private byte fSuspendPolicy;

    private EventSetImpl(VirtualMachineImpl vmImpl) {
        super("EventSet", vmImpl);
    }

    public EventSetImpl(VirtualMachineImpl vmImpl, EventImpl[] events) {
        this(vmImpl);
        this.fEvents = new ArrayList(events.length);
        int i = 0;
        while (i < events.length) {
            this.fEvents.add(events[i]);
            ++i;
        }
    }

    public EventSetImpl(VirtualMachineImpl vmImpl, EventImpl event) {
        this(vmImpl);
        this.fEvents = new ArrayList(1);
        this.fEvents.add(event);
    }

    public EventIterator eventIterator() {
        return new EventIteratorImpl(this.fEvents.listIterator());
    }

    public int suspendPolicy() {
        switch (this.fSuspendPolicy) {
            case 0: {
                return 0;
            }
            case 1: {
                return 1;
            }
            case 2: {
                return 2;
            }
        }
        throw new InternalException(String.valueOf(EventMessages.EventSetImpl_Invalid_suspend_policy_encountered___1) + this.fSuspendPolicy);
    }

    public void resume() {
        switch (this.fSuspendPolicy) {
            case 0: {
                break;
            }
            case 1: {
                this.resumeThreads();
                break;
            }
            case 2: {
                this.virtualMachineImpl().resume();
                break;
            }
            default: {
                throw new InternalException(String.valueOf(EventMessages.EventSetImpl_Invalid_suspend_policy_encountered___1) + this.fSuspendPolicy);
            }
        }
    }

    private void resumeThreads() {
        if (this.fEvents.size() == 1) {
            ThreadReference ref = ((EventImpl)this.fEvents.get(0)).thread();
            if (ref != null) {
                ref.resume();
            } else {
                ((EventImpl)this.fEvents.get(0)).virtualMachine().resume();
            }
            return;
        }
        Iterator iter = this.fEvents.iterator();
        ArrayList<ThreadReference> resumedThreads = new ArrayList<ThreadReference>(this.fEvents.size());
        while (iter.hasNext()) {
            EventImpl event = (EventImpl)iter.next();
            ThreadReference thread = event.thread();
            if (thread == null) {
                event.virtualMachine().resume();
                return;
            }
            if (resumedThreads.contains(thread)) continue;
            resumedThreads.add(thread);
        }
        Iterator resumeIter = resumedThreads.iterator();
        while (resumeIter.hasNext()) {
            ((ThreadReference)resumeIter.next()).resume();
        }
    }

    public static EventSetImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        EventSetImpl eventSet = new EventSetImpl(vmImpl);
        eventSet.fSuspendPolicy = target.readByte("suspendPolicy", EventRequestImpl.suspendPolicyMap(), in);
        int size = target.readInt("size", in);
        eventSet.fEvents = new ArrayList(size);
        while (size-- > 0) {
            EventRequestImpl request;
            EventImpl event = EventImpl.read(target, in);
            if (event == null || (request = (EventRequestImpl)event.request()) != null && request.isGeneratedInside()) continue;
            eventSet.fEvents.add(event);
        }
        return eventSet;
    }

    public boolean contains(Object event) {
        return this.fEvents.contains(event);
    }

    public boolean containsAll(Collection events) {
        return this.fEvents.containsAll(events);
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fEvents.equals(((EventSetImpl)object).fEvents);
    }

    public int hashCode() {
        return this.fEvents.hashCode();
    }

    public boolean isEmpty() {
        return this.fEvents.isEmpty();
    }

    public Iterator iterator() {
        return this.fEvents.iterator();
    }

    public int size() {
        return this.fEvents.size();
    }

    public Object[] toArray() {
        return this.fEvents.toArray();
    }

    public Object[] toArray(Object[] events) {
        return this.fEvents.toArray(events);
    }

    public boolean add(Object arg1) {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }

    public boolean addAll(Collection arg1) {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }

    public void clear() {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }

    public boolean remove(Object arg1) {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }

    public boolean removeAll(Collection arg1) {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }

    public boolean retainAll(Collection arg1) {
        throw new UnsupportedOperationException(EventMessages.EventSetImpl_EventSets_are_unmodifiable_3);
    }
}

