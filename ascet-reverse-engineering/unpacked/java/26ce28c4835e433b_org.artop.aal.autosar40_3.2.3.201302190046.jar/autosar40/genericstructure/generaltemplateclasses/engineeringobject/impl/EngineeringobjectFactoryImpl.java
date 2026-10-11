/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl;

import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectFactory;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.AutosarEngineeringObjectImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EngineeringobjectFactoryImpl
extends EFactoryImpl
implements EngineeringobjectFactory {
    public static EngineeringobjectFactory init() {
        try {
            EngineeringobjectFactory theEngineeringobjectFactory = (EngineeringobjectFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo");
            if (theEngineeringobjectFactory != null) {
                return theEngineeringobjectFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EngineeringobjectFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createAutosarEngineeringObject();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AutosarEngineeringObject createAutosarEngineeringObject() {
        AutosarEngineeringObjectImpl autosarEngineeringObject = new AutosarEngineeringObjectImpl();
        return autosarEngineeringObject;
    }

    public EngineeringobjectPackage getEngineeringobjectPackage() {
        return (EngineeringobjectPackage)this.getEPackage();
    }

    @Deprecated
    public static EngineeringobjectPackage getPackage() {
        return EngineeringobjectPackage.eINSTANCE;
    }
}

