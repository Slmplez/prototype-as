/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.ServiceSwComponentType;
import autosar40.swcomponent.components.impl.AtomicSwComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ServiceSwComponentTypeImpl
extends AtomicSwComponentTypeImpl
implements ServiceSwComponentType {
    protected ServiceSwComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SERVICE_SW_COMPONENT_TYPE;
    }
}

