/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;

public interface CommunicationController
extends Identifiable {
    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);
}

