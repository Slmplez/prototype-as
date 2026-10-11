/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.InvalidStackFrameException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.StackFrame
 *  com.sun.jdi.ThreadGroupReference
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMCannotBeModifiedException
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InternalException;
import com.sun.jdi.InvalidStackFrameException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.Mirror;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.StackFrame;
import com.sun.jdi.ThreadGroupReference;
import com.sun.jdi.VMCannotBeModifiedException;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdi.hcr.OperationRefusedException;
import org.eclipse.jdi.hcr.ThreadReference;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.MonitorInfoImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.StackFrameImpl;
import org.eclipse.jdi.internal.ThreadGroupReferenceImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.jdwp.JdwpThreadID;

public class ThreadReferenceImpl
extends ObjectReferenceImpl
implements com.sun.jdi.ThreadReference,
ThreadReference {
    public static final int JDWP_THREAD_STATUS_ZOMBIE = 0;
    public static final int JDWP_THREAD_STATUS_RUNNING = 1;
    public static final int JDWP_THREAD_STATUS_SLEEPING = 2;
    public static final int JDWP_THREAD_STATUS_MONITOR = 3;
    public static final int JDWP_THREAD_STATUS_WAIT = 4;
    public static final int SUSPEND_STATUS_SUSPENDED = 1;
    private static Map fgThreadStatusMap = null;
    private static String[] fgSuspendStatusStrings = null;
    protected static final byte tag = 116;
    private boolean fIsAtBreakpoint = false;
    private ThreadGroupReferenceImpl fThreadGroup = null;
    static /* synthetic */ Class class$0;

    public ThreadReferenceImpl(VirtualMachineImpl vmImpl, JdwpThreadID threadID) {
        super("ThreadReference", vmImpl, threadID);
    }

    public void setIsAtBreakpoint() {
        this.fIsAtBreakpoint = true;
    }

    public void resetEventFlags() {
        this.fIsAtBreakpoint = false;
    }

    public byte getTag() {
        return 116;
    }

    public ObjectReference currentContendedMonitor() throws IncompatibleThreadStateException {
        if (!this.virtualMachine().canGetCurrentContendedMonitor()) {
            throw new UnsupportedOperationException();
        }
        this.initJdwpRequest();
        try {
            ObjectReferenceImpl result;
            JdwpReplyPacket replyPacket = this.requestVM(2825, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Thread_was_not_suspended_1);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ObjectReferenceImpl objectReferenceImpl = result = ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            return objectReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void forceEarlyReturn(Value value) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException {
        if (!this.virtualMachineImpl().canBeModified()) {
            throw new VMCannotBeModifiedException(JDIMessages.ThreadReferenceImpl_vm_read_only);
        }
        this.initJdwpRequest();
        ByteArrayOutputStream byteOutStream = new ByteArrayOutputStream();
        DataOutputStream dataOutStream = new DataOutputStream(byteOutStream);
        try {
            try {
                this.write(this, dataOutStream);
                if (value != null) {
                    ((ValueImpl)value).writeWithTag((ValueImpl)value, dataOutStream);
                } else {
                    ValueImpl.writeNullWithTag(this, dataOutStream);
                }
                JdwpReplyPacket reply = this.requestVM(2830, byteOutStream);
                switch (reply.errorCode()) {
                    case 10: {
                        throw new ObjectCollectedException(JDIMessages.ThreadReferenceImpl_thread_object_invalid);
                    }
                    case 20: {
                        throw new ClassNotLoadedException(JDIMessages.ThreadReferenceImpl_thread_or_value_unknown);
                    }
                    case 13: 
                    case 15: {
                        throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_thread_not_suspended);
                    }
                    case 99: {
                        throw new UnsupportedOperationException(JDIMessages.ThreadReferenceImpl_no_force_early_return_on_threads);
                    }
                    case 32: {
                        throw new NativeMethodException(JDIMessages.ThreadReferenceImpl_thread_cannot_force_native_method);
                    }
                    case 31: {
                        throw new InvalidStackFrameException(JDIMessages.ThreadReferenceImpl_thread_no_stackframes);
                    }
                    case 34: {
                        throw new InvalidTypeException(JDIMessages.ThreadReferenceImpl_incapatible_return_type);
                    }
                    case 112: {
                        throw new VMDisconnectedException(JDIMessages.vm_dead);
                    }
                }
                this.defaultReplyErrorHandler(reply.errorCode());
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public StackFrame frame(int index) throws IncompatibleThreadStateException {
        return (StackFrameImpl)this.frames(index, 1).get(0);
    }

    public int frameCount() throws IncompatibleThreadStateException {
        this.initJdwpRequest();
        try {
            int result;
            JdwpReplyPacket replyPacket = this.requestVM(2823, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Thread_was_not_suspended_1);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = result = this.readInt("frame count", replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List frames() throws IncompatibleThreadStateException {
        return this.frames(0, -1);
    }

    public List frames(int start, int length) throws IndexOutOfBoundsException, IncompatibleThreadStateException {
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            this.writeInt(start, "start", outData);
            this.writeInt(length, "length", outData);
            JdwpReplyPacket replyPacket = this.requestVM(2822, outBytes);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Thread_was_not_suspended_1);
                }
                case 503: {
                    throw new IndexOutOfBoundsException(JDIMessages.ThreadReferenceImpl_Invalid_index_of_stack_frames_given_4);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<StackFrameImpl> frames = new ArrayList<StackFrameImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                StackFrameImpl frame = StackFrameImpl.readWithLocation(this, this, replyData);
                if (frame != null) {
                    frames.add(frame);
                }
                ++i;
            }
            ArrayList<StackFrameImpl> arrayList = frames;
            return arrayList;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void interrupt() {
        this.initJdwpRequest();
        try {
            this.requestVM(2827, this);
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean isAtBreakpoint() {
        return this.isSuspended() && this.fIsAtBreakpoint;
    }

    public boolean isSuspended() {
        this.initJdwpRequest();
        try {
            boolean result;
            JdwpReplyPacket replyPacket = this.requestVM(2820, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.readInt("thread status", ThreadReferenceImpl.threadStatusMap(), replyData);
            int suspendStatus = this.readInt("suspend status", ThreadReferenceImpl.suspendStatusStrings(), replyData);
            boolean bl = result = suspendStatus == 1;
            return bl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return false;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public String name() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2817, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            String string = this.readString("name", replyData);
            return string;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List ownedMonitors() throws IncompatibleThreadStateException {
        if (!this.virtualMachine().canGetOwnedMonitorInfo()) {
            throw new UnsupportedOperationException();
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2824, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Thread_was_not_suspended_5);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfMonitors = this.readInt("nr of monitors", replyData);
            ArrayList<ObjectReferenceImpl> result = new ArrayList<ObjectReferenceImpl>(nrOfMonitors);
            int i = 0;
            while (i < nrOfMonitors) {
                result.add(ObjectReferenceImpl.readObjectRefWithTag(this, replyData));
                ++i;
            }
            ArrayList<ObjectReferenceImpl> arrayList = result;
            return arrayList;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List ownedMonitorsAndFrames() throws IncompatibleThreadStateException {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2829, this);
            switch (replyPacket.errorCode()) {
                case 10: 
                case 20: {
                    throw new ObjectCollectedException(JDIMessages.ThreadReferenceImpl_thread_object_invalid);
                }
                case 13: {
                    throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Thread_was_not_suspended_5);
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ThreadReferenceImpl_no_force_early_return_on_threads);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int owned = this.readInt("owned monitors", replyData);
            ArrayList<MonitorInfoImpl> result = new ArrayList<MonitorInfoImpl>(owned);
            int i = 0;
            while (i < owned) {
                result.add(new MonitorInfoImpl(this, this.readInt("stack depth", replyData), ObjectReferenceImpl.readObjectRefWithTag(this, replyData), this.virtualMachineImpl()));
                ++i;
            }
            ArrayList<MonitorInfoImpl> arrayList = result;
            return arrayList;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void resume() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2819, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            this.resetEventFlags();
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public int status() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2820, this);
            switch (replyPacket.errorCode()) {
                case 101: {
                    return -1;
                }
                case 10: {
                    return 5;
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int threadStatus = this.readInt("thread status", ThreadReferenceImpl.threadStatusMap(), replyData);
            this.readInt("suspend status", ThreadReferenceImpl.suspendStatusStrings(), replyData);
            switch (threadStatus) {
                case 0: {
                    return 0;
                }
                case 1: {
                    return 1;
                }
                case 2: {
                    return 2;
                }
                case 3: {
                    return 3;
                }
                case 4: {
                    return 4;
                }
                case -1: {
                    return -1;
                }
                default: {
                    throw new InternalException(String.valueOf(JDIMessages.ThreadReferenceImpl_Unknown_thread_status_received___6) + threadStatus);
                }
            }
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void stop(ObjectReference throwable) throws InvalidTypeException {
        this.checkVM((Mirror)throwable);
        ObjectReferenceImpl throwableImpl = (ObjectReferenceImpl)throwable;
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.write(this, outData);
                throwableImpl.write(this, outData);
                JdwpReplyPacket replyPacket = this.requestVM(2826, outBytes);
                switch (replyPacket.errorCode()) {
                    case 10: {
                        throw new ObjectCollectedException();
                    }
                    case 21: {
                        throw new InvalidTypeException(JDIMessages.ThreadReferenceImpl_Stop_argument_not_an_instance_of_java_lang_Throwable_in_the_target_VM_7);
                    }
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void suspend() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2818, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int suspendCount() {
        this.initJdwpRequest();
        try {
            int result;
            JdwpReplyPacket replyPacket = this.requestVM(2828, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = result = this.readInt("suspend count", replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public ThreadGroupReference threadGroup() {
        if (this.fThreadGroup != null) {
            return this.fThreadGroup;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2821, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ThreadGroupReferenceImpl threadGroupReferenceImpl = this.fThreadGroup = ThreadGroupReferenceImpl.read(this, replyData);
            return threadGroupReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean doReturn(Value returnValue, boolean triggerFinallyAndSynchronized) throws OperationRefusedException {
        ValueImpl valueImpl;
        this.virtualMachineImpl().checkHCRSupported();
        if (returnValue != null) {
            this.checkVM((Mirror)returnValue);
            valueImpl = (ValueImpl)returnValue;
        } else {
            try {
                TypeImpl returnType = (TypeImpl)this.frame(0).location().method().returnType();
                valueImpl = (ValueImpl)returnType.createNullValue();
            }
            catch (IncompatibleThreadStateException e) {
                throw new OperationRefusedException(e.toString());
            }
            catch (ClassNotLoadedException e) {
                throw new OperationRefusedException(e.toString());
            }
        }
        this.initJdwpRequest();
        try {
            boolean result;
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            valueImpl.writeWithTag(this, outData);
            this.writeBoolean(triggerFinallyAndSynchronized, "trigger finaly+sync", outData);
            JdwpReplyPacket replyPacket = this.requestVM(32771, outBytes);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new ObjectCollectedException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            boolean bl = result = this.readBoolean("is enclosed", replyData);
            return bl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return false;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public String toString() {
        try {
            return MessageFormat.format((String)JDIMessages.ThreadReferenceImpl_8, (Object[])new String[]{this.type().toString(), this.name(), this.getObjectID().toString()});
        }
        catch (ObjectCollectedException objectCollectedException) {
            return String.valueOf(JDIMessages.ThreadReferenceImpl__Garbage_Collected__ThreadReference__9) + this.idString();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public static ThreadReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpThreadID ID = new JdwpThreadID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("threadReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ThreadReferenceImpl mirror = (ThreadReferenceImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ThreadReferenceImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        return mirror;
    }

    public static void getConstantMaps() {
        if (fgThreadStatusMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.ThreadReferenceImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgThreadStatusMap = new HashMap();
        fgSuspendStatusStrings = new String[32];
        int i = 0;
        while (i < fields.length) {
            block13: {
                Field field = fields[i];
                if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                    try {
                        String name = field.getName();
                        int value = field.getInt(null);
                        Integer intValue = new Integer(value);
                        if (name.startsWith("JDWP_THREAD_STATUS_")) {
                            name = name.substring(19);
                            fgThreadStatusMap.put(intValue, name);
                            break block13;
                        }
                        if (!name.startsWith("SUSPEND_STATUS_")) break block13;
                        name = name.substring(15);
                        int j = 0;
                        while (j < fgSuspendStatusStrings.length) {
                            if ((1 << j & value) != 0) {
                                ThreadReferenceImpl.fgSuspendStatusStrings[j] = name;
                                break;
                            }
                            ++j;
                        }
                    }
                    catch (IllegalAccessException illegalAccessException) {
                    }
                    catch (IllegalArgumentException illegalArgumentException) {}
                }
            }
            ++i;
        }
    }

    public static Map threadStatusMap() {
        ThreadReferenceImpl.getConstantMaps();
        return fgThreadStatusMap;
    }

    public static String[] suspendStatusStrings() {
        ThreadReferenceImpl.getConstantMaps();
        return fgSuspendStatusStrings;
    }

    public void popFrames(StackFrame frameToPop) throws IncompatibleThreadStateException {
        if (!this.isSuspended()) {
            throw new IncompatibleThreadStateException();
        }
        if (!this.virtualMachineImpl().canPopFrames()) {
            throw new UnsupportedOperationException();
        }
        StackFrameImpl frame = (StackFrameImpl)frameToPop;
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                frame.writeWithThread(frame, outData);
                JdwpReplyPacket replyPacket = this.requestVM(4100, outBytes);
                switch (replyPacket.errorCode()) {
                    case 10: {
                        throw new InvalidStackFrameException();
                    }
                    case 30: {
                        throw new InvalidStackFrameException(JDIMessages.ThreadReferenceImpl_Unable_to_pop_the_requested_stack_frame_from_the_call_stack__Reasons_include__The_frame_id_was_invalid__The_thread_was_resumed__10);
                    }
                    case 13: {
                        throw new IncompatibleThreadStateException(JDIMessages.ThreadReferenceImpl_Unable_to_pop_the_requested_stack_frame__The_requested_stack_frame_is_not_suspended_11);
                    }
                    case 31: {
                        throw new InvalidStackFrameException(JDIMessages.ThreadReferenceImpl_Unable_to_pop_the_requested_stack_frame_from_the_call_stack__Reasons_include__The_requested_frame_was_the_last_frame_on_the_call_stack__The_requested_frame_was_the_last_frame_above_a_native_frame__12);
                    }
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
            }
            catch (IOException ioe) {
                this.defaultIOExceptionHandler(ioe);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }
}

