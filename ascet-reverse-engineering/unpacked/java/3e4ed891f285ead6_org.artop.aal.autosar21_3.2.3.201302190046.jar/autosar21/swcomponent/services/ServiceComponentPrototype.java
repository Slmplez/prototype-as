/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.services;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.components.ServiceComponentType;
import autosar21.swcomponent.services.EcuSwComposition;

public interface ServiceComponentPrototype
extends Identifiable {
    public EcuSwComposition getEcuSwComposition();

    public void setEcuSwComposition(EcuSwComposition var1);

    public ServiceComponentType getServiceComponent();

    public void setServiceComponent(ServiceComponentType var1);
}

