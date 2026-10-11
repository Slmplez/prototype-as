/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.Value;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.ClassObjectReferenceImpl;
import org.eclipse.jdi.internal.ClassTypeImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpClassObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpInterfaceID;

public class InterfaceTypeImpl
extends ReferenceTypeImpl
implements InterfaceType {
    public static final byte typeTag = 2;

    public InterfaceTypeImpl(VirtualMachineImpl vmImpl, JdwpInterfaceID interfaceID) {
        super("InterfaceType", vmImpl, interfaceID);
    }

    public InterfaceTypeImpl(VirtualMachineImpl vmImpl, JdwpInterfaceID interfaceID, String signature, String genericSignature) {
        super("InterfaceType", vmImpl, interfaceID, signature, genericSignature);
    }

    public Value createNullValue() {
        return new ClassObjectReferenceImpl(this.virtualMachineImpl(), new JdwpClassObjectID(this.virtualMachineImpl()));
    }

    public byte typeTag() {
        return 2;
    }

    public void flushStoredJdwpResults() {
        super.flushStoredJdwpResults();
        Iterator itr = this.virtualMachineImpl().allCachedRefTypes();
        while (itr.hasNext()) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
            if (refType.fInterfaces == null || !refType.fInterfaces.contains(this)) continue;
            refType.flushStoredJdwpResults();
        }
    }

    public List implementors() {
        ArrayList<ClassTypeImpl> implementors = new ArrayList<ClassTypeImpl>();
        Iterator itr = this.virtualMachineImpl().allRefTypes();
        while (itr.hasNext()) {
            ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
            if (!(refType instanceof ClassTypeImpl)) continue;
            try {
                ClassTypeImpl classType = (ClassTypeImpl)refType;
                List interfaces = classType.interfaces();
                if (!interfaces.contains(this)) continue;
                implementors.add(classType);
            }
            catch (ClassNotPreparedException classNotPreparedException) {}
        }
        return implementors;
    }

    public List subinterfaces() {
        ArrayList<InterfaceTypeImpl> implementors = new ArrayList<InterfaceTypeImpl>();
        Iterator itr = this.virtualMachineImpl().allRefTypes();
        while (itr.hasNext()) {
            try {
                InterfaceTypeImpl interFaceType;
                List interfaces;
                ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
                if (!(refType instanceof InterfaceTypeImpl) || !(interfaces = (interFaceType = (InterfaceTypeImpl)refType).superinterfaces()).contains(this)) continue;
                implementors.add(interFaceType);
            }
            catch (ClassNotPreparedException classNotPreparedException) {}
        }
        return implementors;
    }

    public List superinterfaces() {
        return this.interfaces();
    }

    public boolean isInitialized() {
        return this.isPrepared();
    }

    public static InterfaceTypeImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpInterfaceID ID = new JdwpInterfaceID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("interfaceType", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        InterfaceTypeImpl mirror = (InterfaceTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new InterfaceTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        return mirror;
    }

    public static InterfaceTypeImpl readWithSignature(MirrorImpl target, boolean withGenericSignature, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpInterfaceID ID = new JdwpInterfaceID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("interfaceType", ID.value());
        }
        String signature = target.readString("signature", in);
        String genericSignature = null;
        if (withGenericSignature) {
            genericSignature = target.readString("generic signature", in);
        }
        if (ID.isNull()) {
            return null;
        }
        InterfaceTypeImpl mirror = (InterfaceTypeImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new InterfaceTypeImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        mirror.setSignature(signature);
        mirror.setGenericSignature(genericSignature);
        return mirror;
    }
}

