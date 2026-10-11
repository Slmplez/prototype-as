/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl;

import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class AutosarEngineeringObjectImpl
extends EngineeringObjectImpl
implements AutosarEngineeringObject {
    protected AutosarEngineeringObjectImpl() {
    }

    protected EClass eStaticClass() {
        return EngineeringobjectPackage.Literals.AUTOSAR_ENGINEERING_OBJECT;
    }
}

