/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;

public interface CommunicationController
extends Identifiable {
    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public Boolean getWakeUpByControllerSupported();

    public void setWakeUpByControllerSupported(Boolean var1);

    public void unsetWakeUpByControllerSupported();

    public boolean isSetWakeUpByControllerSupported();
}

