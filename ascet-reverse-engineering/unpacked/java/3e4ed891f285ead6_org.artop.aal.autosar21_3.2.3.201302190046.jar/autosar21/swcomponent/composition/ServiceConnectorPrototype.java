/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.composition;

import autosar21.swcomponent.composition.ConnectorPrototype;
import autosar21.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar21.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar21.swcomponent.services.EcuSwComposition;

public interface ServiceConnectorPrototype
extends ConnectorPrototype {
    public EcuSwComposition getEcuSwComposition();

    public void setEcuSwComposition(EcuSwComposition var1);

    public ServiceConnectorPrototypeApplicationPort getApplicationPort();

    public void setApplicationPort(ServiceConnectorPrototypeApplicationPort var1);

    public ServiceConnectorPrototypeServicePort getServicePort();

    public void setServicePort(ServiceConnectorPrototypeServicePort var1);
}

