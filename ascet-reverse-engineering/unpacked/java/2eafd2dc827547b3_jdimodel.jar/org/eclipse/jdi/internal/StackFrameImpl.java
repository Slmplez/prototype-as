/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.InvalidStackFrameException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.LocalVariable
 *  com.sun.jdi.Locatable
 *  com.sun.jdi.Location
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.StackFrame
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMMismatchException
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidStackFrameException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.LocalVariable;
import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.StackFrame;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMMismatchException;
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
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LocalVariableImpl;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpFrameID;
import org.eclipse.jdi.internal.jdwp.JdwpID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class StackFrameImpl
extends MirrorImpl
implements StackFrame,
Locatable {
    private JdwpFrameID fFrameID;
    private ThreadReferenceImpl fThread;
    private LocationImpl fLocation;

    public StackFrameImpl(VirtualMachineImpl vmImpl, JdwpFrameID ID, ThreadReferenceImpl thread, LocationImpl location) {
        super("StackFrame", vmImpl);
        this.fFrameID = ID;
        this.fThread = thread;
        this.fLocation = location;
    }

    public Value getValue(LocalVariable variable) throws IllegalArgumentException, InvalidStackFrameException, VMMismatchException {
        ArrayList<LocalVariable> list = new ArrayList<LocalVariable>(1);
        list.add(variable);
        return (ValueImpl)this.getValues(list).get(variable);
    }

    public Map getValues(List variables) throws IllegalArgumentException, InvalidStackFrameException, VMMismatchException {
        HashMap map = new HashMap(variables.size());
        if (variables.isEmpty()) {
            return map;
        }
        int sizeAll = variables.size();
        int sizeThis = 0;
        boolean[] isThisValue = new boolean[sizeAll];
        int i = 0;
        while (i < sizeAll) {
            LocalVariableImpl var = (LocalVariableImpl)variables.get(i);
            isThisValue[i] = var.isThis();
            if (isThisValue[i]) {
                ++sizeThis;
            }
            ++i;
        }
        int sizeNotThis = sizeAll - sizeThis;
        if (sizeThis > 0) {
            ObjectReference thisValue = this.thisObject();
            int i2 = 0;
            while (i2 < sizeAll) {
                if (isThisValue[i2]) {
                    map.put(variables.get(i2), thisValue);
                }
                ++i2;
            }
        }
        if (sizeNotThis == 0) {
            return map;
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeWithThread(this, outData);
            this.writeInt(sizeNotThis, "size", outData);
            int i3 = 0;
            while (i3 < sizeAll) {
                if (!isThisValue[i3]) {
                    LocalVariableImpl var = (LocalVariableImpl)variables.get(i3);
                    this.checkVM(var);
                    this.writeInt(var.slot(), "slot", outData);
                    this.writeByte(var.tag(), "tag", JdwpID.tagMap(), outData);
                }
                ++i3;
            }
            JdwpReplyPacket replyPacket = this.requestVM(4097, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            if (nrOfElements != sizeNotThis) {
                throw new InternalError(JDIMessages.StackFrameImpl_Retrieved_a_different_number_of_values_from_the_VM_than_requested_1);
            }
            int i4 = 0;
            int j = 0;
            while (i4 < sizeAll) {
                if (!isThisValue[i4]) {
                    map.put(variables.get(j++), ValueImpl.readWithTag(this, replyData));
                }
                ++i4;
            }
            HashMap hashMap = map;
            return hashMap;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List getArgumentValues() throws InvalidStackFrameException {
        if (!this.thread().isSuspended()) {
            throw new InvalidStackFrameException(JDIMessages.StackFrameImpl_no_argument_values_available);
        }
        try {
            List list = this.location().method().variables();
            ArrayList<Value> ret = new ArrayList<Value>();
            LocalVariable var = null;
            Iterator iter = list.iterator();
            while (iter.hasNext()) {
                var = (LocalVariable)iter.next();
                if (!var.isArgument()) continue;
                ret.add(this.getValue(var));
            }
            return ret;
        }
        catch (AbsentInformationException e) {
            JDIDebugPlugin.log(e);
            return null;
        }
    }

    public Location location() {
        return this.fLocation;
    }

    public void setValue(LocalVariable var, Value value) throws InvalidTypeException, ClassNotLoadedException {
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                ((ThreadReferenceImpl)this.thread()).write(this, outData);
                this.write(this, outData);
                this.writeInt(1, "size", outData);
                this.checkVM((Mirror)var);
                this.writeInt(((LocalVariableImpl)var).slot(), "slot", outData);
                ValueImpl checkedValue = ValueImpl.checkValue(value, var.type(), this.virtualMachineImpl());
                if (checkedValue != null) {
                    checkedValue.writeWithTag(this, outData);
                } else {
                    ValueImpl.writeNullWithTag(this, outData);
                }
                JdwpReplyPacket replyPacket = this.requestVM(4098, outBytes);
                switch (replyPacket.errorCode()) {
                    case 21: {
                        throw new ClassNotLoadedException(var.typeName());
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

    public ObjectReference thisObject() throws InvalidStackFrameException {
        this.initJdwpRequest();
        try {
            ObjectReferenceImpl result;
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeWithThread(this, outData);
            JdwpReplyPacket replyPacket = this.requestVM(4099, outBytes);
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

    public ThreadReference thread() {
        return this.fThread;
    }

    public LocalVariable visibleVariableByName(String name) throws AbsentInformationException {
        Iterator iter = this.visibleVariables().iterator();
        while (iter.hasNext()) {
            LocalVariableImpl var = (LocalVariableImpl)iter.next();
            if (!var.name().equals(name)) continue;
            return var;
        }
        return null;
    }

    public List visibleVariables() throws AbsentInformationException {
        List variables = this.fLocation.method().variables();
        Iterator iter = variables.iterator();
        ArrayList<LocalVariableImpl> visibleVars = new ArrayList<LocalVariableImpl>(variables.size());
        while (iter.hasNext()) {
            LocalVariableImpl var = (LocalVariableImpl)iter.next();
            if (!var.isVisible(this) || var.isThis()) continue;
            visibleVars.add(var);
        }
        return visibleVars;
    }

    public int hashCode() {
        return this.fThread.hashCode() + this.fFrameID.hashCode();
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fThread.equals(((StackFrameImpl)object).fThread) && this.fFrameID.equals(((StackFrameImpl)object).fFrameID);
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fFrameID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("stackFrame", this.fFrameID.value());
        }
    }

    public void writeWithThread(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fThread.write(target, out);
        this.write(target, out);
    }

    public static StackFrameImpl readWithLocation(MirrorImpl target, ThreadReferenceImpl thread, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpFrameID ID = new JdwpFrameID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("stackFrame", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        LocationImpl location = LocationImpl.read(target, in);
        if (location == null) {
            return null;
        }
        return new StackFrameImpl(vmImpl, ID, thread, location);
    }
}

