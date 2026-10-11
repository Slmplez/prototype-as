/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Implementationtypes;

import com.etas.amd620.core.Implementationtypes.IntervalT;
import org.eclipse.emf.ecore.EObject;

public interface ImplementationTypeType
extends EObject {
    public IntervalT getPhysInterval();

    public void setPhysInterval(IntervalT var1);

    public IntervalT getImplInterval();

    public void setImplInterval(IntervalT var1);

    public String getComment();

    public void setComment(String var1);

    public String getFormula();

    public void setFormula(String var1);

    public String getImplType();

    public void setImplType(String var1);

    public boolean isMaster();

    public void setMaster(boolean var1);

    public void unsetMaster();

    public boolean isSetMaster();

    public String getName();

    public void setName(String var1);

    public String getPhysType();

    public void setPhysType(String var1);

    public Object getQuantization();

    public void setQuantization(Object var1);

    public boolean isRescaled();

    public void setRescaled(boolean var1);

    public void unsetRescaled();

    public boolean isSetRescaled();

    public boolean isZeroNotIncluded();

    public void setZeroNotIncluded(boolean var1);

    public void unsetZeroNotIncluded();

    public boolean isSetZeroNotIncluded();
}

