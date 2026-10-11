/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.composition.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
import autosar21.swcomponent.services.ServiceComponentPrototype;

public interface ServiceConnectorPrototypeServicePort
extends ARObject {
    public ServiceConnectorPrototype getServiceConnectorPrototype();

    public void setServiceConnectorPrototype(ServiceConnectorPrototype var1);

    public ServiceComponentPrototype getServiceComponentPrototype();

    public void setServiceComponentPrototype(ServiceComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);
}

