/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.InvalidRequestStateException;

public interface MonitorWaitRequest
extends EventRequest {
    public void addClassExclusionFilter(String var1) throws InvalidRequestStateException;

    public void addClassFilter(ReferenceType var1) throws InvalidRequestStateException;

    public void addClassFilter(String var1) throws InvalidRequestStateException;

    public void addInstanceFilter(ObjectReference var1) throws InvalidRequestStateException;

    public void addThreadFilter(ThreadReference var1) throws InvalidRequestStateException;
}

