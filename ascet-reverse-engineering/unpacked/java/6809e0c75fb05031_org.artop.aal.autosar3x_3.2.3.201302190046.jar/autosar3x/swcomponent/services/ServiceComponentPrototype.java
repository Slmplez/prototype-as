/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.services;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.components.ServiceComponentType;
import autosar3x.swcomponent.services.EcuSwComposition;

public interface ServiceComponentPrototype
extends Identifiable {
    public EcuSwComposition getEcuSwComposition();

    public void setEcuSwComposition(EcuSwComposition var1);

    public ServiceComponentType getServiceComponent();

    public void setServiceComponent(ServiceComponentType var1);
}

