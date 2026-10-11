/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.ComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class AtomicSoftwareComponentTypeImpl
extends ComponentTypeImpl
implements AtomicSoftwareComponentType {
    protected AtomicSoftwareComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.ATOMIC_SOFTWARE_COMPONENT_TYPE;
    }
}

