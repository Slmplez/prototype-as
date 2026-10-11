/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject;

import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringobjectFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EngineeringobjectFactory
extends EFactory {
    public static final EngineeringobjectFactory eINSTANCE = EngineeringobjectFactoryImpl.init();

    public AutosarEngineeringObject createAutosarEngineeringObject();

    public EngineeringobjectPackage getEngineeringobjectPackage();
}

