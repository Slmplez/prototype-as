/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.components.impl;

import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.ServiceComponentType;
import autosar21.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ServiceComponentTypeImpl
extends AtomicSoftwareComponentTypeImpl
implements ServiceComponentType {
    protected ServiceComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SERVICE_COMPONENT_TYPE;
    }
}

