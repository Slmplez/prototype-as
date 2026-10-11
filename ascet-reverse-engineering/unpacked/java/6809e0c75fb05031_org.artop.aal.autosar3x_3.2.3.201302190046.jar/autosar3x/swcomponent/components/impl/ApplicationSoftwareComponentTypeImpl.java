/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ApplicationSoftwareComponentTypeImpl
extends AtomicSoftwareComponentTypeImpl
implements ApplicationSoftwareComponentType {
    protected ApplicationSoftwareComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.APPLICATION_SOFTWARE_COMPONENT_TYPE;
    }
}

