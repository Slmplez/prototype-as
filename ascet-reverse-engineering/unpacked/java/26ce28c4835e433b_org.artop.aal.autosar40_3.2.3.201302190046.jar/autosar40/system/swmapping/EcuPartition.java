/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.swmapping;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;

public interface EcuPartition
extends Identifiable {
    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public Boolean getExecInUserMode();

    public void setExecInUserMode(Boolean var1);

    public void unsetExecInUserMode();

    public boolean isSetExecInUserMode();
}

