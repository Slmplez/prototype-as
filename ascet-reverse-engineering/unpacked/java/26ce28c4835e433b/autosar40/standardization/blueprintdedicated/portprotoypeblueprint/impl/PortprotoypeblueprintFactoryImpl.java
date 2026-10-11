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
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl;

import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintFactory;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortPrototypeBlueprintImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortPrototypeBlueprintInitValueImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortPrototypeBlueprintMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PortprotoypeblueprintFactoryImpl
extends EFactoryImpl
implements PortprotoypeblueprintFactory {
    public static PortprotoypeblueprintFactory init() {
        try {
            PortprotoypeblueprintFactory thePortprotoypeblueprintFactory = (PortprotoypeblueprintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb");
            if (thePortprotoypeblueprintFactory != null) {
                return thePortprotoypeblueprintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PortprotoypeblueprintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPortPrototypeBlueprint();
            }
            case 1: {
                return this.createPortPrototypeBlueprintInitValue();
            }
            case 2: {
                return this.createPortPrototypeBlueprintMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PortPrototypeBlueprint createPortPrototypeBlueprint() {
        PortPrototypeBlueprintImpl portPrototypeBlueprint = new PortPrototypeBlueprintImpl();
        return portPrototypeBlueprint;
    }

    public PortPrototypeBlueprintInitValue createPortPrototypeBlueprintInitValue() {
        PortPrototypeBlueprintInitValueImpl portPrototypeBlueprintInitValue = new PortPrototypeBlueprintInitValueImpl();
        return portPrototypeBlueprintInitValue;
    }

    public PortPrototypeBlueprintMapping createPortPrototypeBlueprintMapping() {
        PortPrototypeBlueprintMappingImpl portPrototypeBlueprintMapping = new PortPrototypeBlueprintMappingImpl();
        return portPrototypeBlueprintMapping;
    }

    public PortprotoypeblueprintPackage getPortprotoypeblueprintPackage() {
        return (PortprotoypeblueprintPackage)this.getEPackage();
    }

    @Deprecated
    public static PortprotoypeblueprintPackage getPackage() {
        return PortprotoypeblueprintPackage.eINSTANCE;
    }
}

