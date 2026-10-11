/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.AccessType;
import com.etas.amd620.core.ComponentSpecification.ControlT;

public interface ControlRteInvokeT
extends ControlT {
    public AccessType getAccess();

    public void setAccess(AccessType var1);

    public void unsetAccess();

    public boolean isSetAccess();
}

