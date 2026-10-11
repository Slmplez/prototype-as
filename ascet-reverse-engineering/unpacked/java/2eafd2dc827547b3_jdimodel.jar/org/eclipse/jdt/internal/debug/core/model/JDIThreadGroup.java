/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ThreadGroupReference
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.VMDisconnectedException
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.ITerminate
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.ThreadGroupReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaThreadGroup;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class JDIThreadGroup
extends JDIDebugElement
implements IJavaThreadGroup,
ITerminate {
    private ThreadGroupReference fGroup = null;
    private String fName = null;

    public JDIThreadGroup(JDIDebugTarget target, ThreadGroupReference group) {
        super(target);
        this.fGroup = group;
    }

    public synchronized IJavaThread[] getThreads() throws DebugException {
        try {
            List threads = this.fGroup.threads();
            ArrayList<JDIThread> modelThreads = new ArrayList<JDIThread>(threads.size());
            Iterator iterator = threads.iterator();
            while (iterator.hasNext()) {
                ThreadReference ref = (ThreadReference)iterator.next();
                JDIThread thread = this.getJavaDebugTarget().findThread(ref);
                if (thread == null) continue;
                modelThreads.add(thread);
            }
            return modelThreads.toArray(new IJavaThread[modelThreads.size()]);
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            return new IJavaThread[0];
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_0, e);
            return null;
        }
    }

    public IJavaThreadGroup getThreadGroup() throws DebugException {
        try {
            ThreadGroupReference reference = this.fGroup.parent();
            if (reference != null) {
                return this.getJavaDebugTarget().findThreadGroup(reference);
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_1, e);
        }
        return null;
    }

    public IJavaThreadGroup[] getThreadGroups() throws DebugException {
        try {
            List groups = this.fGroup.threadGroups();
            ArrayList<JDIThreadGroup> modelGroups = new ArrayList<JDIThreadGroup>(groups.size());
            Iterator iterator = groups.iterator();
            while (iterator.hasNext()) {
                ThreadGroupReference ref = (ThreadGroupReference)iterator.next();
                JDIThreadGroup group = this.getJavaDebugTarget().findThreadGroup(ref);
                if (group == null) continue;
                modelGroups.add(group);
            }
            return modelGroups.toArray(new IJavaThreadGroup[modelGroups.size()]);
        }
        catch (VMDisconnectedException vMDisconnectedException) {
            return new IJavaThreadGroup[0];
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_2, e);
            return null;
        }
    }

    public synchronized String getName() throws DebugException {
        if (this.fName == null) {
            try {
                this.fName = this.fGroup.name();
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_3, e);
            }
        }
        return this.fName;
    }

    ThreadGroupReference getUnderlyingThreadGroup() {
        return this.fGroup;
    }

    public boolean hasThreadGroups() throws DebugException {
        try {
            List groups = this.fGroup.threadGroups();
            return groups.size() > 0;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_4, e);
            return false;
        }
    }

    public boolean hasThreads() throws DebugException {
        try {
            List threads = this.fGroup.threads();
            return threads.size() > 0;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThreadGroup_5, e);
            return false;
        }
    }

    public boolean canTerminate() {
        return this.getDebugTarget().canTerminate();
    }

    public boolean isTerminated() {
        return this.getDebugTarget().isTerminated();
    }

    public void terminate() throws DebugException {
        this.getDebugTarget().terminate();
    }
}

