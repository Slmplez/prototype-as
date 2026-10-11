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
package autosar3x.ecucdescription.impl;

import autosar3x.ecucdescription.BooleanValue;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcuConfiguration;
import autosar3x.ecucdescription.EcucdescriptionFactory;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.EnumerationValue;
import autosar3x.ecucdescription.FloatValue;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.IntegerValue;
import autosar3x.ecucdescription.LinkerSymbolValue;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucdescription.ReferenceValue;
import autosar3x.ecucdescription.StringValue;
import autosar3x.ecucdescription.impl.BooleanValueImpl;
import autosar3x.ecucdescription.impl.ContainerImpl;
import autosar3x.ecucdescription.impl.EcuConfigurationImpl;
import autosar3x.ecucdescription.impl.EnumerationValueImpl;
import autosar3x.ecucdescription.impl.FloatValueImpl;
import autosar3x.ecucdescription.impl.FunctionNameValueImpl;
import autosar3x.ecucdescription.impl.InstanceReferenceValueImpl;
import autosar3x.ecucdescription.impl.IntegerValueImpl;
import autosar3x.ecucdescription.impl.LinkerSymbolValueImpl;
import autosar3x.ecucdescription.impl.ModuleConfigurationImpl;
import autosar3x.ecucdescription.impl.ReferenceValueImpl;
import autosar3x.ecucdescription.impl.StringValueImpl;
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
            EcucdescriptionFactory theEcucdescriptionFactory = (EcucdescriptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecucd");
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
            case 0: {
                return this.createBooleanValue();
            }
            case 3: {
                return this.createContainer();
            }
            case 4: {
                return this.createEcuConfiguration();
            }
            case 5: {
                return this.createEnumerationValue();
            }
            case 6: {
                return this.createFloatValue();
            }
            case 7: {
                return this.createFunctionNameValue();
            }
            case 8: {
                return this.createLinkerSymbolValue();
            }
            case 9: {
                return this.createStringValue();
            }
            case 10: {
                return this.createInstanceReferenceValue();
            }
            case 11: {
                return this.createIntegerValue();
            }
            case 12: {
                return this.createReferenceValue();
            }
            case 13: {
                return this.createModuleConfiguration();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BooleanValue createBooleanValue() {
        BooleanValueImpl booleanValue = new BooleanValueImpl();
        return booleanValue;
    }

    public Container createContainer() {
        ContainerImpl container = new ContainerImpl();
        return container;
    }

    public EcuConfiguration createEcuConfiguration() {
        EcuConfigurationImpl ecuConfiguration = new EcuConfigurationImpl();
        return ecuConfiguration;
    }

    public EnumerationValue createEnumerationValue() {
        EnumerationValueImpl enumerationValue = new EnumerationValueImpl();
        return enumerationValue;
    }

    public FloatValue createFloatValue() {
        FloatValueImpl floatValue = new FloatValueImpl();
        return floatValue;
    }

    public FunctionNameValue createFunctionNameValue() {
        FunctionNameValueImpl functionNameValue = new FunctionNameValueImpl();
        return functionNameValue;
    }

    public LinkerSymbolValue createLinkerSymbolValue() {
        LinkerSymbolValueImpl linkerSymbolValue = new LinkerSymbolValueImpl();
        return linkerSymbolValue;
    }

    public StringValue createStringValue() {
        StringValueImpl stringValue = new StringValueImpl();
        return stringValue;
    }

    public InstanceReferenceValue createInstanceReferenceValue() {
        InstanceReferenceValueImpl instanceReferenceValue = new InstanceReferenceValueImpl();
        return instanceReferenceValue;
    }

    public IntegerValue createIntegerValue() {
        IntegerValueImpl integerValue = new IntegerValueImpl();
        return integerValue;
    }

    public ReferenceValue createReferenceValue() {
        ReferenceValueImpl referenceValue = new ReferenceValueImpl();
        return referenceValue;
    }

    public ModuleConfiguration createModuleConfiguration() {
        ModuleConfigurationImpl moduleConfiguration = new ModuleConfigurationImpl();
        return moduleConfiguration;
    }

    public EcucdescriptionPackage getEcucdescriptionPackage() {
        return (EcucdescriptionPackage)this.getEPackage();
    }

    @Deprecated
    public static EcucdescriptionPackage getPackage() {
        return EcucdescriptionPackage.eINSTANCE;
    }
}

