/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ObjectReference;
import java.util.List;

public interface ThreadGroupReference
extends ObjectReference {
    public String name();

    public ThreadGroupReference parent();

    public void resume();

    public void suspend();

    public List threadGroups();

    public List threads();
}

