/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.components.impl;

import autosar21.swcomponent.components.CalprmComponentType;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.impl.ComponentTypeImpl;
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

