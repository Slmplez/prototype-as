/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ThreadGroupReference
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ThreadGroupReference;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ObjectReferenceImpl;
import org.eclipse.jdi.internal.ThreadReferenceImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;
import org.eclipse.jdi.internal.jdwp.JdwpThreadGroupID;

public class ThreadGroupReferenceImpl
extends ObjectReferenceImpl
implements ThreadGroupReference {
    public static final byte tag = 103;
    private String fName;
    private ThreadGroupReference fParent = fgUnsetParent;
    private static ThreadGroupReferenceImpl fgUnsetParent = new ThreadGroupReferenceImpl(null, null);

    public ThreadGroupReferenceImpl(VirtualMachineImpl vmImpl, JdwpThreadGroupID threadGroupID) {
        super("ThreadGroupReference", vmImpl, threadGroupID);
    }

    public byte getTag() {
        return 103;
    }

    public String name() {
        if (this.fName != null) {
            return this.fName;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(3073, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            String string = this.fName = this.readString("name", replyData);
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

    public ThreadGroupReference parent() {
        if (this.fParent != fgUnsetParent) {
            return this.fParent;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(3074, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ThreadGroupReference threadGroupReference = this.fParent = ThreadGroupReferenceImpl.read(this, replyData);
            return threadGroupReference;
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
        Iterator iter = this.allThreads().iterator();
        while (iter.hasNext()) {
            ThreadReferenceImpl thr = (ThreadReferenceImpl)iter.next();
            thr.resume();
        }
    }

    public void suspend() {
        Iterator iter = this.allThreads().iterator();
        while (iter.hasNext()) {
            ThreadReferenceImpl thr = (ThreadReferenceImpl)iter.next();
            thr.suspend();
        }
    }

    public ChildrenInfo childrenInfo() {
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(3075, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ChildrenInfo result = new ChildrenInfo();
            int nrThreads = this.readInt("nr threads", replyData);
            result.childThreads = new ArrayList(nrThreads);
            int i = 0;
            while (i < nrThreads) {
                result.childThreads.add(ThreadReferenceImpl.read(this, replyData));
                ++i;
            }
            int nrThreadGroups = this.readInt("nr thread groups", replyData);
            result.childThreadGroups = new ArrayList(nrThreadGroups);
            int i2 = 0;
            while (i2 < nrThreadGroups) {
                result.childThreadGroups.add(ThreadGroupReferenceImpl.read(this, replyData));
                ++i2;
            }
            ChildrenInfo childrenInfo = result;
            return childrenInfo;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List threadGroups() {
        return this.childrenInfo().childThreadGroups;
    }

    public List threads() {
        return this.childrenInfo().childThreads;
    }

    private List allThreads() {
        ChildrenInfo info = this.childrenInfo();
        List result = info.childThreads;
        Iterator iter = info.childThreadGroups.iterator();
        while (iter.hasNext()) {
            ThreadGroupReferenceImpl tg = (ThreadGroupReferenceImpl)iter.next();
            result.addAll(tg.allThreads());
        }
        return result;
    }

    public String toString() {
        try {
            return this.name();
        }
        catch (Exception exception) {
            return this.fDescription;
        }
    }

    public static ThreadGroupReferenceImpl read(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpThreadGroupID ID = new JdwpThreadGroupID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("threadGroupReference", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        ThreadGroupReferenceImpl mirror = (ThreadGroupReferenceImpl)vmImpl.getCachedMirror(ID);
        if (mirror == null) {
            mirror = new ThreadGroupReferenceImpl(vmImpl, ID);
            vmImpl.addCachedMirror(mirror);
        }
        return mirror;
    }

    private class ChildrenInfo {
        List childThreads;
        List childThreadGroups;

        private ChildrenInfo() {
        }
    }
}

