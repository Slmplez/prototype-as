/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Field
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.InvocationException
 *  com.sun.jdi.Method
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.Type
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InternalException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.InvocationException;
import com.sun.jdi.Method;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.Type;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jdi.internal.ArrayReferenceImpl;
import org.eclipse.jdi.internal.ClassLoaderReferenceImpl;
import org.eclipse.jdi.internal.ClassObjectReferenceImpl;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MethodImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.StringReferenceImpl;
import org.eclipse.jdi.internal.ThreadGroupReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpID;
import org.eclipse.jdi.internal.jdwp.JdwpObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ObjectReferenceImpl
extends ValueImpl
implements ObjectReference {
    public static final byte tag = 76;
    private JdwpObjectID fObjectID;
    private ReferenceType fReferenceType;

    public ObjectReferenceImpl(VirtualMachineImpl vmImpl, JdwpObjectID objectID) {
        this("ObjectReference", vmImpl, objectID);
    }

    public ObjectReferenceImpl(String description, VirtualMachineImpl vmImpl, JdwpObjectID objectID) {
        super(description, vmImpl);
        this.fObjectID = objectID;
    }

    public byte getTag() {
        return 76;
    }

    public JdwpObjectID getObjectID() {
        return this.fObjectID;
    }

    public void disableCollection() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2311, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public void enableCollection() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2312, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private MonitorInfo monitorInfo() throws IncompatibleThreadStateException {
        if (!this.virtualMachine().canGetMonitorInfo()) {
            throw new UnsupportedOperationException();
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2309, this);
            switch (replyPacket.errorCode()) {
                case 10: {
                    throw new IncompatibleThreadStateException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            MonitorInfo result = new MonitorInfo();
            result.owner = ThreadReferenceImpl.read(this, replyData);
            result.entryCount = this.readInt("entry count", replyData);
            int nrOfWaiters = this.readInt("nr of waiters", replyData);
            result.waiters = new ArrayList(nrOfWaiters);
            int i = 0;
            while (i < nrOfWaiters) {
                result.waiters.add(ThreadReferenceImpl.read(this, replyData));
                ++i;
            }
            MonitorInfo monitorInfo = result;
            return monitorInfo;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public ThreadReference owningThread() throws IncompatibleThreadStateException {
        return this.monitorInfo().owner;
    }

    public int entryCount() throws IncompatibleThreadStateException {
        return this.monitorInfo().entryCount;
    }

    public List waitingThreads() throws IncompatibleThreadStateException {
        return this.monitorInfo().waiters;
    }

    public Value getValue(Field field) {
        ArrayList<Field> list = new ArrayList<Field>(1);
        list.add(field);
        return (ValueImpl)this.getValues(list).get(field);
    }

    public List referringObjects(long maxReferrers) throws UnsupportedOperationException, IllegalArgumentException {
        try {
            int max = (int)maxReferrers;
            if (maxReferrers >= Integer.MAX_VALUE) {
                max = Integer.MAX_VALUE;
            }
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.getObjectID().write(outData);
            this.writeInt(max, "max referrers", outData);
            JdwpReplyPacket replyPacket = this.requestVM(2314, outBytes);
            switch (replyPacket.errorCode()) {
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_27);
                }
                case 103: {
                    throw new IllegalArgumentException(JDIMessages.ReferenceTypeImpl_26);
                }
                case 20: {
                    throw new ObjectCollectedException(JDIMessages.ObjectReferenceImpl_object_not_known);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int elements = this.readInt("elements", replyData);
            if (max > 0 && elements > max) {
                elements = max;
            }
            ArrayList<ValueImpl> list = new ArrayList<ValueImpl>();
            int i = 0;
            while (i < elements) {
                list.add(ValueImpl.readWithTag(this, replyData));
                ++i;
            }
            ArrayList<ValueImpl> arrayList = list;
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

    public Map getValues(List allFields) {
        if (allFields.isEmpty()) {
            return new HashMap();
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            ArrayList<FieldImpl> staticFields = new ArrayList<FieldImpl>();
            ArrayList<FieldImpl> nonStaticFields = new ArrayList<FieldImpl>();
            int allFieldsSize = allFields.size();
            int i = 0;
            while (i < allFieldsSize) {
                FieldImpl field = (FieldImpl)allFields.get(i);
                this.checkVM(field);
                if (field.isStatic()) {
                    staticFields.add(field);
                } else {
                    nonStaticFields.add(field);
                }
                ++i;
            }
            Map resultMap = staticFields.isEmpty() ? new HashMap() : this.referenceType().getValues(staticFields);
            if (nonStaticFields.isEmpty()) {
                Map map = resultMap;
                return map;
            }
            int nonStaticFieldsSize = nonStaticFields.size();
            this.write(this, outData);
            this.writeInt(nonStaticFieldsSize, "size", outData);
            int i2 = 0;
            while (i2 < nonStaticFieldsSize) {
                FieldImpl field = (FieldImpl)nonStaticFields.get(i2);
                field.write(this, outData);
                ++i2;
            }
            JdwpReplyPacket replyPacket = this.requestVM(2306, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            if (nrOfElements != nonStaticFieldsSize) {
                throw new InternalError(JDIMessages.ObjectReferenceImpl_Retrieved_a_different_number_of_values_from_the_VM_than_requested_1);
            }
            int i3 = 0;
            while (i3 < nrOfElements) {
                resultMap.put(nonStaticFields.get(i3), ValueImpl.readWithTag(this, replyData));
                ++i3;
            }
            Map map = resultMap;
            return map;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int hashCode() {
        return this.fObjectID.hashCode();
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fObjectID.equals(((ObjectReferenceImpl)object).fObjectID) && this.virtualMachine().equals(((MirrorImpl)object).virtualMachine());
    }

    private int optionsToJdwpOptions(int options) {
        int jdwpOptions = 0;
        if ((options & 1) != 0) {
            jdwpOptions |= 1;
        }
        if ((options & 2) != 0) {
            jdwpOptions |= 2;
        }
        return jdwpOptions;
    }

    public Value invokeMethod(ThreadReference thread, Method method, List arguments, int options) throws InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException, InvocationException {
        this.checkVM((Mirror)thread);
        this.checkVM((Mirror)method);
        ThreadReferenceImpl threadImpl = (ThreadReferenceImpl)thread;
        MethodImpl methodImpl = (MethodImpl)method;
        if (!this.isAValidMethod(method)) {
            throw new IllegalArgumentException(JDIMessages.ObjectReferenceImpl_Class_does_not_contain_given_method_2);
        }
        if (method.argumentTypeNames().size() != arguments.size()) {
            throw new IllegalArgumentException(JDIMessages.ObjectReferenceImpl_Number_of_arguments_doesn__t_match_3);
        }
        if (method.isConstructor() || method.isStaticInitializer()) {
            throw new IllegalArgumentException(JDIMessages.ObjectReferenceImpl_Method_is_constructor_or_intitializer_4);
        }
        if ((options & 2) != 0 && method.isAbstract()) {
            throw new IllegalArgumentException(JDIMessages.ObjectReferenceImpl_Method_is_abstract_and_can_therefore_not_be_invoked_nonvirtual_5);
        }
        List checkedArguments = ValueImpl.checkValues(arguments, method.argumentTypes(), this.virtualMachineImpl());
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            threadImpl.write(this, outData);
            ((ReferenceTypeImpl)this.referenceType()).write(this, outData);
            methodImpl.write(this, outData);
            this.writeInt(checkedArguments.size(), "size", outData);
            Iterator iter = checkedArguments.iterator();
            while (iter.hasNext()) {
                ValueImpl elt = (ValueImpl)iter.next();
                if (elt != null) {
                    elt.writeWithTag(this, outData);
                    continue;
                }
                ValueImpl.writeNullWithTag(this, outData);
            }
            this.writeInt(this.optionsToJdwpOptions(options), "options", MethodImpl.getInvokeOptions(), outData);
            JdwpReplyPacket replyPacket = this.requestVM(2310, outBytes);
            switch (replyPacket.errorCode()) {
                case 34: {
                    throw new InvalidTypeException();
                }
                case 21: {
                    throw new ClassNotLoadedException(JDIMessages.ObjectReferenceImpl_One_of_the_arguments_of_ObjectReference_invokeMethod___6);
                }
                case 10: {
                    throw new IncompatibleThreadStateException();
                }
                case 13: {
                    throw new IncompatibleThreadStateException();
                }
                case 65: {
                    throw new IncompatibleThreadStateException();
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ValueImpl value = ValueImpl.readWithTag(this, replyData);
            ObjectReferenceImpl exception = ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            if (exception != null) {
                throw new InvocationException((ObjectReference)exception);
            }
            ValueImpl valueImpl = value;
            return valueImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private boolean isAValidMethod(Method method) {
        ReferenceType refType = this.referenceType();
        if (refType instanceof ArrayType) {
            return "java.lang.Object".equals(method.declaringType().name());
        }
        return refType.allMethods().contains(method);
    }

    public boolean isCollected() {
        this.initJdwpRequest();
        try {
            boolean result;
            JdwpReplyPacket replyPacket = this.requestVM(2313, this);
            switch (replyPacket.errorCode()) {
                case 20: {
                    return true;
                }
                case 99: {
                    try {
                        this.referenceType();
                    }
                    catch (ObjectCollectedException objectCollectedException) {
                        this.handledJdwpRequest();
                        return true;
                    }
                    return false;
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            boolean bl = result = this.readBoolean("is collected", replyData);
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

    public ReferenceType referenceType() {
        if (this.fReferenceType != null) {
            return this.fReferenceType;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(2305, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ReferenceType referenceType = this.fReferenceType = ReferenceTypeImpl.readWithTypeTag(this, replyData);
            return referenceType;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public Type type() {
        return this.referenceType();
    }

    public void setValue(Field field, Value value) throws InvalidTypeException, ClassNotLoadedException {
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.write(this, outData);
                this.writeInt(1, "size", outData);
                this.checkVM((Mirror)field);
                ((FieldImpl)field).write(this, outData);
                ValueImpl checkedValue = ValueImpl.checkValue(value, field.type(), this.virtualMachineImpl());
                if (checkedValue != null) {
                    checkedValue.write(this, outData);
                } else {
                    ValueImpl.writeNull(this, outData);
                }
                JdwpReplyPacket replyPacket = this.requestVM(2307, outBytes);
                switch (replyPacket.errorCode()) {
                    case 34: {
                        throw new InvalidTypeException();
                    }
                    case 21: {
                        throw new ClassNotLoadedException(this.referenceType().name());
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

    public long uniqueID() {
        return this.fObjectID.value();
    }

    public String idString() {
        return "(id=" + this.fObjectID + ")";
    }

    public String toString() {
        try {
            return String.valueOf(this.type().toString()) + " " + this.idString();
        }
        catch (ObjectCollectedException objectCollectedException) {
            return String.valueOf(JDIMessages.ObjectReferenceImpl__Garbage_Collected__ObjectReference__8) + this.idString();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public static ObjectReferenceImpl readObjectRefWithoutTag(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpObjectID ID = new JdwpObjectID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("objectReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ObjectReferenceImpl mirror = new ObjectReferenceImpl(vmImpl, ID);
        return mirror;
    }

    public static ObjectReferenceImpl readObjectRefWithTag(MirrorImpl target, DataInputStream in) throws IOException {
        byte objectTag = target.readByte("object tag", JdwpID.tagMap(), in);
        switch (objectTag) {
            case 0: {
                return null;
            }
            case 76: {
                return ObjectReferenceImpl.readObjectRefWithoutTag(target, in);
            }
            case 91: {
                return ArrayReferenceImpl.read(target, in);
            }
            case 108: {
                return ClassLoaderReferenceImpl.read(target, in);
            }
            case 99: {
                return ClassObjectReferenceImpl.read(target, in);
            }
            case 115: {
                return StringReferenceImpl.read(target, in);
            }
            case 103: {
                return ThreadGroupReferenceImpl.read(target, in);
            }
            case 116: {
                return ThreadReferenceImpl.read(target, in);
            }
        }
        throw new InternalException(String.valueOf(JDIMessages.ObjectReferenceImpl_Invalid_ObjectID_tag_encountered___9) + objectTag);
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fObjectID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("objectReference", this.fObjectID.value());
        }
    }

    private class MonitorInfo {
        ThreadReferenceImpl owner;
        int entryCount;
        ArrayList waiters;

        private MonitorInfo() {
        }
    }
}

