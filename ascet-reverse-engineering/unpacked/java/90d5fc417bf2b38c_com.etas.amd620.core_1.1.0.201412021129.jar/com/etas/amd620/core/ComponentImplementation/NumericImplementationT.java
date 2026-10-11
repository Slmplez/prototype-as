/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentImplementation;

import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;

public interface NumericImplementationT
extends NumericImplementationBaseT {
    public IntervalT getPhysicalInterval();

    public void setPhysicalInterval(IntervalT var1);

    public IntervalT getImplementationInterval();

    public void setImplementationInterval(IntervalT var1);

    public String getFormula();

    public void setFormula(String var1);

    public String getImplType();

    public void setImplType(String var1);

    public MasterType getMaster();

    public void setMaster(MasterType var1);

    public void unsetMaster();

    public boolean isSetMaster();

    public String getPhysType();

    public void setPhysType(String var1);

    public Object getQuantization();

    public void setQuantization(Object var1);

    public boolean isZeroNotIncluded();

    public void setZeroNotIncluded(boolean var1);

    public void unsetZeroNotIncluded();

    public boolean isSetZeroNotIncluded();
}

