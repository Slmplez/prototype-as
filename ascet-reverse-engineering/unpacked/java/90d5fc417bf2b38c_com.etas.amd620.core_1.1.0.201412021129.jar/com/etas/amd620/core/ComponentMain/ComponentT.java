/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import com.etas.amd620.core.ComponentMain.TimeStampsType;

public interface ComponentT
extends ItemT {
    public ElementsType getElements();

    public void setElements(ElementsType var1);

    public MethodSignaturesType1 getMethodSignatures();

    public void setMethodSignatures(MethodSignaturesType1 var1);

    public TimeStampsType getTimeStamps();

    public void setTimeStamps(TimeStampsType var1);

    public double getChecksumGeneral();

    public void setChecksumGeneral(double var1);

    public void unsetChecksumGeneral();

    public boolean isSetChecksumGeneral();

    public double getChecksumPublicInterface();

    public void setChecksumPublicInterface(double var1);

    public void unsetChecksumPublicInterface();

    public boolean isSetChecksumPublicInterface();

    public Object getDefaultProjectName();

    public void setDefaultProjectName(Object var1);

    public Object getDefaultProjectOID();

    public void setDefaultProjectOID(Object var1);

    public SpecificationTypeType getSpecificationType();

    public void setSpecificationType(SpecificationTypeType var1);

    public void unsetSpecificationType();

    public boolean isSetSpecificationType();
}

