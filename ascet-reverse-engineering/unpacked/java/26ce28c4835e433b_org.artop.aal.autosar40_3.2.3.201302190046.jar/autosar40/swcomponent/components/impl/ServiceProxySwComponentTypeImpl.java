/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.ServiceProxySwComponentType;
import autosar40.swcomponent.components.impl.AtomicSwComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ServiceProxySwComponentTypeImpl
extends AtomicSwComponentTypeImpl
implements ServiceProxySwComponentType {
    protected ServiceProxySwComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SERVICE_PROXY_SW_COMPONENT_TYPE;
    }
}

