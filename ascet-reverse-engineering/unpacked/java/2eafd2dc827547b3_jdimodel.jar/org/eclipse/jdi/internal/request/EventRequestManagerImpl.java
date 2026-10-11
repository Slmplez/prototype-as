/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.Field
 *  com.sun.jdi.Location
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMMismatchException
 *  com.sun.jdi.request.AccessWatchpointRequest
 *  com.sun.jdi.request.BreakpointRequest
 *  com.sun.jdi.request.ClassPrepareRequest
 *  com.sun.jdi.request.ClassUnloadRequest
 *  com.sun.jdi.request.DuplicateRequestException
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.EventRequestManager
 *  com.sun.jdi.request.ExceptionRequest
 *  com.sun.jdi.request.InvalidRequestStateException
 *  com.sun.jdi.request.MethodEntryRequest
 *  com.sun.jdi.request.MethodExitRequest
 *  com.sun.jdi.request.ModificationWatchpointRequest
 *  com.sun.jdi.request.MonitorContendedEnterRequest
 *  com.sun.jdi.request.MonitorContendedEnteredRequest
 *  com.sun.jdi.request.MonitorWaitRequest
 *  com.sun.jdi.request.MonitorWaitedRequest
 *  com.sun.jdi.request.StepRequest
 *  com.sun.jdi.request.ThreadDeathRequest
 *  com.sun.jdi.request.ThreadStartRequest
 *  com.sun.jdi.request.VMDeathRequest
 */
package org.eclipse.jdi.internal.request;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.Field;
import com.sun.jdi.Location;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMMismatchException;
import com.sun.jdi.request.AccessWatchpointRequest;
import com.sun.jdi.request.BreakpointRequest;
import com.sun.jdi.request.ClassPrepareRequest;
import com.sun.jdi.request.ClassUnloadRequest;
import com.sun.jdi.request.DuplicateRequestException;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.ExceptionRequest;
import com.sun.jdi.request.InvalidRequestStateException;
import com.sun.jdi.request.MethodEntryRequest;
import com.sun.jdi.request.MethodExitRequest;
import com.sun.jdi.request.ModificationWatchpointRequest;
import com.sun.jdi.request.MonitorContendedEnterRequest;
import com.sun.jdi.request.MonitorContendedEnteredRequest;
import com.sun.jdi.request.MonitorWaitRequest;
import com.sun.jdi.request.MonitorWaitedRequest;
import com.sun.jdi.request.StepRequest;
import com.sun.jdi.request.ThreadDeathRequest;
import com.sun.jdi.request.ThreadStartRequest;
import com.sun.jdi.request.VMDeathRequest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.hcr.EventRequestManager;
import org.eclipse.jdi.hcr.ReenterStepRequest;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.AccessWatchpointEventImpl;
import org.eclipse.jdi.internal.event.BreakpointEventImpl;
import org.eclipse.jdi.internal.event.ClassPrepareEventImpl;
import org.eclipse.jdi.internal.event.ClassUnloadEventImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.event.ExceptionEventImpl;
import org.eclipse.jdi.internal.event.MethodEntryEventImpl;
import org.eclipse.jdi.internal.event.MethodExitEventImpl;
import org.eclipse.jdi.internal.event.ModificationWatchpointEventImpl;
import org.eclipse.jdi.internal.event.MonitorContendedEnterEventImpl;
import org.eclipse.jdi.internal.event.MonitorContendedEnteredEventImpl;
import org.eclipse.jdi.internal.event.MonitorWaitEventImpl;
import org.eclipse.jdi.internal.event.MonitorWaitedEventImpl;
import org.eclipse.jdi.internal.event.StepEventImpl;
import org.eclipse.jdi.internal.event.ThreadDeathEventImpl;
import org.eclipse.jdi.internal.event.ThreadStartEventImpl;
import org.eclipse.jdi.internal.event.VMDeathEventImpl;
import org.eclipse.jdi.internal.request.AccessWatchpointRequestImpl;
import org.eclipse.jdi.internal.request.BreakpointRequestImpl;
import org.eclipse.jdi.internal.request.ClassPrepareRequestImpl;
import org.eclipse.jdi.internal.request.ClassUnloadRequestImpl;
import org.eclipse.jdi.internal.request.EventRequestImpl;
import org.eclipse.jdi.internal.request.ExceptionRequestImpl;
import org.eclipse.jdi.internal.request.MethodEntryRequestImpl;
import org.eclipse.jdi.internal.request.MethodExitRequestImpl;
import org.eclipse.jdi.internal.request.ModificationWatchpointRequestImpl;
import org.eclipse.jdi.internal.request.MonitorContendedEnterRequestImpl;
import org.eclipse.jdi.internal.request.MonitorContendedEnteredRequestImpl;
import org.eclipse.jdi.internal.request.MonitorWaitRequestImpl;
import org.eclipse.jdi.internal.request.MonitorWaitedRequestImpl;
import org.eclipse.jdi.internal.request.ReenterStepRequestImpl;
import org.eclipse.jdi.internal.request.RequestMessages;
import org.eclipse.jdi.internal.request.StepRequestImpl;
import org.eclipse.jdi.internal.request.ThreadDeathRequestImpl;
import org.eclipse.jdi.internal.request.ThreadStartRequestImpl;
import org.eclipse.jdi.internal.request.VMDeathRequestImpl;

public class EventRequestManagerImpl
extends MirrorImpl
implements com.sun.jdi.request.EventRequestManager,
EventRequestManager {
    private static final int ACCESS_WATCHPOINT_INDEX = 0;
    private static final int BREAKPOINT_INDEX = 1;
    private static final int CLASS_PREPARE_INDEX = 2;
    private static final int CLASS_UNLOAD_INDEX = 3;
    private static final int EXCEPTION_INDEX = 4;
    private static final int METHOD_ENTRY_INDEX = 5;
    private static final int METHOD_EXIT_INDEX = 6;
    private static final int MODIFICATION_WATCHPOINT_INDEX = 7;
    private static final int STEP_INDEX = 8;
    private static final int THREAD_DEATH_INDEX = 9;
    private static final int THREAD_START_INDEX = 10;
    private static final int VM_DEATH_INDEX = 11;
    private static final int MONITOR_CONTENDED_ENTERED_INDEX = 12;
    private static final int MONITOR_CONTENDED_ENTER_INDEX = 13;
    private static final int MONITOR_WAITED_INDEX = 14;
    private static final int MONITOR_WAIT_INDEX = 15;
    private HashSet[] fRequests = new HashSet[16];
    private Hashtable[] fEnabledRequests;

    public EventRequestManagerImpl(VirtualMachineImpl vmImpl) {
        super("EventRequestManager", vmImpl);
        int i = 0;
        while (i < this.fRequests.length) {
            this.fRequests[i] = new HashSet();
            ++i;
        }
        this.fEnabledRequests = new Hashtable[16];
        i = 0;
        while (i < this.fEnabledRequests.length) {
            this.fEnabledRequests[i] = new Hashtable();
            ++i;
        }
    }

    public AccessWatchpointRequest createAccessWatchpointRequest(Field field) {
        FieldImpl fieldImpl = (FieldImpl)field;
        AccessWatchpointRequestImpl req = new AccessWatchpointRequestImpl(this.virtualMachineImpl());
        req.addFieldFilter(fieldImpl);
        this.addEventRequest(0, req);
        return req;
    }

    public BreakpointRequest createBreakpointRequest(Location location) throws VMMismatchException {
        LocationImpl locImpl = (LocationImpl)location;
        BreakpointRequestImpl req = new BreakpointRequestImpl(this.virtualMachineImpl());
        req.addLocationFilter(locImpl);
        this.addEventRequest(1, req);
        return req;
    }

    public ClassPrepareRequest createClassPrepareRequest() {
        ClassPrepareRequestImpl req = new ClassPrepareRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(2, req);
        return req;
    }

    public ClassUnloadRequest createClassUnloadRequest() {
        ClassUnloadRequestImpl req = new ClassUnloadRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(3, req);
        return req;
    }

    public ExceptionRequest createExceptionRequest(ReferenceType refType, boolean notifyCaught, boolean notifyUncaught) {
        ReferenceTypeImpl refTypeImpl = (ReferenceTypeImpl)refType;
        ExceptionRequestImpl req = new ExceptionRequestImpl(this.virtualMachineImpl());
        req.addExceptionFilter(refTypeImpl, notifyCaught, notifyUncaught);
        this.addEventRequest(4, req);
        return req;
    }

    public MethodEntryRequest createMethodEntryRequest() {
        MethodEntryRequestImpl req = new MethodEntryRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(5, req);
        return req;
    }

    public MethodExitRequest createMethodExitRequest() {
        MethodExitRequestImpl req = new MethodExitRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(6, req);
        return req;
    }

    public MonitorContendedEnteredRequest createMonitorContendedEnteredRequest() {
        MonitorContendedEnteredRequestImpl req = new MonitorContendedEnteredRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(12, req);
        return req;
    }

    public MonitorContendedEnterRequest createMonitorContendedEnterRequest() {
        MonitorContendedEnterRequestImpl req = new MonitorContendedEnterRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(13, req);
        return req;
    }

    public MonitorWaitedRequest createMonitorWaitedRequest() {
        MonitorWaitedRequestImpl req = new MonitorWaitedRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(14, req);
        return req;
    }

    public MonitorWaitRequest createMonitorWaitRequest() {
        MonitorWaitRequestImpl req = new MonitorWaitRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(15, req);
        return req;
    }

    public ModificationWatchpointRequest createModificationWatchpointRequest(Field field) {
        FieldImpl fieldImpl = (FieldImpl)field;
        ModificationWatchpointRequestImpl req = new ModificationWatchpointRequestImpl(this.virtualMachineImpl());
        req.addFieldFilter(fieldImpl);
        this.addEventRequest(7, req);
        return req;
    }

    public StepRequest createStepRequest(ThreadReference thread, int size, int depth) throws DuplicateRequestException, ObjectCollectedException {
        ThreadReferenceImpl threadImpl = (ThreadReferenceImpl)thread;
        StepRequestImpl req = new StepRequestImpl(this.virtualMachineImpl());
        req.addStepFilter(threadImpl, size, depth);
        this.addEventRequest(8, req);
        return req;
    }

    public ThreadDeathRequest createThreadDeathRequest() {
        ThreadDeathRequestImpl req = new ThreadDeathRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(9, req);
        return req;
    }

    public ThreadStartRequest createThreadStartRequest() {
        ThreadStartRequestImpl req = new ThreadStartRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(10, req);
        return req;
    }

    public VMDeathRequest createVMDeathRequest() {
        VMDeathRequestImpl req = new VMDeathRequestImpl(this.virtualMachineImpl());
        this.addEventRequest(11, req);
        return req;
    }

    public ReenterStepRequest createReenterStepRequest(ThreadReference thread) {
        this.virtualMachineImpl().checkHCRSupported();
        ThreadReferenceImpl threadImpl = (ThreadReferenceImpl)thread;
        ReenterStepRequestImpl req = new ReenterStepRequestImpl(this.virtualMachineImpl());
        req.addStepFilter(threadImpl, -1, 0);
        this.addEventRequest(8, req);
        return req;
    }

    public void enableInternalClassPrepareEvent() {
        ClassPrepareRequestImpl requestPrepare = new ClassPrepareRequestImpl(this.virtualMachineImpl());
        requestPrepare.setGeneratedInside();
        requestPrepare.setSuspendPolicy(0);
        requestPrepare.enable();
    }

    public void enableInternalClasUnloadEvent() {
        ClassUnloadRequestImpl reqUnload = new ClassUnloadRequestImpl(this.virtualMachineImpl());
        reqUnload.setGeneratedInside();
        reqUnload.setSuspendPolicy(0);
        reqUnload.enable();
    }

    boolean existsEnabledStepRequest(ThreadReferenceImpl threadImpl) {
        Enumeration enumeration = this.fEnabledRequests[8].elements();
        while (enumeration.hasMoreElements()) {
            StepRequestImpl step = (StepRequestImpl)enumeration.nextElement();
            if (step.thread() != threadImpl) continue;
            return true;
        }
        return false;
    }

    public void deleteAllBreakpoints() {
        EventRequestImpl.clearAllBreakpoints(this);
        this.fRequests[1].clear();
        this.fEnabledRequests[1].clear();
    }

    public void addEventRequest(int index, EventRequest req) {
        this.fRequests[index].add(req);
    }

    private void deleteEventRequest(int index, EventRequest req) throws VMMismatchException {
        this.checkVM((Mirror)req);
        EventRequestImpl requestImpl = (EventRequestImpl)req;
        this.fRequests[index].remove(requestImpl);
        if (requestImpl.requestID() != null) {
            this.fEnabledRequests[index].remove(requestImpl.requestID());
        }
    }

    public void deleteEventRequest(EventRequest req) {
        try {
            req.disable();
        }
        catch (InvalidRequestStateException invalidRequestStateException) {}
        if (req instanceof AccessWatchpointRequestImpl) {
            this.deleteEventRequest(0, req);
        } else if (req instanceof BreakpointRequestImpl) {
            this.deleteEventRequest(1, req);
        } else if (req instanceof ClassPrepareRequestImpl) {
            this.deleteEventRequest(2, req);
        } else if (req instanceof ClassUnloadRequestImpl) {
            this.deleteEventRequest(3, req);
        } else if (req instanceof ExceptionRequestImpl) {
            this.deleteEventRequest(4, req);
        } else if (req instanceof MethodEntryRequestImpl) {
            this.deleteEventRequest(5, req);
        } else if (req instanceof MethodExitRequestImpl) {
            this.deleteEventRequest(6, req);
        } else if (req instanceof ModificationWatchpointRequestImpl) {
            this.deleteEventRequest(7, req);
        } else if (req instanceof StepRequestImpl) {
            this.deleteEventRequest(8, req);
        } else if (req instanceof ThreadDeathRequestImpl) {
            this.deleteEventRequest(9, req);
        } else if (req instanceof ThreadStartRequestImpl) {
            this.deleteEventRequest(10, req);
        } else if (req instanceof MonitorContendedEnterRequestImpl) {
            this.deleteEventRequest(13, req);
        } else if (req instanceof MonitorContendedEnteredRequestImpl) {
            this.deleteEventRequest(12, req);
        } else if (req instanceof MonitorWaitRequestImpl) {
            this.deleteEventRequest(15, req);
        } else if (req instanceof MonitorWaitedRequestImpl) {
            this.deleteEventRequest(14, req);
        } else {
            throw new InternalError(MessageFormat.format((String)RequestMessages.EventRequestManagerImpl_EventRequest_type_of__0__is_unknown_1, (Object[])new String[]{req.toString()}));
        }
    }

    public void deleteEventRequests(List requests) throws VMMismatchException {
        Iterator iter = requests.iterator();
        while (iter.hasNext()) {
            Object obj = iter.next();
            this.deleteEventRequest((EventRequest)obj);
        }
    }

    public List accessWatchpointRequests() {
        return new ArrayList(this.fRequests[0]);
    }

    public List breakpointRequests() {
        return new ArrayList(this.fRequests[1]);
    }

    public List classPrepareRequests() {
        return new ArrayList(this.fRequests[2]);
    }

    public List classUnloadRequests() {
        return new ArrayList(this.fRequests[3]);
    }

    public List exceptionRequests() {
        return new ArrayList(this.fRequests[4]);
    }

    public List methodEntryRequests() {
        return new ArrayList(this.fRequests[5]);
    }

    public List methodExitRequests() {
        return new ArrayList(this.fRequests[6]);
    }

    public List modificationWatchpointRequests() {
        return new ArrayList(this.fRequests[7]);
    }

    public List stepRequests() {
        return new ArrayList(this.fRequests[8]);
    }

    public List threadDeathRequests() {
        return new ArrayList(this.fRequests[9]);
    }

    public List threadStartRequests() {
        return new ArrayList(this.fRequests[10]);
    }

    public List vmDeathRequests() {
        return new ArrayList(this.fRequests[11]);
    }

    public void removeRequestIDMapping(EventRequestImpl req) {
        if (req instanceof AccessWatchpointRequestImpl) {
            this.fEnabledRequests[0].remove(req.requestID());
        } else if (req instanceof BreakpointRequestImpl) {
            this.fEnabledRequests[1].remove(req.requestID());
        } else if (req instanceof ClassPrepareRequestImpl) {
            this.fEnabledRequests[2].remove(req.requestID());
        } else if (req instanceof ClassUnloadRequestImpl) {
            this.fEnabledRequests[3].remove(req.requestID());
        } else if (req instanceof ExceptionRequestImpl) {
            this.fEnabledRequests[4].remove(req.requestID());
        } else if (req instanceof MethodEntryRequestImpl) {
            this.fEnabledRequests[5].remove(req.requestID());
        } else if (req instanceof MethodExitRequestImpl) {
            this.fEnabledRequests[6].remove(req.requestID());
        } else if (req instanceof ModificationWatchpointRequestImpl) {
            this.fEnabledRequests[7].remove(req.requestID());
        } else if (req instanceof StepRequestImpl) {
            this.fEnabledRequests[8].remove(req.requestID());
        } else if (req instanceof ThreadDeathRequestImpl) {
            this.fEnabledRequests[9].remove(req.requestID());
        } else if (req instanceof ThreadStartRequestImpl) {
            this.fEnabledRequests[10].remove(req.requestID());
        } else if (req instanceof MonitorContendedEnterRequestImpl) {
            this.fEnabledRequests[13].remove(req.requestID());
        } else if (req instanceof MonitorContendedEnteredRequestImpl) {
            this.fEnabledRequests[12].remove(req.requestID());
        } else if (req instanceof MonitorWaitRequestImpl) {
            this.fEnabledRequests[15].remove(req.requestID());
        } else if (req instanceof MonitorWaitedRequestImpl) {
            this.fEnabledRequests[14].remove(req.requestID());
        }
    }

    public void addRequestIDMapping(EventRequestImpl req) {
        if (req instanceof AccessWatchpointRequestImpl) {
            this.fEnabledRequests[0].put(req.requestID(), req);
        } else if (req instanceof BreakpointRequestImpl) {
            this.fEnabledRequests[1].put(req.requestID(), req);
        } else if (req instanceof ClassPrepareRequestImpl) {
            this.fEnabledRequests[2].put(req.requestID(), req);
        } else if (req instanceof ClassUnloadRequestImpl) {
            this.fEnabledRequests[3].put(req.requestID(), req);
        } else if (req instanceof ExceptionRequestImpl) {
            this.fEnabledRequests[4].put(req.requestID(), req);
        } else if (req instanceof MethodEntryRequestImpl) {
            this.fEnabledRequests[5].put(req.requestID(), req);
        } else if (req instanceof MethodExitRequestImpl) {
            this.fEnabledRequests[6].put(req.requestID(), req);
        } else if (req instanceof ModificationWatchpointRequestImpl) {
            this.fEnabledRequests[7].put(req.requestID(), req);
        } else if (req instanceof StepRequestImpl) {
            this.fEnabledRequests[8].put(req.requestID(), req);
        } else if (req instanceof ThreadDeathRequestImpl) {
            this.fEnabledRequests[9].put(req.requestID(), req);
        } else if (req instanceof ThreadStartRequestImpl) {
            this.fEnabledRequests[10].put(req.requestID(), req);
        } else if (req instanceof MonitorWaitRequestImpl) {
            this.fEnabledRequests[15].put(req.requestID(), req);
        } else if (req instanceof MonitorWaitedRequestImpl) {
            this.fEnabledRequests[14].put(req.requestID(), req);
        } else if (req instanceof MonitorContendedEnterRequestImpl) {
            this.fEnabledRequests[13].put(req.requestID(), req);
        } else if (req instanceof MonitorContendedEnteredRequestImpl) {
            this.fEnabledRequests[12].put(req.requestID(), req);
        }
    }

    public EventRequestImpl findRequest(EventImpl event) {
        if (event instanceof AccessWatchpointEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[0].get(event.requestID());
        }
        if (event instanceof BreakpointEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[1].get(event.requestID());
        }
        if (event instanceof ClassPrepareEventImpl) {
            return (ClassPrepareRequestImpl)this.fEnabledRequests[2].get(event.requestID());
        }
        if (event instanceof ClassUnloadEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[3].get(event.requestID());
        }
        if (event instanceof ExceptionEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[4].get(event.requestID());
        }
        if (event instanceof MethodEntryEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[5].get(event.requestID());
        }
        if (event instanceof MethodExitEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[6].get(event.requestID());
        }
        if (event instanceof ModificationWatchpointEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[7].get(event.requestID());
        }
        if (event instanceof StepEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[8].get(event.requestID());
        }
        if (event instanceof ThreadDeathEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[9].get(event.requestID());
        }
        if (event instanceof ThreadStartEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[10].get(event.requestID());
        }
        if (event instanceof VMDeathEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[11].get(event.requestID());
        }
        if (event instanceof MonitorWaitEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[15].get(event.requestID());
        }
        if (event instanceof MonitorWaitedEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[14].get(event.requestID());
        }
        if (event instanceof MonitorContendedEnterEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[13].get(event.requestID());
        }
        if (event instanceof MonitorContendedEnteredEventImpl) {
            return (EventRequestImpl)this.fEnabledRequests[12].get(event.requestID());
        }
        throw new InternalError(RequestMessages.EventRequestManagerImpl_Got_event_of_unknown_type_2);
    }

    public List monitorContendedEnterRequests() {
        return new ArrayList(this.fRequests[13]);
    }

    public List monitorContendedEnteredRequests() {
        return new ArrayList(this.fRequests[12]);
    }

    public List monitorWaitRequests() {
        return new ArrayList(this.fRequests[15]);
    }

    public List monitorWaitedRequests() {
        return new ArrayList(this.fRequests[14]);
    }
}

