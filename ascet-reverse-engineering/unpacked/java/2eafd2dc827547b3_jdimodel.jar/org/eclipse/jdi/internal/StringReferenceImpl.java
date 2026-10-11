/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.StringReference
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.StringReference;
import java.io.DataInputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.jdwp.JdwpStringID;

public class StringReferenceImpl
extends ObjectReferenceImpl
implements StringReference {
    public static final byte tag = 115;

    public StringReferenceImpl(VirtualMachineImpl vmImpl, JdwpStringID stringID) {
        super("StringReference", vmImpl, stringID);
    }

    public byte getTag() {
        return 115;
    }

    public String value() {
        this.initJdwpRequest();
        try {
            String result;
            JdwpReplyPacket replyPacket = this.requestVM(2561, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            String string = result = this.readString("value", replyData);
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

    public static StringReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpStringID ID = new JdwpStringID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("stringReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        StringReferenceImpl mirror = new StringReferenceImpl(vmImpl, ID);
        return mirror;
    }

    public String toString() {
        try {
            return "\"" + this.value() + "\"";
        }
        catch (ObjectCollectedException objectCollectedException) {
            return String.valueOf(JDIMessages.StringReferenceImpl__Garbage_Collected__StringReference__3) + this.idString();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }
}

