/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Field
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ArrayReference;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Field;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdi.internal.ArrayReferenceImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpArrayID;
import org.eclipse.jdi.internal.jdwp.JdwpObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ArrayTypeImpl
extends ReferenceTypeImpl
implements ArrayType {
    public static final byte typeTag = 3;
    private Type fComponentType;
    private String fComponentTypeName;

    public ArrayTypeImpl(VirtualMachineImpl vmImpl, JdwpArrayID arrayID) {
        super("ArrayType", vmImpl, arrayID);
    }

    public ArrayTypeImpl(VirtualMachineImpl vmImpl, JdwpArrayID arrayID, String signature, String genericSignature) {
        super("ArrayType", vmImpl, arrayID, signature, genericSignature);
    }

    public byte typeTag() {
        return 3;
    }

    public Value createNullValue() {
        return new ArrayReferenceImpl(this.virtualMachineImpl(), new JdwpObjectID(this.virtualMachineImpl()));
    }

    public String componentSignature() {
        return this.signature().substring(1);
    }

    public Type componentType() throws ClassNotLoadedException {
        if (this.fComponentType == null) {
            this.fComponentType = TypeImpl.create(this.virtualMachineImpl(), this.componentSignature(), this.classLoader());
        }
        return this.fComponentType;
    }

    public String componentTypeName() {
        if (this.fComponentTypeName == null) {
            this.fComponentTypeName = ArrayTypeImpl.signatureToName(this.componentSignature());
        }
        return this.fComponentTypeName;
    }

    public ArrayReference newInstance(int length) {
        this.initJdwpRequest();
        try {
            ArrayReferenceImpl arrayRef;
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            this.writeInt(length, "length", outData);
            JdwpReplyPacket replyPacket = this.requestVM(1025, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ArrayReferenceImpl arrayReferenceImpl = arrayRef = (ArrayReferenceImpl)ObjectReferenceImpl.readObjectRefWithTag(this, replyData);
            return arrayReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List locationsOfLine(int line) {
        return Collections.EMPTY_LIST;
    }

    public static ArrayTypeImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpArrayID ID = new JdwpArrayID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("arrayType", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ArrayTypeImpl mirror = (ArrayTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ArrayTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        return mirror;
    }

    public int modifiers() {
        return 17;
    }

    public List fields() {
        return Collections.EMPTY_LIST;
    }

    public List methods() {
        return Collections.EMPTY_LIST;
    }

    public Map getValues(List fields) {
        if (fields.isEmpty()) {
            return new HashMap();
        }
        throw new IllegalArgumentException(JDIMessages.ArrayTypeImpl_getValues_not_allowed_on_array_1);
    }

    public List nestedTypes() {
        return Collections.EMPTY_LIST;
    }

    protected int status() {
        return 7;
    }

    public static ArrayTypeImpl readWithSignature(MirrorImpl target, boolean withGenericSignature, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpArrayID ID = new JdwpArrayID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("arrayType", ID.value());
        }
        String signature = target.readString("signature", in);
        String genericSignature = null;
        if (withGenericSignature) {
            genericSignature = target.readString("generic signature", in);
        }
        if (ID.isNull()) {
            return null;
        }
        ArrayTypeImpl mirror = (ArrayTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ArrayTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        mirror.setSignature(signature);
        mirror.setGenericSignature(genericSignature);
        return mirror;
    }

    public List allLineLocations() {
        return Collections.EMPTY_LIST;
    }

    public List allMethods() {
        return Collections.EMPTY_LIST;
    }

    public List allFields() {
        return Collections.EMPTY_LIST;
    }

    public String sourceName() throws AbsentInformationException {
        throw new AbsentInformationException(JDIMessages.ArrayTypeImpl_No_source_name_for_Arrays_1);
    }

    public List visibleFields() {
        return Collections.EMPTY_LIST;
    }

    public List visibleMethods() {
        return Collections.EMPTY_LIST;
    }

    public Field fieldByName(String arg1) {
        return null;
    }

    public List methodsByName(String arg1) {
        return Collections.EMPTY_LIST;
    }

    public List methodsByName(String arg1, String arg2) {
        return Collections.EMPTY_LIST;
    }
}

