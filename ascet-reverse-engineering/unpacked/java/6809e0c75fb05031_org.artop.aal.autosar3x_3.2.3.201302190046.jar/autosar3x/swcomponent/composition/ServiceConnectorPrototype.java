/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.composition;

import autosar3x.swcomponent.composition.ConnectorPrototype;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar3x.swcomponent.services.EcuSwComposition;

public interface ServiceConnectorPrototype
extends ConnectorPrototype {
    public EcuSwComposition getEcuSwComposition();

    public void setEcuSwComposition(EcuSwComposition var1);

    public ServiceConnectorPrototypeApplicationPort getApplicationPort();

    public void setApplicationPort(ServiceConnectorPrototypeApplicationPort var1);

    public ServiceConnectorPrototypeServicePort getServicePort();

    public void setServicePort(ServiceConnectorPrototypeServicePort var1);
}

