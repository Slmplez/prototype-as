/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.composition.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.services.ServiceComponentPrototype;

public interface ServiceConnectorPrototypeServicePort
extends ARObject {
    public ServiceConnectorPrototype getServiceConnectorPrototype();

    public void setServiceConnectorPrototype(ServiceConnectorPrototype var1);

    public ServiceComponentPrototype getServiceComponentPrototype();

    public void setServiceComponentPrototype(ServiceComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);
}

