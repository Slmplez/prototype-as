/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.services;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
import autosar21.swcomponent.services.ServiceComponentPrototype;
import autosar21.system.System;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuSwComposition
extends ARElement {
    public EList<ServiceComponentPrototype> getComponents();

    public EList<ServiceConnectorPrototype> getConnectors();

    public System getEcuExtract();

    public void setEcuExtract(System var1);
}

