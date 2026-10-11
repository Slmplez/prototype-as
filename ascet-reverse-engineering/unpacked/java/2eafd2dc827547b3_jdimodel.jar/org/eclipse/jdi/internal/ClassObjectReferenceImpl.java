/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassObjectReference
 *  com.sun.jdi.ReferenceType
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassObjectReference;
import com.sun.jdi.ReferenceType;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpClassObjectID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ClassObjectReferenceImpl
extends ObjectReferenceImpl
implements ClassObjectReference {
    public static final byte tag = 99;

    public ClassObjectReferenceImpl(VirtualMachineImpl vmImpl, JdwpClassObjectID classObjectID) {
        super("ClassObjectReference", vmImpl, classObjectID);
    }

    public byte getTag() {
        return 99;
    }

    public ReferenceType reflectedType() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(4353, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ReferenceTypeImpl referenceTypeImpl = ReferenceTypeImpl.readWithTypeTag(this, replyData);
            return referenceTypeImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public static ClassObjectReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpClassObjectID ID = new JdwpClassObjectID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("classObjectReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ClassObjectReferenceImpl mirror = new ClassObjectReferenceImpl(vmImpl, ID);
        return mirror;
    }
}

