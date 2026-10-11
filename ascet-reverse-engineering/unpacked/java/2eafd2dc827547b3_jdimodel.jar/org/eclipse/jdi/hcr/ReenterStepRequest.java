/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.ThreadReference
 *  com.sun.jdi.request.StepRequest
 */
package org.eclipse.jdi.hcr;

import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.StepRequest;

public interface ReenterStepRequest
extends StepRequest {
    public void addClassExclusionFilter(String var1);

    public void addClassFilter(ReferenceType var1);

    public void addClassFilter(String var1);

    public ThreadReference thread();
}

