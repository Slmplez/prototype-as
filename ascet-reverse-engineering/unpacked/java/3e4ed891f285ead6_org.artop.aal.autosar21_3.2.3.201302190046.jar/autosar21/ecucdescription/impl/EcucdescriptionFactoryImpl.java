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
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.BooleanValue;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcuConfiguration;
import autosar21.ecucdescription.EcucElement;
import autosar21.ecucdescription.EcucdescriptionFactory;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.EnumerationValue;
import autosar21.ecucdescription.FloatValue;
import autosar21.ecucdescription.FunctionNameValue;
import autosar21.ecucdescription.InstanceReferenceValue;
import autosar21.ecucdescription.IntegerValue;
import autosar21.ecucdescription.LinkerSymbolValue;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucdescription.ReferenceValue;
import autosar21.ecucdescription.StringValue;
import autosar21.ecucdescription.impl.BooleanValueImpl;
import autosar21.ecucdescription.impl.ContainerImpl;
import autosar21.ecucdescription.impl.EcuConfigurationImpl;
import autosar21.ecucdescription.impl.EcucElementImpl;
import autosar21.ecucdescription.impl.EnumerationValueImpl;
import autosar21.ecucdescription.impl.FloatValueImpl;
import autosar21.ecucdescription.impl.FunctionNameValueImpl;
import autosar21.ecucdescription.impl.InstanceReferenceValueImpl;
import autosar21.ecucdescription.impl.IntegerValueImpl;
import autosar21.ecucdescription.impl.LinkerSymbolValueImpl;
import autosar21.ecucdescription.impl.ModuleConfigurationImpl;
import autosar21.ecucdescription.impl.ReferenceValueImpl;
import autosar21.ecucdescription.impl.StringValueImpl;
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
            EcucdescriptionFactory theEcucdescriptionFactory = (EcucdescriptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecucd");
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
                return this.createEcucElement();
            }
            case 5: {
                return this.createEcuConfiguration();
            }
            case 6: {
                return this.createModuleConfiguration();
            }
            case 7: {
                return this.createEnumerationValue();
            }
            case 8: {
                return this.createFloatValue();
            }
            case 9: {
                return this.createFunctionNameValue();
            }
            case 10: {
                return this.createLinkerSymbolValue();
            }
            case 11: {
                return this.createStringValue();
            }
            case 12: {
                return this.createInstanceReferenceValue();
            }
            case 13: {
                return this.createIntegerValue();
            }
            case 14: {
                return this.createReferenceValue();
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

    public EcucElement createEcucElement() {
        EcucElementImpl ecucElement = new EcucElementImpl();
        return ecucElement;
    }

    public EcuConfiguration createEcuConfiguration() {
        EcuConfigurationImpl ecuConfiguration = new EcuConfigurationImpl();
        return ecuConfiguration;
    }

    public ModuleConfiguration createModuleConfiguration() {
        ModuleConfigurationImpl moduleConfiguration = new ModuleConfigurationImpl();
        return moduleConfiguration;
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

    public EcucdescriptionPackage getEcucdescriptionPackage() {
        return (EcucdescriptionPackage)this.getEPackage();
    }

    @Deprecated
    public static EcucdescriptionPackage getPackage() {
        return EcucdescriptionPackage.eINSTANCE;
    }
}

