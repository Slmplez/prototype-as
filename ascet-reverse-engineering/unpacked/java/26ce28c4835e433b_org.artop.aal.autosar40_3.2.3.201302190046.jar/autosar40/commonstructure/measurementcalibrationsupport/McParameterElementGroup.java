/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;

public interface McParameterElementGroup
extends ARObject {
    public McSwEmulationMethodSupport getMcSwEmulationMethodSupport();

    public void setMcSwEmulationMethodSupport(McSwEmulationMethodSupport var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public VariableDataPrototype getRamLocation();

    public void setRamLocation(VariableDataPrototype var1);

    public ParameterDataPrototype getRomLocation();

    public void setRomLocation(ParameterDataPrototype var1);
}

