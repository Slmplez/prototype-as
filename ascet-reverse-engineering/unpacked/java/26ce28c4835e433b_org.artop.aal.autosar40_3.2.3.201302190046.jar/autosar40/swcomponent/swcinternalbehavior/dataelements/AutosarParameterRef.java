/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;

public interface AutosarParameterRef
extends ARObject {
    public ParameterInAtomicSWCTypeInstanceRef getAutosarParameter();

    public void setAutosarParameter(ParameterInAtomicSWCTypeInstanceRef var1);

    public DataPrototype getLocalParameter();

    public void setLocalParameter(DataPrototype var1);
}

