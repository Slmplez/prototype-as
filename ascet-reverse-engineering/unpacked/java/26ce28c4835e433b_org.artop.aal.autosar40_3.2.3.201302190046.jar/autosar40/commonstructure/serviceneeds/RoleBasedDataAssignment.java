/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;

public interface RoleBasedDataAssignment
extends ARObject {
    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();

    public AutosarVariableRef getUsedDataElement();

    public void setUsedDataElement(AutosarVariableRef var1);

    public AutosarParameterRef getUsedParameterElement();

    public void setUsedParameterElement(AutosarParameterRef var1);

    public PerInstanceMemory getUsedPim();

    public void setUsedPim(PerInstanceMemory var1);
}

