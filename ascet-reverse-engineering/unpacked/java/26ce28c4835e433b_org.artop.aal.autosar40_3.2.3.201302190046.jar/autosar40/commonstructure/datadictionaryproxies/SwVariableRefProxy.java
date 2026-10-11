/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.datadictionaryproxies;

import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;

public interface SwVariableRefProxy
extends ARObject {
    public AutosarVariableRef getAutosarVariable();

    public void setAutosarVariable(AutosarVariableRef var1);

    public McDataInstance getMcDataInstanceVar();

    public void setMcDataInstanceVar(McDataInstance var1);
}

