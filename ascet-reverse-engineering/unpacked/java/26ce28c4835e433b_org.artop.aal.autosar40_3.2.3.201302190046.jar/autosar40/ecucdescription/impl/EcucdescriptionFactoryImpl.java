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
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.ecucdescription.EcucdescriptionFactory;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucdescription.impl.EcucAddInfoParamValueImpl;
import autosar40.ecucdescription.impl.EcucContainerValueImpl;
import autosar40.ecucdescription.impl.EcucInstanceReferenceValueImpl;
import autosar40.ecucdescription.impl.EcucModuleConfigurationValuesImpl;
import autosar40.ecucdescription.impl.EcucModuleConfigurationValuesRefConditionalImpl;
import autosar40.ecucdescription.impl.EcucNumericalParamValueImpl;
import autosar40.ecucdescription.impl.EcucReferenceValueImpl;
import autosar40.ecucdescription.impl.EcucTextualParamValueImpl;
import autosar40.ecucdescription.impl.EcucValueCollectionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcucdescriptionFactoryImpl
extends EFactoryImpl
implements EcucdescriptionFactory {
    public static EcucdescriptionFactory init() {
        try {
            EcucdescriptionFactory theEcucdescriptionFactory = (EcucdescriptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/ecucd");
            if (theEcucdescriptionFactory != null) {
                return theEcucdescriptionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcucdescriptionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 2: {
                return this.createEcucAddInfoParamValue();
            }
            case 4: {
                return this.createEcucContainerValue();
            }
            case 5: {
                return this.createEcucInstanceReferenceValue();
            }
            case 6: {
                return this.createEcucNumericalParamValue();
            }
            case 7: {
                return this.createEcucReferenceValue();
            }
            case 8: {
                return this.createEcucTextualParamValue();
            }
            case 9: {
                return this.createEcucValueCollection();
            }
            case 10: {
                return this.createEcucModuleConfigurationValuesRefConditional();
            }
            case 11: {
                return this.createEcucModuleConfigurationValues();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public EcucAddInfoParamValue createEcucAddInfoParamValue() {
        EcucAddInfoParamValueImpl ecucAddInfoParamValue = new EcucAddInfoParamValueImpl();
        return ecucAddInfoParamValue;
    }

    public EcucContainerValue createEcucContainerValue() {
        EcucContainerValueImpl ecucContainerValue = new EcucContainerValueImpl();
        return ecucContainerValue;
    }

    public EcucInstanceReferenceValue createEcucInstanceReferenceValue() {
        EcucInstanceReferenceValueImpl ecucInstanceReferenceValue = new EcucInstanceReferenceValueImpl();
        return ecucInstanceReferenceValue;
    }

    public EcucNumericalParamValue createEcucNumericalParamValue() {
        EcucNumericalParamValueImpl ecucNumericalParamValue = new EcucNumericalParamValueImpl();
        return ecucNumericalParamValue;
    }

    public EcucReferenceValue createEcucReferenceValue() {
        EcucReferenceValueImpl ecucReferenceValue = new EcucReferenceValueImpl();
        return ecucReferenceValue;
    }

    public EcucTextualParamValue createEcucTextualParamValue() {
        EcucTextualParamValueImpl ecucTextualParamValue = new EcucTextualParamValueImpl();
        return ecucTextualParamValue;
    }

    public EcucValueCollection createEcucValueCollection() {
        EcucValueCollectionImpl ecucValueCollection = new EcucValueCollectionImpl();
        return ecucValueCollection;
    }

    public EcucModuleConfigurationValuesRefConditional createEcucModuleConfigurationValuesRefConditional() {
        EcucModuleConfigurationValuesRefConditionalImpl ecucModuleConfigurationValuesRefConditional = new EcucModuleConfigurationValuesRefConditionalImpl();
        return ecucModuleConfigurationValuesRefConditional;
    }

    public EcucModuleConfigurationValues createEcucModuleConfigurationValues() {
        EcucModuleConfigurationValuesImpl ecucModuleConfigurationValues = new EcucModuleConfigurationValuesImpl();
        return ecucModuleConfigurationValues;
    }

    public EcucdescriptionPackage getEcucdescriptionPackage() {
        return (EcucdescriptionPackage)this.getEPackage();
    }

    @Deprecated
    public static EcucdescriptionPackage getPackage() {
        return EcucdescriptionPackage.eINSTANCE;
    }
}

