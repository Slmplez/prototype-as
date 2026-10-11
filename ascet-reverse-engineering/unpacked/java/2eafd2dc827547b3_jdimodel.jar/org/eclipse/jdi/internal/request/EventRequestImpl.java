/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMMismatchException
 *  com.sun.jdi.request.EventRequest
 *  com.sun.jdi.request.InvalidRequestStateException
 */
package org.eclipse.jdi.internal.request;

import com.sun.jdi.InternalException;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMMismatchException;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.InvalidRequestStateException;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.event.EventImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.request.RequestID;
import org.eclipse.jdi.internal.request.RequestMessages;

public abstract class EventRequestImpl
extends MirrorImpl
implements EventRequest {
    public static final byte STEP_SIZE_MIN_JDWP = 0;
    public static final byte STEP_SIZE_LINE_JDWP = 1;
    public static final byte STEP_DEPTH_INTO_JDWP = 0;
    public static final byte STEP_DEPTH_OVER_JDWP = 1;
    public static final byte STEP_DEPTH_OUT_JDWP = 2;
    public static final byte STEP_DEPTH_REENTER_JDWP_HCR = 3;
    public static final byte SUSPENDPOL_NONE_JDWP = 0;
    public static final byte SUSPENDPOL_EVENT_THREAD_JDWP = 1;
    public static final byte SUSPENDPOL_ALL_JDWP = 2;
    public static final byte MODIF_KIND_COUNT = 1;
    public static final byte MODIF_KIND_CONDITIONAL = 2;
    public static final byte MODIF_KIND_THREADONLY = 3;
    public static final byte MODIF_KIND_CLASSONLY = 4;
    public static final byte MODIF_KIND_CLASSMATCH = 5;
    public static final byte MODIF_KIND_CLASSEXCLUDE = 6;
    public static final byte MODIF_KIND_LOCATIONONLY = 7;
    public static final byte MODIF_KIND_EXCEPTIONONLY = 8;
    public static final byte MODIF_KIND_FIELDONLY = 9;
    public static final byte MODIF_KIND_STEP = 10;
    public static final byte MODIF_KIND_INSTANCE = 11;
    public static final byte MODIF_KIND_SOURCE_NAME_FILTER = 12;
    private static HashMap fStepSizeMap = null;
    private static HashMap fStepDepthMap = null;
    private static HashMap fSuspendPolicyMap = null;
    private static HashMap fModifierKindMap = null;
    private boolean fGeneratedInside = false;
    private HashMap fPropertyMap;
    protected RequestID fRequestID = null;
    private byte fSuspendPolicy = (byte)2;
    protected ArrayList fCountFilters;
    protected ArrayList fThreadFilters = null;
    protected ArrayList fClassFilters = null;
    protected ArrayList fClassFilterRefs = null;
    protected ArrayList fClassExclusionFilters = null;
    protected ArrayList fLocationFilters = null;
    protected ArrayList fExceptionFilters = null;
    protected ArrayList fFieldFilters = null;
    protected ArrayList fThreadStepFilters = null;
    protected ArrayList fInstanceFilters = null;
    protected ArrayList fSourceNameFilters = null;
    static /* synthetic */ Class class$0;

    protected EventRequestImpl(String description, VirtualMachineImpl vmImpl) {
        super(description, vmImpl);
    }

    public String toString() {
        return String.valueOf(super.toString()) + (this.fRequestID == null ? RequestMessages.EventRequestImpl___not_enabled__1 : String.valueOf(RequestMessages.EventRequestImpl____2) + this.fRequestID);
    }

    public Object getProperty(Object key) {
        if (this.fPropertyMap == null) {
            return null;
        }
        return this.fPropertyMap.get(key);
    }

    public void putProperty(Object key, Object value) {
        if (this.fPropertyMap == null) {
            this.fPropertyMap = new HashMap();
        }
        if (value == null) {
            this.fPropertyMap.remove(key);
        } else {
            this.fPropertyMap.put(key, value);
        }
    }

    public void setGeneratedInside() {
        this.fGeneratedInside = true;
    }

    public final boolean isGeneratedInside() {
        return this.fGeneratedInside;
    }

    public synchronized void disable() {
        if (!this.isEnabled()) {
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeByte(this.eventKind(), "event kind", EventImpl.eventKindMap(), outData);
                this.fRequestID.write(this, outData);
                JdwpReplyPacket replyPacket = this.requestVM(3842, outBytes);
                switch (replyPacket.errorCode()) {
                    case 41: {
                        throw new InvalidRequestStateException();
                    }
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                this.virtualMachineImpl().eventRequestManagerImpl().removeRequestIDMapping(this);
                this.fRequestID = null;
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

    public synchronized void enable() {
        if (this.isEnabled()) {
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeByte(this.eventKind(), "event kind", EventImpl.eventKindMap(), outData);
                this.writeByte(this.suspendPolicyJDWP(), "suspend policy", EventRequestImpl.suspendPolicyMap(), outData);
                this.writeInt(this.modifierCount(), "modifiers", outData);
                this.writeModifiers(outData);
                JdwpReplyPacket replyPacket = this.requestVM(3841, outBytes);
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fRequestID = RequestID.read(this, replyData);
                this.virtualMachineImpl().eventRequestManagerImpl().addRequestIDMapping(this);
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

    public static void clearAllBreakpoints(MirrorImpl mirror) {
        mirror.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = mirror.requestVM(3843);
            mirror.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            mirror.handledJdwpRequest();
        }
    }

    public final synchronized boolean isEnabled() {
        return this.fRequestID != null;
    }

    public void setEnabled(boolean enable) {
        if (enable) {
            this.enable();
        } else {
            this.disable();
        }
    }

    public void checkDisabled() throws InvalidRequestStateException {
        if (this.isEnabled()) {
            throw new InvalidRequestStateException();
        }
    }

    public void setSuspendPolicy(int suspendPolicy) {
        this.fSuspendPolicy = (byte)suspendPolicy;
        if (this.isEnabled()) {
            this.disable();
            this.enable();
        }
    }

    public int suspendPolicy() {
        return this.fSuspendPolicy;
    }

    public final RequestID requestID() {
        return this.fRequestID;
    }

    public void addCountFilter(int count) throws InvalidRequestStateException {
        this.checkDisabled();
        if (this.fCountFilters == null) {
            this.fCountFilters = new ArrayList();
        }
        this.fCountFilters.add(new Integer(count));
    }

    public void addThreadFilter(ThreadReference threadFilter) throws ObjectCollectedException, VMMismatchException, InvalidRequestStateException {
        this.checkVM((Mirror)threadFilter);
        this.checkDisabled();
        if (threadFilter.isCollected()) {
            throw new ObjectCollectedException();
        }
        if (this.fThreadFilters == null) {
            this.fThreadFilters = new ArrayList();
        }
        this.fThreadFilters.add(threadFilter);
    }

    public void addClassFilter(ReferenceType filter) throws VMMismatchException, InvalidRequestStateException {
        this.checkVM((Mirror)filter);
        this.checkDisabled();
        if (this.fClassFilterRefs == null) {
            this.fClassFilterRefs = new ArrayList();
        }
        this.fClassFilterRefs.add(filter);
    }

    public void addClassFilter(String filter) throws InvalidRequestStateException {
        this.checkDisabled();
        if (this.fClassFilters == null) {
            this.fClassFilters = new ArrayList();
        }
        this.fClassFilters.add(filter);
    }

    public void addClassExclusionFilter(String filter) throws InvalidRequestStateException {
        this.checkDisabled();
        if (this.fClassExclusionFilters == null) {
            this.fClassExclusionFilters = new ArrayList();
        }
        this.fClassExclusionFilters.add(filter);
    }

    public void addLocationFilter(LocationImpl location) throws VMMismatchException {
        this.checkDisabled();
        this.checkVM(location);
        if (this.fLocationFilters == null) {
            this.fLocationFilters = new ArrayList();
        }
        this.fLocationFilters.add(location);
    }

    public void addExceptionFilter(ReferenceTypeImpl refType, boolean notifyCaught, boolean notifyUncaught) throws VMMismatchException {
        this.checkDisabled();
        if (refType != null) {
            this.checkVM(refType);
        }
        if (this.fExceptionFilters == null) {
            this.fExceptionFilters = new ArrayList();
        }
        ExceptionFilter filter = new ExceptionFilter();
        filter.fException = refType;
        filter.fNotifyCaught = notifyCaught;
        filter.fNotifyUncaught = notifyUncaught;
        this.fExceptionFilters.add(filter);
    }

    public void addFieldFilter(FieldImpl field) throws VMMismatchException {
        this.checkDisabled();
        this.checkVM(field);
        if (this.fFieldFilters == null) {
            this.fFieldFilters = new ArrayList();
        }
        this.fFieldFilters.add(field);
    }

    public void addStepFilter(ThreadReferenceImpl thread, int size, int depth) throws VMMismatchException {
        this.checkDisabled();
        this.checkVM(thread);
        if (this.fThreadStepFilters == null) {
            this.fThreadStepFilters = new ArrayList();
        }
        ThreadStepFilter filter = new ThreadStepFilter();
        filter.fThread = thread;
        filter.fThreadStepSize = size;
        filter.fThreadStepDepth = depth;
        this.fThreadStepFilters.add(filter);
    }

    public void addInstanceFilter(ObjectReference instance) {
        this.checkDisabled();
        this.checkVM((Mirror)instance);
        if (this.fInstanceFilters == null) {
            this.fInstanceFilters = new ArrayList();
        }
        this.fInstanceFilters.add(instance);
    }

    public void addSourceNameFilter(String pattern) {
        this.checkDisabled();
        if (this.fSourceNameFilters == null) {
            this.fSourceNameFilters = new ArrayList();
        }
        this.fSourceNameFilters.add(pattern);
    }

    public byte suspendPolicyJDWP() {
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
        throw new InternalException(String.valueOf(RequestMessages.EventRequestImpl_Invalid_suspend_policy_encountered___3) + this.fSuspendPolicy);
    }

    public int threadStepSizeJDWP(int threadStepSize) {
        switch (threadStepSize) {
            case -1: {
                return 0;
            }
            case -2: {
                return 1;
            }
        }
        throw new InternalException(String.valueOf(RequestMessages.EventRequestImpl_Invalid_step_size_encountered___4) + threadStepSize);
    }

    public int threadStepDepthJDWP(int threadStepDepth) {
        switch (threadStepDepth) {
            case 1: {
                return 0;
            }
            case 2: {
                return 1;
            }
            case 3: {
                return 2;
            }
        }
        throw new InternalException(String.valueOf(RequestMessages.EventRequestImpl_Invalid_step_depth_encountered___5) + threadStepDepth);
    }

    protected abstract byte eventKind();

    protected int modifierCount() {
        int count = 0;
        if (this.fCountFilters != null) {
            count += this.fCountFilters.size();
        }
        if (this.fThreadFilters != null) {
            count += this.fThreadFilters.size();
        }
        if (this.fClassFilterRefs != null) {
            count += this.fClassFilterRefs.size();
        }
        if (this.fClassFilters != null) {
            count += this.fClassFilters.size();
        }
        if (this.fClassExclusionFilters != null) {
            count += this.fClassExclusionFilters.size();
        }
        if (this.fLocationFilters != null) {
            count += this.fLocationFilters.size();
        }
        if (this.fExceptionFilters != null) {
            count += this.fExceptionFilters.size();
        }
        if (this.fFieldFilters != null) {
            count += this.fFieldFilters.size();
        }
        if (this.fThreadStepFilters != null) {
            count += this.fThreadStepFilters.size();
        }
        if (this.fInstanceFilters != null) {
            count += this.fInstanceFilters.size();
        }
        if (this.fSourceNameFilters != null && this.supportsSourceNameFilters()) {
            count += this.fSourceNameFilters.size();
        }
        return count;
    }

    protected void writeModifiers(DataOutputStream outData) throws IOException {
        Object filter;
        int i;
        if (this.fThreadStepFilters != null) {
            i = 0;
            while (i < this.fThreadStepFilters.size()) {
                filter = (ThreadStepFilter)this.fThreadStepFilters.get(i);
                this.writeByte((byte)10, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((ThreadStepFilter)filter).fThread.write(this, outData);
                this.writeInt(this.threadStepSizeJDWP(((ThreadStepFilter)filter).fThreadStepSize), "step size", outData);
                this.writeInt(this.threadStepDepthJDWP(((ThreadStepFilter)filter).fThreadStepDepth), "step depth", outData);
                ++i;
            }
        }
        if (this.fFieldFilters != null) {
            i = 0;
            while (i < this.fFieldFilters.size()) {
                this.writeByte((byte)9, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((FieldImpl)this.fFieldFilters.get(i)).writeWithReferenceType(this, outData);
                ++i;
            }
        }
        if (this.fExceptionFilters != null) {
            i = 0;
            while (i < this.fExceptionFilters.size()) {
                filter = (ExceptionFilter)this.fExceptionFilters.get(i);
                this.writeByte((byte)8, "modifier", EventRequestImpl.modifierKindMap(), outData);
                if (((ExceptionFilter)filter).fException != null) {
                    ((ExceptionFilter)filter).fException.write(this, outData);
                } else {
                    ReferenceTypeImpl.writeNull(this, outData);
                }
                this.writeBoolean(((ExceptionFilter)filter).fNotifyCaught, "notify caught", outData);
                this.writeBoolean(((ExceptionFilter)filter).fNotifyUncaught, "notify uncaught", outData);
                ++i;
            }
        }
        if (this.fLocationFilters != null) {
            i = 0;
            while (i < this.fLocationFilters.size()) {
                this.writeByte((byte)7, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((LocationImpl)this.fLocationFilters.get(i)).write(this, outData);
                ++i;
            }
        }
        if (this.fClassExclusionFilters != null) {
            i = 0;
            while (i < this.fClassExclusionFilters.size()) {
                this.writeByte((byte)6, "modifier", EventRequestImpl.modifierKindMap(), outData);
                this.writeString((String)this.fClassExclusionFilters.get(i), "class excl. filter", outData);
                ++i;
            }
        }
        if (this.fClassFilters != null) {
            i = 0;
            while (i < this.fClassFilters.size()) {
                this.writeByte((byte)5, "modifier", EventRequestImpl.modifierKindMap(), outData);
                this.writeString((String)this.fClassFilters.get(i), "class filter", outData);
                ++i;
            }
        }
        if (this.fClassFilterRefs != null) {
            i = 0;
            while (i < this.fClassFilterRefs.size()) {
                this.writeByte((byte)4, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((ReferenceTypeImpl)this.fClassFilterRefs.get(i)).write(this, outData);
                ++i;
            }
        }
        if (this.fThreadFilters != null) {
            i = 0;
            while (i < this.fThreadFilters.size()) {
                this.writeByte((byte)3, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((ThreadReferenceImpl)this.fThreadFilters.get(i)).write(this, outData);
                ++i;
            }
        }
        if (this.fCountFilters != null) {
            i = 0;
            while (i < this.fCountFilters.size()) {
                this.writeByte((byte)1, "modifier", EventRequestImpl.modifierKindMap(), outData);
                this.writeInt((Integer)this.fCountFilters.get(i), "count filter", outData);
                ++i;
            }
        }
        if (this.fInstanceFilters != null) {
            i = 0;
            while (i < this.fInstanceFilters.size()) {
                this.writeByte((byte)11, "modifier", EventRequestImpl.modifierKindMap(), outData);
                ((ObjectReferenceImpl)this.fInstanceFilters.get(i)).write(this, outData);
                ++i;
            }
        }
        if (this.fSourceNameFilters != null && this.supportsSourceNameFilters()) {
            i = 0;
            while (i < this.fSourceNameFilters.size()) {
                this.writeByte((byte)12, "modifier", EventRequestImpl.modifierKindMap(), outData);
                this.writeString((String)this.fSourceNameFilters.get(i), "modifier", outData);
                ++i;
            }
        }
    }

    private boolean supportsSourceNameFilters() {
        return ((VirtualMachineImpl)this.virtualMachine()).isJdwpVersionGreaterOrEqual(1, 6);
    }

    public static void getConstantMaps() {
        if (fStepSizeMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.request.EventRequestImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fStepSizeMap = new HashMap();
        fStepDepthMap = new HashMap();
        fSuspendPolicyMap = new HashMap();
        fModifierKindMap = new HashMap();
        int i = 0;
        while (i < fields.length) {
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    String name = field.getName();
                    Integer intValue = new Integer(field.getInt(null));
                    if (name.startsWith("STEP_SIZE_")) {
                        name = name.substring(10);
                        fStepSizeMap.put(intValue, name);
                    } else if (name.startsWith("STEP_DEPTH_")) {
                        name = name.substring(11);
                        fStepDepthMap.put(intValue, name);
                    } else if (name.startsWith("SUSPENDPOL_")) {
                        name = name.substring(11);
                        fSuspendPolicyMap.put(intValue, name);
                    } else if (name.startsWith("MODIF_KIND_")) {
                        name = name.substring(11);
                        fModifierKindMap.put(intValue, name);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static Map stepSizeMap() {
        EventRequestImpl.getConstantMaps();
        return fStepSizeMap;
    }

    public static Map stepDepthMap() {
        EventRequestImpl.getConstantMaps();
        return fStepDepthMap;
    }

    public static Map suspendPolicyMap() {
        EventRequestImpl.getConstantMaps();
        return fSuspendPolicyMap;
    }

    public static Map modifierKindMap() {
        EventRequestImpl.getConstantMaps();
        return fModifierKindMap;
    }

    class ExceptionFilter {
        ReferenceTypeImpl fException = null;
        boolean fNotifyCaught = false;
        boolean fNotifyUncaught = false;

        ExceptionFilter() {
        }
    }

    class ThreadStepFilter {
        protected ThreadReferenceImpl fThread = null;
        protected int fThreadStepSize;
        protected int fThreadStepDepth;

        ThreadStepFilter() {
        }
    }
}

