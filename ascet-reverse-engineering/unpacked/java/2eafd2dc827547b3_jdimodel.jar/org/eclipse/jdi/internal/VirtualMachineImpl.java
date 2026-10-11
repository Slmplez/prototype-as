/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.BooleanValue
 *  com.sun.jdi.ByteValue
 *  com.sun.jdi.CharValue
 *  com.sun.jdi.DoubleValue
 *  com.sun.jdi.FloatValue
 *  com.sun.jdi.IntegerValue
 *  com.sun.jdi.LongValue
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ShortValue
 *  com.sun.jdi.StringReference
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.VirtualMachine
 *  com.sun.jdi.VoidValue
 *  com.sun.jdi.connect.spi.Connection
 *  com.sun.jdi.event.EventQueue
 *  com.sun.jdi.request.EventRequestManager
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.BooleanValue;
import com.sun.jdi.ByteValue;
import com.sun.jdi.CharValue;
import com.sun.jdi.DoubleValue;
import com.sun.jdi.FloatValue;
import com.sun.jdi.IntegerValue;
import com.sun.jdi.LongValue;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ShortValue;
import com.sun.jdi.StringReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VoidValue;
import com.sun.jdi.connect.spi.Connection;
import com.sun.jdi.event.EventQueue;
import com.sun.jdi.request.EventRequestManager;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdi.Bootstrap;
import org.eclipse.jdi.VirtualMachine;
import org.eclipse.jdi.internal.BooleanTypeImpl;
import org.eclipse.jdi.internal.BooleanValueImpl;
import org.eclipse.jdi.internal.ByteTypeImpl;
import org.eclipse.jdi.internal.ByteValueImpl;
import org.eclipse.jdi.internal.CharTypeImpl;
import org.eclipse.jdi.internal.CharValueImpl;
import org.eclipse.jdi.internal.DoubleTypeImpl;
import org.eclipse.jdi.internal.DoubleValueImpl;
import org.eclipse.jdi.internal.FloatTypeImpl;
import org.eclipse.jdi.internal.FloatValueImpl;
import org.eclipse.jdi.internal.IntegerTypeImpl;
import org.eclipse.jdi.internal.IntegerValueImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LongTypeImpl;
import org.eclipse.jdi.internal.LongValueImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.ShortTypeImpl;
import org.eclipse.jdi.internal.ShortValueImpl;
import org.eclipse.jdi.internal.StringReferenceImpl;
import org.eclipse.jdi.internal.ThreadGroupReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.ValueCache;
import org.eclipse.jdi.internal.VirtualMachineManagerImpl;
import org.eclipse.jdi.internal.VoidValueImpl;
import org.eclipse.jdi.internal.connect.PacketReceiveManager;
import org.eclipse.jdi.internal.connect.PacketSendManager;
import org.eclipse.jdi.internal.event.EventQueueImpl;
import org.eclipse.jdi.internal.jdwp.JdwpObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReferenceTypeID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.request.EventRequestManagerImpl;

public class VirtualMachineImpl
extends MirrorImpl
implements com.sun.jdi.VirtualMachine,
org.eclipse.jdi.hcr.VirtualMachine,
VirtualMachine {
    public static final byte HCR_RELOAD_SUCCESS = 0;
    public static final byte HCR_RELOAD_FAILURE = 1;
    public static final byte HCR_RELOAD_IGNORED = 2;
    private static final int HCR_CAN_RELOAD_CLASSES = 0;
    private static final int HCR_CAN_GET_CLASS_VERSION = 1;
    private static final int HCR_CAN_DO_RETURN = 2;
    private static final int HCR_CAN_REENTER_ON_EXIT = 3;
    protected static final String JAVA_STRATUM_NAME = "Java";
    private int fRequestTimeout;
    private static Map fgHCRResultMap = null;
    private EventRequestManagerImpl fEventReqMgr;
    private EventQueueImpl fEventQueue;
    private Process fLaunchedProcess;
    private ValueCache fCachedReftypes = new ValueCache();
    private ValueCache fCachedObjects = new ValueCache();
    private String fVersionDescription = null;
    private int fJdwpMajorVersion;
    private int fJdwpMinorVersion;
    private String fVMVersion;
    private String fVMName;
    private boolean fGotIDSizes = false;
    private int fFieldIDSize;
    private int fMethodIDSize;
    private int fObjectIDSize;
    private int fReferenceTypeIDSize;
    private int fFrameIDSize;
    private boolean fGotCapabilities = false;
    private boolean fCanWatchFieldModification;
    private boolean fCanWatchFieldAccess;
    private boolean fCanGetBytecodes;
    private boolean fCanGetSyntheticAttribute;
    private boolean fCanGetOwnedMonitorInfo;
    private boolean fCanGetCurrentContendedMonitor;
    private boolean fCanGetMonitorInfo;
    private boolean fCanRedefineClasses;
    private boolean fCanAddMethod;
    private boolean fCanUnrestrictedlyRedefineClasses;
    private boolean fCanPopFrames;
    private boolean fCanUseInstanceFilters;
    private boolean fCanGetSourceDebugExtension;
    private boolean fCanRequestVMDeathEvent;
    private boolean fCanSetDefaultStratum;
    private boolean fCanGetInstanceInfo;
    private boolean fCanGetConstantPool;
    private boolean fCanUseSourceNameFilters;
    private boolean fCanForceEarlyReturn;
    private boolean fCanRequestMonitorEvents;
    private boolean fCanGetMonitorFrameInfo;
    private boolean[] fHcrCapabilities = null;
    private BooleanTypeImpl fBooleanType;
    private ByteTypeImpl fByteType;
    private CharTypeImpl fCharType;
    private DoubleTypeImpl fDoubleType;
    private FloatTypeImpl fFloatType;
    private IntegerTypeImpl fIntegerType;
    private LongTypeImpl fLongType;
    private ShortTypeImpl fShortType;
    private boolean fIsDisconnected = false;
    private String fDefaultStratum;
    private PacketReceiveManager fPacketReceiveManager;
    private PacketSendManager fPacketSendManager;
    static /* synthetic */ Class class$0;

    public VirtualMachineImpl(Connection connection) {
        super("VirtualMachine");
        this.fEventReqMgr = new EventRequestManagerImpl(this);
        this.fEventQueue = new EventQueueImpl(this);
        this.fRequestTimeout = ((VirtualMachineManagerImpl)Bootstrap.virtualMachineManager()).getGlobalRequestTimeout();
        this.fPacketReceiveManager = new PacketReceiveManager(connection, this);
        Thread receiveThread = new Thread((Runnable)this.fPacketReceiveManager, JDIMessages.VirtualMachineImpl_0);
        receiveThread.setDaemon(true);
        this.fPacketReceiveManager.setPartnerThread(receiveThread);
        receiveThread.start();
        this.fPacketSendManager = new PacketSendManager(connection);
        Thread sendThread = new Thread((Runnable)this.fPacketSendManager, JDIMessages.VirtualMachineImpl_1);
        sendThread.setDaemon(true);
        this.fPacketReceiveManager.setPartnerThread(sendThread);
        sendThread.start();
    }

    public final int fieldIDSize() {
        return this.fFieldIDSize;
    }

    public final int methodIDSize() {
        return this.fMethodIDSize;
    }

    public final int objectIDSize() {
        return this.fObjectIDSize;
    }

    public final int referenceTypeIDSize() {
        return this.fReferenceTypeIDSize;
    }

    public final int frameIDSize() {
        return this.fFrameIDSize;
    }

    public ReferenceTypeImpl getCachedMirror(JdwpReferenceTypeID ID) {
        return (ReferenceTypeImpl)this.fCachedReftypes.get(ID);
    }

    public ObjectReferenceImpl getCachedMirror(JdwpObjectID ID) {
        return (ObjectReferenceImpl)this.fCachedObjects.get(ID);
    }

    public void addCachedMirror(ReferenceTypeImpl mirror) {
        this.fCachedReftypes.put(mirror.getRefTypeID(), mirror);
    }

    public void addCachedMirror(ObjectReferenceImpl mirror) {
        this.fCachedObjects.put(mirror.getObjectID(), mirror);
    }

    public void flushStoredJdwpResults() {
        Iterator iter = this.fCachedReftypes.values().iterator();
        while (iter.hasNext()) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)iter.next();
            refType.flushStoredJdwpResults();
        }
        this.fVersionDescription = null;
        this.fGotIDSizes = false;
        this.fHcrCapabilities = null;
    }

    public final void removeKnownRefType(String signature) {
        List refTypeList = this.classesBySignature(signature);
        if (refTypeList.isEmpty()) {
            return;
        }
        if (refTypeList.size() == 1) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)refTypeList.get(0);
            refType.flushStoredJdwpResults();
            this.fCachedReftypes.remove(refType.getRefTypeID());
            return;
        }
        Iterator iter = refTypeList.iterator();
        while (iter.hasNext()) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)iter.next();
            boolean prepared = false;
            try {
                prepared = refType.isPrepared();
            }
            catch (ObjectCollectedException objectCollectedException) {}
            if (prepared) continue;
            refType.flushStoredJdwpResults();
            iter.remove();
            this.fCachedReftypes.remove(refType.getRefTypeID());
        }
    }

    public void checkHCRSupported() throws UnsupportedOperationException {
        if (!this.isHCRSupported()) {
            throw new UnsupportedOperationException(MessageFormat.format((String)JDIMessages.VirtualMachineImpl_Target_VM__0__does_not_support_Hot_Code_Replacement_1, (Object[])new String[]{this.name()}));
        }
    }

    public boolean isHCRSupported() throws UnsupportedOperationException {
        return this.name().equals("j9");
    }

    public final PacketReceiveManager packetReceiveManager() {
        return this.fPacketReceiveManager;
    }

    public final PacketSendManager packetSendManager() {
        if (!this.fGotIDSizes) {
            this.getIDSizes();
            if (!this.fGotIDSizes) {
                this.disconnectVM();
                throw new VMDisconnectedException(JDIMessages.VirtualMachineImpl_Failed_to_get_ID_sizes_2);
            }
            this.eventRequestManagerImpl().enableInternalClasUnloadEvent();
        }
        return this.fPacketSendManager;
    }

    public List allClasses() {
        this.initJdwpRequest();
        try {
            boolean withGenericSignature = this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5);
            int jdwpCommand = withGenericSignature ? 276 : 259;
            JdwpReplyPacket replyPacket = this.requestVM(jdwpCommand);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<ReferenceTypeImpl> elements = new ArrayList<ReferenceTypeImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                ReferenceTypeImpl elt = ReferenceTypeImpl.readWithTypeTagAndSignature(this, withGenericSignature, replyData);
                if (elt != null) {
                    this.readInt("status", ReferenceTypeImpl.classStatusStrings(), replyData);
                    elements.add(elt);
                }
                ++i;
            }
            ArrayList<ReferenceTypeImpl> arrayList = elements;
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

    protected final Iterator allRefTypes() {
        return this.allClasses().iterator();
    }

    protected final Iterator allCachedRefTypes() {
        return this.fCachedReftypes.values().iterator();
    }

    public List allThreads() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(260);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<ThreadReferenceImpl> elements = new ArrayList<ThreadReferenceImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                ThreadReferenceImpl elt = ThreadReferenceImpl.read(this, replyData);
                if (elt != null) {
                    elements.add(elt);
                }
                ++i;
            }
            ArrayList<ThreadReferenceImpl> arrayList = elements;
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

    public void getCapabilities() {
        if (this.fGotCapabilities) {
            return;
        }
        int command = 268;
        if (this.isJdwpVersionGreaterOrEqual(1, 4)) {
            command = 273;
        }
        this.initJdwpRequest();
        try {
            try {
                JdwpReplyPacket replyPacket = this.requestVM(command);
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fCanWatchFieldModification = this.readBoolean("watch field modification", replyData);
                this.fCanWatchFieldAccess = this.readBoolean("watch field access", replyData);
                this.fCanGetBytecodes = this.readBoolean("get bytecodes", replyData);
                this.fCanGetSyntheticAttribute = this.readBoolean("synth. attr", replyData);
                this.fCanGetOwnedMonitorInfo = this.readBoolean("owned monitor info", replyData);
                this.fCanGetCurrentContendedMonitor = this.readBoolean("curr. contended monitor", replyData);
                this.fCanGetMonitorInfo = this.readBoolean("monitor info", replyData);
                if (command == 273) {
                    this.fCanRedefineClasses = this.readBoolean("redefine classes", replyData);
                    this.fCanAddMethod = this.readBoolean("add method", replyData);
                    this.fCanUnrestrictedlyRedefineClasses = this.readBoolean("unrestrictedly redefine classes", replyData);
                    this.fCanPopFrames = this.readBoolean("pop frames", replyData);
                    this.fCanUseInstanceFilters = this.readBoolean("use instance filters", replyData);
                    this.fCanGetSourceDebugExtension = this.readBoolean("get source debug extension", replyData);
                    this.fCanRequestVMDeathEvent = this.readBoolean("request vm death", replyData);
                    this.fCanSetDefaultStratum = this.readBoolean("set default stratum", replyData);
                    this.fCanGetInstanceInfo = this.readBoolean("instance info", replyData);
                    this.fCanRequestMonitorEvents = this.readBoolean("request monitor events", replyData);
                    this.fCanGetMonitorFrameInfo = this.readBoolean("monitor frame info", replyData);
                    this.fCanUseSourceNameFilters = this.readBoolean("source name filters", replyData);
                    this.fCanGetConstantPool = this.readBoolean("constant pool", replyData);
                    this.fCanForceEarlyReturn = this.readBoolean("force early return", replyData);
                } else {
                    this.fCanRedefineClasses = false;
                    this.fCanAddMethod = false;
                    this.fCanUnrestrictedlyRedefineClasses = false;
                    this.fCanPopFrames = false;
                    this.fCanUseInstanceFilters = false;
                    this.fCanGetSourceDebugExtension = false;
                    this.fCanRequestVMDeathEvent = false;
                    this.fCanSetDefaultStratum = false;
                    this.fCanGetInstanceInfo = false;
                    this.fCanGetConstantPool = false;
                    this.fCanUseSourceNameFilters = false;
                    this.fCanForceEarlyReturn = false;
                    this.fCanRequestMonitorEvents = false;
                    this.fCanGetMonitorFrameInfo = false;
                }
                this.fGotCapabilities = true;
            }
            catch (IOException e) {
                this.fGotIDSizes = false;
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean canForceEarlyReturn() {
        this.getCapabilities();
        return this.fCanForceEarlyReturn;
    }

    public boolean canGetBytecodes() {
        this.getCapabilities();
        return this.fCanGetBytecodes;
    }

    public boolean canGetCurrentContendedMonitor() {
        this.getCapabilities();
        return this.fCanGetCurrentContendedMonitor;
    }

    public boolean canGetInstanceInfo() {
        this.getCapabilities();
        return this.fCanGetInstanceInfo;
    }

    public boolean canGetMethodReturnValues() {
        return this.isJdwpVersionGreaterOrEqual(1, 6);
    }

    public boolean canGetMonitorInfo() {
        this.getCapabilities();
        return this.fCanGetMonitorInfo;
    }

    public boolean canGetMonitorFrameInfo() {
        this.getCapabilities();
        return this.fCanGetMonitorFrameInfo;
    }

    public boolean canGetOwnedMonitorInfo() {
        this.getCapabilities();
        return this.fCanGetOwnedMonitorInfo;
    }

    public boolean canGetSyntheticAttribute() {
        this.getCapabilities();
        return this.fCanGetSyntheticAttribute;
    }

    public boolean canRequestMonitorEvents() {
        this.getCapabilities();
        return this.fCanRequestMonitorEvents;
    }

    public boolean canWatchFieldAccess() {
        this.getCapabilities();
        return this.fCanWatchFieldAccess;
    }

    public boolean canWatchFieldModification() {
        this.getCapabilities();
        return this.fCanWatchFieldModification;
    }

    public List classesBySignature(String signature) {
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeString(signature, "signature", outData);
            JdwpReplyPacket replyPacket = this.requestVM(258, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<ReferenceTypeImpl> elements = new ArrayList<ReferenceTypeImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                ReferenceTypeImpl elt = ReferenceTypeImpl.readWithTypeTag(this, replyData);
                this.readInt("status", ReferenceTypeImpl.classStatusStrings(), replyData);
                if (elt != null) {
                    elements.add(elt);
                }
                ++i;
            }
            ArrayList<ReferenceTypeImpl> arrayList = elements;
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

    public List classesByName(String name) {
        String signature = TypeImpl.classNameToSignature(name);
        return this.classesBySignature(signature);
    }

    public void dispose() {
        this.initJdwpRequest();
        try {
            try {
                this.requestVM(262);
                this.disconnectVM();
            }
            catch (VMDisconnectedException vMDisconnectedException) {
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public EventQueue eventQueue() {
        return this.fEventQueue;
    }

    public EventRequestManager eventRequestManager() {
        return this.fEventReqMgr;
    }

    public EventRequestManagerImpl eventRequestManagerImpl() {
        return this.fEventReqMgr;
    }

    public void exit(int exitCode) {
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeInt(exitCode, "exit code", outData);
                this.requestVM(266, outBytes);
                this.disconnectVM();
            }
            catch (VMDisconnectedException vMDisconnectedException) {
                this.handledJdwpRequest();
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

    public ByteValue mirrorOf(byte value) {
        return new ByteValueImpl(this.virtualMachineImpl(), new Byte(value));
    }

    public CharValue mirrorOf(char value) {
        return new CharValueImpl(this.virtualMachineImpl(), new Character(value));
    }

    public DoubleValue mirrorOf(double value) {
        return new DoubleValueImpl(this.virtualMachineImpl(), new Double(value));
    }

    public FloatValue mirrorOf(float value) {
        return new FloatValueImpl(this.virtualMachineImpl(), new Float(value));
    }

    public IntegerValue mirrorOf(int value) {
        return new IntegerValueImpl(this.virtualMachineImpl(), new Integer(value));
    }

    public LongValue mirrorOf(long value) {
        return new LongValueImpl(this.virtualMachineImpl(), new Long(value));
    }

    public ShortValue mirrorOf(short value) {
        return new ShortValueImpl(this.virtualMachineImpl(), new Short(value));
    }

    public BooleanValue mirrorOf(boolean value) {
        return new BooleanValueImpl(this.virtualMachineImpl(), value);
    }

    public StringReference mirrorOf(String value) {
        this.initJdwpRequest();
        try {
            StringReferenceImpl result;
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeString(value, "string value", outData);
            JdwpReplyPacket replyPacket = this.requestVM(267, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            StringReferenceImpl stringReferenceImpl = result = StringReferenceImpl.read(this, replyData);
            return stringReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public VoidValue mirrorOfVoid() {
        return new VoidValueImpl(this);
    }

    public Process process() {
        return this.fLaunchedProcess;
    }

    public void setLaunchedProcess(Process proc) {
        this.fLaunchedProcess = proc;
    }

    public void resume() {
        this.initJdwpRequest();
        try {
            this.resetThreadEventFlags();
            JdwpReplyPacket replyPacket = this.requestVM(265);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void setDebugTraceMode(int traceFlags) {
    }

    public void suspend() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(264);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List topLevelThreadGroups() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(261);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrGroups = this.readInt("nr of groups", replyData);
            ArrayList<ThreadGroupReferenceImpl> result = new ArrayList<ThreadGroupReferenceImpl>(nrGroups);
            int i = 0;
            while (i < nrGroups) {
                ThreadGroupReferenceImpl threadGroup = ThreadGroupReferenceImpl.read(this, replyData);
                result.add(threadGroup);
                ++i;
            }
            ArrayList<ThreadGroupReferenceImpl> arrayList = result;
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

    public String name() {
        this.getVersionInfo();
        return this.fVMName;
    }

    public String version() {
        this.getVersionInfo();
        return this.fVMVersion;
    }

    public String description() {
        this.getVersionInfo();
        return this.fVersionDescription;
    }

    private void resetThreadEventFlags() {
        Iterator iter = this.allThreads().iterator();
        while (iter.hasNext()) {
            ThreadReferenceImpl thread = (ThreadReferenceImpl)iter.next();
            thread.resetEventFlags();
        }
    }

    private void getIDSizes() {
        if (this.fGotIDSizes) {
            return;
        }
        this.fGotIDSizes = true;
        VoidValueImpl mirror = new VoidValueImpl(this);
        mirror.initJdwpRequest();
        try {
            try {
                JdwpReplyPacket replyPacket = mirror.requestVM(263);
                mirror.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fFieldIDSize = mirror.readInt("field ID size", replyData);
                this.fMethodIDSize = mirror.readInt("method ID size", replyData);
                this.fObjectIDSize = mirror.readInt("object ID size", replyData);
                this.fReferenceTypeIDSize = mirror.readInt("refType ID size", replyData);
                this.fFrameIDSize = mirror.readInt("frame ID size", replyData);
            }
            catch (IOException e) {
                this.fGotIDSizes = false;
                mirror.defaultIOExceptionHandler(e);
                mirror.handledJdwpRequest();
            }
        }
        finally {
            mirror.handledJdwpRequest();
        }
    }

    public void getVersionInfo() {
        if (this.fVersionDescription != null) {
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                JdwpReplyPacket replyPacket = this.requestVM(257);
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fVersionDescription = this.readString("version descr.", replyData);
                this.fJdwpMajorVersion = this.readInt("major version", replyData);
                this.fJdwpMinorVersion = this.readInt("minor version", replyData);
                this.fVMVersion = this.readString("version", replyData);
                this.fVMName = this.readString("name", replyData);
                if (this.fVMName != null && this.fVMName.equals("KVM")) {
                    this.eventRequestManagerImpl().enableInternalClassPrepareEvent();
                }
            }
            catch (IOException e) {
                this.fVersionDescription = null;
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void getHCRCapabilities() {
        if (this.fHcrCapabilities != null) {
            return;
        }
        this.fHcrCapabilities = new boolean[4];
        if (this.isHCRSupported()) {
            this.initJdwpRequest();
            try {
                try {
                    JdwpReplyPacket replyPacket = this.requestVM(32773);
                    this.defaultReplyErrorHandler(replyPacket.errorCode());
                    DataInputStream replyData = replyPacket.dataInStream();
                    this.fHcrCapabilities[0] = this.readBoolean("reload classes", replyData);
                    this.fHcrCapabilities[1] = this.readBoolean("get class version", replyData);
                    this.fHcrCapabilities[2] = this.readBoolean("do return", replyData);
                    this.fHcrCapabilities[3] = this.readBoolean("reenter on exit", replyData);
                }
                catch (IOException e) {
                    this.fHcrCapabilities = null;
                    this.defaultIOExceptionHandler(e);
                    this.handledJdwpRequest();
                }
            }
            finally {
                this.handledJdwpRequest();
            }
        } else {
            int i = 0;
            while (i < this.fHcrCapabilities.length) {
                this.fHcrCapabilities[i] = false;
                ++i;
            }
        }
    }

    public boolean canReloadClasses() {
        this.getHCRCapabilities();
        return this.fHcrCapabilities[0];
    }

    public boolean canGetClassFileVersion1() {
        this.getHCRCapabilities();
        return this.fHcrCapabilities[1];
    }

    public boolean canGetClassFileVersion() {
        return this.isJdwpVersionGreaterOrEqual(1, 6);
    }

    public boolean canGetConstantPool() {
        this.getCapabilities();
        return this.fCanGetConstantPool;
    }

    public boolean canDoReturn() {
        this.getHCRCapabilities();
        return this.fHcrCapabilities[2];
    }

    public boolean canReenterOnExit() {
        this.getHCRCapabilities();
        return this.fHcrCapabilities[3];
    }

    public int classesHaveChanged(String[] names) {
        this.checkHCRSupported();
        String[] signatures = new String[names.length];
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeInt(names.length, "length", outData);
            int i = 0;
            while (i < names.length) {
                signatures[i] = TypeImpl.classNameToSignature(names[i]);
                this.writeString(signatures[i], "signature", outData);
                ++i;
            }
            JdwpReplyPacket replyPacket = this.requestVM(32769, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            byte resultFlag = this.readByte("result", VirtualMachineImpl.resultHCRMap(), replyData);
            switch (resultFlag) {
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
            try {
                throw new InternalError(String.valueOf(JDIMessages.VirtualMachineImpl_Invalid_result_flag_in_Classes_Have_Changed_response___3) + resultFlag + JDIMessages.VirtualMachineImpl__4);
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                return 0;
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public String toString() {
        try {
            return this.name();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public static void getConstantMaps() {
        if (fgHCRResultMap != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.VirtualMachineImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgHCRResultMap = new HashMap();
        int i = 0;
        while (i < fields.length) {
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                try {
                    String name = field.getName();
                    if (name.startsWith("HCR_RELOAD_")) {
                        Integer intValue = new Integer(field.getInt(null));
                        name = name.substring(4);
                        fgHCRResultMap.put(intValue, name);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static Map resultHCRMap() {
        VirtualMachineImpl.getConstantMaps();
        return fgHCRResultMap;
    }

    public void setRequestTimeout(int timeout) {
        this.fRequestTimeout = timeout;
    }

    public int getRequestTimeout() {
        return this.fRequestTimeout;
    }

    public boolean isJdwpVersionGreaterOrEqual(int major, int minor) {
        this.getVersionInfo();
        return this.fJdwpMajorVersion > major || this.fJdwpMajorVersion == major && this.fJdwpMinorVersion >= minor;
    }

    public void redefineClasses(Map typesToBytes) {
        if (!this.canRedefineClasses()) {
            throw new UnsupportedOperationException();
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeInt(typesToBytes.size(), "classes", outData);
                Set types = typesToBytes.keySet();
                Iterator iter = types.iterator();
                while (iter.hasNext()) {
                    ReferenceTypeImpl type = (ReferenceTypeImpl)iter.next();
                    type.write(this, outData);
                    byte[] bytes = (byte[])typesToBytes.get(type);
                    this.writeInt(bytes.length, "classfile", outData);
                    int i = 0;
                    while (i < bytes.length) {
                        this.writeByte(bytes[i], "classByte", outData);
                        ++i;
                    }
                    this.fCachedReftypes.remove(type.getRefTypeID());
                }
                JdwpReplyPacket reply = this.requestVM(274, outBytes);
                switch (reply.errorCode()) {
                    case 68: {
                        throw new UnsupportedClassVersionError();
                    }
                    case 60: {
                        throw new ClassFormatError();
                    }
                    case 61: {
                        throw new ClassCircularityError();
                    }
                    case 62: {
                        throw new VerifyError();
                    }
                    case 69: {
                        throw new NoClassDefFoundError();
                    }
                    case 63: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Add_method_not_implemented_1);
                    }
                    case 64: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Scheme_change_not_implemented_2);
                    }
                    case 66: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Hierarchy_change_not_implemented_3);
                    }
                    case 67: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Delete_method_not_implemented_4);
                    }
                    case 70: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Class_modifiers_change_not_implemented_5);
                    }
                    case 71: {
                        throw new UnsupportedOperationException(JDIMessages.VirtualMachineImpl_Method_modifiers_change_not_implemented_6);
                    }
                }
                this.defaultReplyErrorHandler(reply.errorCode());
            }
            catch (IOException ioe) {
                this.defaultIOExceptionHandler(ioe);
                this.handledJdwpRequest();
                return;
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean canRedefineClasses() {
        this.getCapabilities();
        return this.fCanRedefineClasses;
    }

    public boolean canUseInstanceFilters() {
        this.getCapabilities();
        return this.fCanUseInstanceFilters;
    }

    public boolean canAddMethod() {
        this.getCapabilities();
        return this.fCanAddMethod;
    }

    public boolean canUnrestrictedlyRedefineClasses() {
        this.getCapabilities();
        return this.fCanUnrestrictedlyRedefineClasses;
    }

    public boolean canUseSourceNameFilters() {
        this.getCapabilities();
        return this.fCanUseSourceNameFilters;
    }

    public boolean canPopFrames() {
        this.getCapabilities();
        return this.fCanPopFrames;
    }

    public boolean canGetSourceDebugExtension() {
        this.getCapabilities();
        return this.fCanGetSourceDebugExtension;
    }

    public boolean canRequestVMDeathEvent() {
        this.getCapabilities();
        return this.fCanRequestVMDeathEvent;
    }

    public boolean canSetDefaultStratum() {
        this.getCapabilities();
        return this.fCanSetDefaultStratum;
    }

    public void setDefaultStratum(String stratum) {
        this.fDefaultStratum = stratum;
        if (!this.canSetDefaultStratum()) {
            return;
        }
        if (stratum == null) {
            stratum = "";
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeString(stratum, "stratum ID", outData);
                JdwpReplyPacket replyPacket = this.requestVM(275, outBytes);
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

    public String getDefaultStratum() {
        return this.fDefaultStratum;
    }

    public long[] instanceCounts(List refTypes) {
        if (refTypes == null) {
            throw new NullPointerException(JDIMessages.VirtualMachineImpl_2);
        }
        int size = refTypes.size();
        if (size == 0) {
            if (this.isJdwpVersionGreaterOrEqual(1, 6)) {
                return new long[0];
            }
            throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_27);
        }
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeInt(size, "size", outData);
            int i = 0;
            while (i < size) {
                ((ReferenceTypeImpl)refTypes.get(i)).getRefTypeID().write(outData);
                ++i;
            }
            JdwpReplyPacket replyPacket = this.requestVM(277, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 103: {
                    throw new IllegalArgumentException(JDIMessages.VirtualMachineImpl_count_less_than_zero);
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_27);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int counts = this.readInt("counts", replyData);
            if (counts != size) {
                throw new InternalError(JDIMessages.VirtualMachineImpl_3);
            }
            long[] ret = new long[counts];
            int i2 = 0;
            while (i2 < counts) {
                ret[i2] = this.readLong("ref count", replyData);
                ++i2;
            }
            long[] lArray = ret;
            return lArray;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean isDisconnected() {
        return this.fIsDisconnected;
    }

    public synchronized void setDisconnected(boolean disconnected) {
        this.fIsDisconnected = disconnected;
    }

    protected BooleanTypeImpl getBooleanType() {
        if (this.fBooleanType == null) {
            this.fBooleanType = new BooleanTypeImpl(this);
        }
        return this.fBooleanType;
    }

    protected ByteTypeImpl getByteType() {
        if (this.fByteType == null) {
            this.fByteType = new ByteTypeImpl(this);
        }
        return this.fByteType;
    }

    protected CharTypeImpl getCharType() {
        if (this.fCharType == null) {
            this.fCharType = new CharTypeImpl(this);
        }
        return this.fCharType;
    }

    protected DoubleTypeImpl getDoubleType() {
        if (this.fDoubleType == null) {
            this.fDoubleType = new DoubleTypeImpl(this);
        }
        return this.fDoubleType;
    }

    protected FloatTypeImpl getFloatType() {
        if (this.fFloatType == null) {
            this.fFloatType = new FloatTypeImpl(this);
        }
        return this.fFloatType;
    }

    protected IntegerTypeImpl getIntegerType() {
        if (this.fIntegerType == null) {
            this.fIntegerType = new IntegerTypeImpl(this);
        }
        return this.fIntegerType;
    }

    protected LongTypeImpl getLongType() {
        if (this.fLongType == null) {
            this.fLongType = new LongTypeImpl(this);
        }
        return this.fLongType;
    }

    protected ShortTypeImpl getShortType() {
        if (this.fShortType == null) {
            this.fShortType = new ShortTypeImpl(this);
        }
        return this.fShortType;
    }

    public boolean canBeModified() {
        return true;
    }
}

