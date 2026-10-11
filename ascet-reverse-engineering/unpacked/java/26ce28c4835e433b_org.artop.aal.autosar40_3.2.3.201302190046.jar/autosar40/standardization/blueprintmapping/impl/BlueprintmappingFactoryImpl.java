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
package autosar40.standardization.blueprintmapping.impl;

import autosar40.standardization.blueprintmapping.BlueprintMappingSet;
import autosar40.standardization.blueprintmapping.BlueprintmappingFactory;
import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;
import autosar40.standardization.blueprintmapping.impl.BlueprintMappingSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BlueprintmappingFactoryImpl
extends EFactoryImpl
implements BlueprintmappingFactory {
    public static BlueprintmappingFactory init() {
        try {
            BlueprintmappingFactory theBlueprintmappingFactory = (BlueprintmappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/bm");
            if (theBlueprintmappingFactory != null) {
                return theBlueprintmappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BlueprintmappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBlueprintMappingSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BlueprintMappingSet createBlueprintMappingSet() {
        BlueprintMappingSetImpl blueprintMappingSet = new BlueprintMappingSetImpl();
        return blueprintMappingSet;
    }

    public BlueprintmappingPackage getBlueprintmappingPackage() {
        return (BlueprintmappingPackage)this.getEPackage();
    }

    @Deprecated
    public static BlueprintmappingPackage getPackage() {
        return BlueprintmappingPackage.eINSTANCE;
    }
}

