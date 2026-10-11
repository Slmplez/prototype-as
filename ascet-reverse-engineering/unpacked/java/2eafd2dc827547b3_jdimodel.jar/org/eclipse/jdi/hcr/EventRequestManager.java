/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Mirror
 *  com.sun.jdi.ThreadReference
 */
package org.eclipse.jdi.hcr;

import com.sun.jdi.Mirror;
import com.sun.jdi.ThreadReference;
import org.eclipse.jdi.hcr.ReenterStepRequest;

public interface EventRequestManager
extends Mirror {
    public ReenterStepRequest createReenterStepRequest(ThreadReference var1);
}

