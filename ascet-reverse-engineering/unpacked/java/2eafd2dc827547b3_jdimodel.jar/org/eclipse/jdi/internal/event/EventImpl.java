/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.request.EventRequest
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.Event;
import com.sun.jdi.request.EventRequest;
import java.io.DataInputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.AccessWatchpointEventImpl;
import org.eclipse.jdi.internal.event.BreakpointEventImpl;
import org.eclipse.jdi.internal.event.ClassPrepareEventImpl;
import org.eclipse.jdi.internal.event.ClassUnloadEventImpl;
import org.eclipse.jdi.internal.event.EventMessages;
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
import org.eclipse.jdi.internal.event.VMDisconnectEventImpl;
import org.eclipse.jdi.internal.event.VMStartEventImpl;
import org.eclipse.jdi.internal.request.RequestID;

public abstract class EventImpl
extends MirrorImpl
implements Event {
    public static final byte EVENT_SINGLE_STEP = 1;
    public static final byte EVENT_BREAKPOINT = 2;
    public static final byte EVENT_FRAME_POP = 3;
    public static final byte EVENT_EXCEPTION = 4;
    public static final byte EVENT_USER_DEFINED = 5;
    public static final byte EVENT_THREAD_START = 6;
    public static final byte EVENT_THREAD_END = 7;
    public static final byte EVENT_CLASS_PREPARE = 8;
    public static final byte EVENT_CLASS_UNLOAD = 9;
    public static final byte EVENT_CLASS_LOAD = 10;
    public static final byte EVENT_FIELD_ACCESS = 20;
    public static final byte EVENT_FIELD_MODIFICATION = 21;
    public static final byte EVENT_EXCEPTION_CATCH = 30;
    public static final byte EVENT_METHOD_ENTRY = 40;
    public static final byte EVENT_METHOD_EXIT = 41;
    public static final byte EVENT_METHOD_EXIT_WITH_RETURN_VALUE = 42;
    public static final byte EVENT_MONITOR_CONTENDED_ENTER = 43;
    public static final byte EVENT_MONITOR_CONTENDED_ENTERED = 44;
    public static final byte EVENT_MONITOR_WAIT = 45;
    public static final byte EVENT_MONITOR_WAITED = 46;
    public static final byte EVENT_VM_INIT = 90;
    public static final byte EVENT_VM_DEATH = 99;
    public static final byte EVENT_VM_DISCONNECTED = 100;
    public static final byte EVENT_VM_START = 90;
    public static final byte EVENT_THREAD_DEATH = 7;
    protected ThreadReferenceImpl fThreadRef;
    private static HashMap fEventKindMap = null;
    private RequestID fRequestID;
    private EventRequest fRequest;
    static /* synthetic */ Class class$0;

    protected EventImpl(String description, VirtualMachineImpl vmImpl, RequestID requestID) {
        super(description, vmImpl);
        this.fRequestID = requestID;
    }

    public ThreadReference thread() {
        return this.fThreadRef;
    }

    public RequestID requestID() {
        return this.fRequestID;
    }

    public String toString() {
        return String.valueOf(super.toString()) + ": " + this.fRequestID;
    }

    public static EventImpl read(MirrorImpl target, DataInputStream dataInStream) throws IOException {
        EventImpl result;
        byte eventKind = target.readByte("event kind", EventImpl.eventKindMap(), dataInStream);
        RequestID requestID = RequestID.read(target, dataInStream);
        switch (eventKind) {
            case 0: {
                return null;
            }
            case 20: {
                result = AccessWatchpointEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 2: {
                result = BreakpointEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 8: {
                result = ClassPrepareEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 9: {
                result = ClassUnloadEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 4: {
                result = ExceptionEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 40: {
                result = MethodEntryEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 41: {
                result = MethodExitEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 42: {
                result = MethodExitEventImpl.readWithReturnValue(target, requestID, dataInStream);
                break;
            }
            case 44: {
                result = MonitorContendedEnteredEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 43: {
                result = MonitorContendedEnterEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 46: {
                result = MonitorWaitedEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 45: {
                result = MonitorWaitEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 21: {
                result = ModificationWatchpointEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 1: {
                result = StepEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 7: {
                result = ThreadDeathEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 6: {
                result = ThreadStartEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 99: {
                result = VMDeathEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 100: {
                result = VMDisconnectEventImpl.read(target, requestID, dataInStream);
                break;
            }
            case 90: {
                result = VMStartEventImpl.read(target, requestID, dataInStream);
                break;
            }
            default: {
                throw new IOException(String.valueOf(EventMessages.EventImpl_Read_invalid_EventKind___1) + eventKind);
            }
        }
        if (!requestID.isNull()) {
            result.fRequest = target.virtualMachineImpl().eventRequestManagerImpl().findRequest(result);
        }
        return result;
    }

    public EventRequest request() {
        return this.fRequest;
    }

    public static void getConstantMaps() {
        if (fEventKindMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.event.EventImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fEventKindMap = new HashMap();
        int i = 0;
        while (i < fields.length) {
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    String name = field.getName();
                    Integer intValue = new Integer(field.getInt(null));
                    if (name.startsWith("EVENT_")) {
                        name = name.substring(6);
                        fEventKindMap.put(intValue, name);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static Map eventKindMap() {
        EventImpl.getConstantMaps();
        return fEventKindMap;
    }
}

