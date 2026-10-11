/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.swcomponent.components.CalprmComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.ComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class CalprmComponentTypeImpl
extends ComponentTypeImpl
implements CalprmComponentType {
    protected CalprmComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.CALPRM_COMPONENT_TYPE;
    }
}

