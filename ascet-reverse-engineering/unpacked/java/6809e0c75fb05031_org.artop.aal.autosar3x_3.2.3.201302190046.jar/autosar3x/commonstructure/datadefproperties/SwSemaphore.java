/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwSemaphore
extends ARObject {
    public SwVariableRefProxy getSwVariableRef();

    public void setSwVariableRef(SwVariableRefProxy var1);
}

