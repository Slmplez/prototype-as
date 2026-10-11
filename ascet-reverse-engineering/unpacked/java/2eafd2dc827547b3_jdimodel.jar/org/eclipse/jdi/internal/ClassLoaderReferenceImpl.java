/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassLoaderReference
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.ReferenceType
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.ReferenceType;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpClassLoaderID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class ClassLoaderReferenceImpl
extends ObjectReferenceImpl
implements ClassLoaderReference {
    public static final byte tag = 108;

    public ClassLoaderReferenceImpl(VirtualMachineImpl vmImpl, JdwpClassLoaderID classLoaderID) {
        super("ClassLoaderReference", vmImpl, classLoaderID);
    }

    public byte getTag() {
        return 108;
    }

    public List definedClasses() {
        List visibleClasses = this.visibleClasses();
        ArrayList<ReferenceType> result = new ArrayList<ReferenceType>(visibleClasses.size());
        Iterator iter = visibleClasses.iterator();
        while (iter.hasNext()) {
            try {
                ReferenceType type = (ReferenceType)iter.next();
                if (type.classLoader() == null || !type.classLoader().equals((Object)this)) continue;
                result.add(type);
            }
            catch (ClassNotPreparedException classNotPreparedException) {}
        }
        return result;
    }

    public List visibleClasses() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(3585, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<ReferenceTypeImpl> elements = new ArrayList<ReferenceTypeImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                ReferenceTypeImpl elt = ReferenceTypeImpl.readWithTypeTag(this, replyData);
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

    public static ClassLoaderReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpClassLoaderID ID = new JdwpClassLoaderID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("classLoaderReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ClassLoaderReferenceImpl mirror = new ClassLoaderReferenceImpl(vmImpl, ID);
        return mirror;
    }
}

