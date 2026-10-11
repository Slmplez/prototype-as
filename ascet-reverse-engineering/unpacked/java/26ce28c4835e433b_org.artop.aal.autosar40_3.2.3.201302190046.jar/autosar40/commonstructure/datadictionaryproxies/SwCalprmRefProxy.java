/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.datadictionaryproxies;

import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;

public interface SwCalprmRefProxy
extends ARObject {
    public AutosarParameterRef getArParameter();

    public void setArParameter(AutosarParameterRef var1);

    public McDataInstance getMcDataInstance();

    public void setMcDataInstance(McDataInstance var1);
}

