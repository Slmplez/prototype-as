/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.Field;
import com.sun.jdi.Location;
import com.sun.jdi.Mirror;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.AccessWatchpointRequest;
import com.sun.jdi.request.BreakpointRequest;
import com.sun.jdi.request.ClassPrepareRequest;
import com.sun.jdi.request.ClassUnloadRequest;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.ExceptionRequest;
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
import java.util.List;

public interface EventRequestManager
extends Mirror {
    public List accessWatchpointRequests();

    public List breakpointRequests();

    public List classPrepareRequests();

    public List classUnloadRequests();

    public AccessWatchpointRequest createAccessWatchpointRequest(Field var1);

    public BreakpointRequest createBreakpointRequest(Location var1);

    public ClassPrepareRequest createClassPrepareRequest();

    public ClassUnloadRequest createClassUnloadRequest();

    public ExceptionRequest createExceptionRequest(ReferenceType var1, boolean var2, boolean var3);

    public MethodEntryRequest createMethodEntryRequest();

    public MethodExitRequest createMethodExitRequest();

    public MonitorContendedEnteredRequest createMonitorContendedEnteredRequest();

    public MonitorContendedEnterRequest createMonitorContendedEnterRequest();

    public MonitorWaitedRequest createMonitorWaitedRequest();

    public MonitorWaitRequest createMonitorWaitRequest();

    public ModificationWatchpointRequest createModificationWatchpointRequest(Field var1);

    public StepRequest createStepRequest(ThreadReference var1, int var2, int var3);

    public ThreadDeathRequest createThreadDeathRequest();

    public ThreadStartRequest createThreadStartRequest();

    public VMDeathRequest createVMDeathRequest();

    public void deleteAllBreakpoints();

    public void deleteEventRequest(EventRequest var1);

    public void deleteEventRequests(List var1);

    public List exceptionRequests();

    public List methodEntryRequests();

    public List methodExitRequests();

    public List modificationWatchpointRequests();

    public List stepRequests();

    public List threadDeathRequests();

    public List threadStartRequests();

    public List vmDeathRequests();

    public List monitorContendedEnterRequests();

    public List monitorContendedEnteredRequests();

    public List monitorWaitRequests();

    public List monitorWaitedRequests();
}

