/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.VirtualMachine;
import java.util.List;

public interface PathSearchingVirtualMachine
extends VirtualMachine {
    public List classPath();

    public List bootClassPath();

    public String baseDirectory();
}

