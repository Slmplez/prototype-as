/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackageFactory;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ReferenceBase;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARPackageImpl;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ReferenceBaseImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ArpackageFactoryImpl
extends EFactoryImpl
implements ArpackageFactory {
    public static ArpackageFactory init() {
        try {
            ArpackageFactory theArpackageFactory = (ArpackageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp");
            if (theArpackageFactory != null) {
                return theArpackageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ArpackageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createARPackage();
            }
            case 1: {
                return this.createReferenceBase();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createReferrableSubtypesEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertReferrableSubtypesEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ARPackage createARPackage() {
        ARPackageImpl arPackage = new ARPackageImpl();
        return arPackage;
    }

    public ReferenceBase createReferenceBase() {
        ReferenceBaseImpl referenceBase = new ReferenceBaseImpl();
        return referenceBase;
    }

    public String createReferrableSubtypesEnumFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertReferrableSubtypesEnumToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public ArpackagePackage getArpackagePackage() {
        return (ArpackagePackage)this.getEPackage();
    }

    @Deprecated
    public static ArpackagePackage getPackage() {
        return ArpackagePackage.eINSTANCE;
    }
}

