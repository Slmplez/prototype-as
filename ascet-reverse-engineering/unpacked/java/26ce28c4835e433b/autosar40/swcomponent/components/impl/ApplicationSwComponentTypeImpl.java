/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.ApplicationSwComponentType;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.impl.AtomicSwComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ApplicationSwComponentTypeImpl
extends AtomicSwComponentTypeImpl
implements ApplicationSwComponentType {
    protected ApplicationSwComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.APPLICATION_SW_COMPONENT_TYPE;
    }
}

