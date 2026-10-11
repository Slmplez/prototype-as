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
package autosar40.standardization.blueprintdedicated.genericblueprint.impl;

import autosar40.standardization.blueprintdedicated.genericblueprint.BlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintFactory;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.impl.BlueprintMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GenericblueprintFactoryImpl
extends EFactoryImpl
implements GenericblueprintFactory {
    public static GenericblueprintFactory init() {
        try {
            GenericblueprintFactory theGenericblueprintFactory = (GenericblueprintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb");
            if (theGenericblueprintFactory != null) {
                return theGenericblueprintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GenericblueprintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBlueprintMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BlueprintMapping createBlueprintMapping() {
        BlueprintMappingImpl blueprintMapping = new BlueprintMappingImpl();
        return blueprintMapping;
    }

    public GenericblueprintPackage getGenericblueprintPackage() {
        return (GenericblueprintPackage)this.getEPackage();
    }

    @Deprecated
    public static GenericblueprintPackage getPackage() {
        return GenericblueprintPackage.eINSTANCE;
    }
}

