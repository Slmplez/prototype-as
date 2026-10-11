/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventIterator
 *  com.sun.jdi.event.EventQueue
 *  com.sun.jdi.event.EventSet
 *  com.sun.jdi.event.VMDeathEvent
 *  com.sun.jdi.event.VMDisconnectEvent
 *  com.sun.jdi.event.VMStartEvent
 *  com.sun.jdi.request.EventRequest
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 */
package org.eclipse.jdt.internal.debug.core;

import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventIterator;
import com.sun.jdi.event.EventQueue;
import com.sun.jdi.event.EventSet;
import com.sun.jdi.event.VMDeathEvent;
import com.sun.jdi.event.VMDisconnectEvent;
import com.sun.jdi.event.VMStartEvent;
import com.sun.jdi.request.EventRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.IJDIEventListener;
import org.eclipse.jdt.internal.debug.core.JDIDebugMessages;
import org.eclipse.jdt.internal.debug.core.JDIDebugOptions;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public class EventDispatcher
implements Runnable {
    private JDIDebugTarget fTarget;
    private boolean fShutdown;
    private HashMap fEventHandlers;
    private Map fSetToQueue = new HashMap();

    public EventDispatcher(JDIDebugTarget target) {
        this.fEventHandlers = new HashMap(10);
        this.fTarget = target;
        this.fShutdown = false;
    }

    private void dispatch(EventSet eventSet) {
        IJDIEventListener listener;
        Event event;
        if (this.isShutdown()) {
            return;
        }
        if (JDIDebugOptions.DEBUG_JDI_EVENTS) {
            EventIterator eventIter = eventSet.eventIterator();
            System.out.print("JDI Event Set: {");
            while (eventIter.hasNext()) {
                System.out.print(eventIter.next());
                if (!eventIter.hasNext()) continue;
                System.out.print(", ");
            }
            System.out.println("}");
        }
        EventIterator iter = eventSet.eventIterator();
        IJDIEventListener[] listeners = new IJDIEventListener[eventSet.size()];
        boolean vote = false;
        boolean resume = true;
        int index = -1;
        ArrayList<Event> deferredEvents = null;
        while (iter.hasNext()) {
            ++index;
            if (this.isShutdown()) {
                return;
            }
            event = iter.nextEvent();
            if (event == null) continue;
            listeners[index] = listener = (IJDIEventListener)this.fEventHandlers.get(event.request());
            if (listener != null) {
                if (listener instanceof IJavaLineBreakpoint) {
                    try {
                        if (((IJavaLineBreakpoint)((Object)listener)).isConditionEnabled()) {
                            if (deferredEvents == null) {
                                deferredEvents = new ArrayList<Event>(5);
                            }
                            deferredEvents.add(event);
                            continue;
                        }
                    }
                    catch (CoreException exception) {
                        JDIDebugPlugin.log(exception);
                    }
                }
                vote = true;
                resume = listener.handleEvent(event, this.fTarget, !resume, eventSet) && resume;
                continue;
            }
            if (event instanceof VMDeathEvent) {
                this.fTarget.handleVMDeath((VMDeathEvent)event);
                this.shutdown();
                continue;
            }
            if (event instanceof VMDisconnectEvent) {
                this.fTarget.handleVMDisconnect((VMDisconnectEvent)event);
                this.shutdown();
                continue;
            }
            if (!(event instanceof VMStartEvent)) continue;
            this.fTarget.handleVMStart((VMStartEvent)event);
        }
        if (deferredEvents != null) {
            Iterator deferredIter = deferredEvents.iterator();
            while (deferredIter.hasNext()) {
                IJDIEventListener listener2;
                if (this.isShutdown()) {
                    return;
                }
                Event event2 = (Event)deferredIter.next();
                if (event2 == null || (listener2 = (IJDIEventListener)this.fEventHandlers.get(event2.request())) == null) continue;
                vote = true;
                boolean bl = resume = listener2.handleEvent(event2, this.fTarget, !resume, eventSet) && resume;
            }
        }
        index = -1;
        iter = eventSet.eventIterator();
        while (iter.hasNext()) {
            event = iter.nextEvent();
            if ((listener = listeners[++index]) == null) continue;
            listener.eventSetComplete(event, this.fTarget, !resume, eventSet);
        }
        this.fireEvents(eventSet);
        if (vote && resume) {
            try {
                eventSet.resume();
            }
            catch (VMDisconnectedException vMDisconnectedException) {
            }
            catch (RuntimeException e) {
                try {
                    this.fTarget.targetRequestFailed(JDIDebugMessages.EventDispatcher_0, e);
                }
                catch (DebugException de) {
                    JDIDebugPlugin.log(de);
                }
            }
        }
    }

    public void run() {
        VirtualMachine vm = this.fTarget.getVM();
        if (vm != null) {
            EventQueue q = vm.eventQueue();
            EventSet eventSet = null;
            while (!this.isShutdown()) {
                try {
                    try {
                        eventSet = q.remove(1000L);
                    }
                    catch (VMDisconnectedException vMDisconnectedException) {
                        break;
                    }
                    if (this.isShutdown() || eventSet == null) continue;
                    final EventSet set = eventSet;
                    Job job = new Job("JDI Event Dispatch"){

                        protected IStatus run(IProgressMonitor monitor) {
                            EventDispatcher.this.dispatch(set);
                            return Status.OK_STATUS;
                        }

                        public boolean belongsTo(Object family) {
                            if (family instanceof Class) {
                                Class clazz = (Class)family;
                                EventIterator iterator = set.eventIterator();
                                while (iterator.hasNext()) {
                                    Event event = iterator.nextEvent();
                                    if (!clazz.isInstance(event)) continue;
                                    return true;
                                }
                            }
                            return false;
                        }
                    };
                    job.setSystem(true);
                    job.schedule();
                }
                catch (InterruptedException interruptedException) {
                    break;
                }
            }
        }
    }

    public void shutdown() {
        this.fShutdown = true;
    }

    private boolean isShutdown() {
        return this.fShutdown;
    }

    public void addJDIEventListener(IJDIEventListener listener, EventRequest request) {
        this.fEventHandlers.put(request, listener);
    }

    public void removeJDIEventListener(IJDIEventListener listener, EventRequest request) {
        this.fEventHandlers.remove(request);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void queue(DebugEvent event, EventSet set) {
        Map map = this.fSetToQueue;
        synchronized (map) {
            ArrayList<DebugEvent> list = (ArrayList<DebugEvent>)this.fSetToQueue.get(set);
            if (list == null) {
                list = new ArrayList<DebugEvent>(5);
                this.fSetToQueue.put(set, list);
            }
            list.add(event);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void fireEvents(EventSet set) {
        DebugPlugin plugin = DebugPlugin.getDefault();
        if (plugin != null) {
            List list = null;
            Map map = this.fSetToQueue;
            synchronized (map) {
                list = (List)this.fSetToQueue.remove(set);
            }
            if (list != null) {
                DebugEvent[] events = list.toArray(new DebugEvent[list.size()]);
                plugin.fireDebugEventSet(events);
            }
        }
    }
}

