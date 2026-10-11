/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GBooleanValue
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucdescription.GEnumerationValue
 *  gautosar.gecucdescription.GFloatValue
 *  gautosar.gecucdescription.GFunctionNameValue
 *  gautosar.gecucdescription.GInstanceReferenceValue
 *  gautosar.gecucdescription.GIntegerValue
 *  gautosar.gecucdescription.GLinkerSymbolValue
 *  gautosar.gecucdescription.GModuleConfiguration
 *  gautosar.gecucdescription.GParameterValue
 *  gautosar.gecucdescription.GReferenceValue
 *  gautosar.gecucdescription.GStringValue
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.ecucdescription.util;

import autosar3x.ecucdescription.BooleanValue;
import autosar3x.ecucdescription.ConfigReferenceValue;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcuConfiguration;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.EnumerationValue;
import autosar3x.ecucdescription.FloatValue;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.IntegerValue;
import autosar3x.ecucdescription.LinkerSymbolValue;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucdescription.ParameterValue;
import autosar3x.ecucdescription.ReferenceValue;
import autosar3x.ecucdescription.StringValue;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GStringValue;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucdescriptionSwitch<T> {
    protected static EcucdescriptionPackage modelPackage;

    public EcucdescriptionSwitch() {
        if (modelPackage == null) {
            modelPackage = EcucdescriptionPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                BooleanValue booleanValue = (BooleanValue)theEObject;
                T result = this.caseBooleanValue(booleanValue);
                if (result == null) {
                    result = this.caseParameterValue(booleanValue);
                }
                if (result == null) {
                    result = this.caseGBooleanValue(booleanValue);
                }
                if (result == null) {
                    result = this.caseARObject(booleanValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(booleanValue);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ParameterValue parameterValue = (ParameterValue)theEObject;
                T result = this.caseParameterValue(parameterValue);
                if (result == null) {
                    result = this.caseARObject(parameterValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(parameterValue);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ConfigReferenceValue configReferenceValue = (ConfigReferenceValue)theEObject;
                T result = this.caseConfigReferenceValue(configReferenceValue);
                if (result == null) {
                    result = this.caseARObject(configReferenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(configReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(configReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Container container = (Container)theEObject;
                T result = this.caseContainer(container);
                if (result == null) {
                    result = this.caseIdentifiable(container);
                }
                if (result == null) {
                    result = this.caseGContainer(container);
                }
                if (result == null) {
                    result = this.caseARObject(container);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(container);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)container);
                }
                if (result == null) {
                    result = this.caseGARObject(container);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EcuConfiguration ecuConfiguration = (EcuConfiguration)theEObject;
                T result = this.caseEcuConfiguration(ecuConfiguration);
                if (result == null) {
                    result = this.caseARElement(ecuConfiguration);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseARObject(ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EnumerationValue enumerationValue = (EnumerationValue)theEObject;
                T result = this.caseEnumerationValue(enumerationValue);
                if (result == null) {
                    result = this.caseParameterValue(enumerationValue);
                }
                if (result == null) {
                    result = this.caseGEnumerationValue(enumerationValue);
                }
                if (result == null) {
                    result = this.caseARObject(enumerationValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(enumerationValue);
                }
                if (result == null) {
                    result = this.caseGARObject(enumerationValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                FloatValue floatValue = (FloatValue)theEObject;
                T result = this.caseFloatValue(floatValue);
                if (result == null) {
                    result = this.caseParameterValue(floatValue);
                }
                if (result == null) {
                    result = this.caseGFloatValue(floatValue);
                }
                if (result == null) {
                    result = this.caseARObject(floatValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(floatValue);
                }
                if (result == null) {
                    result = this.caseGARObject(floatValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                FunctionNameValue functionNameValue = (FunctionNameValue)theEObject;
                T result = this.caseFunctionNameValue(functionNameValue);
                if (result == null) {
                    result = this.caseLinkerSymbolValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseGFunctionNameValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseStringValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseGLinkerSymbolValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseParameterValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseGStringValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseARObject(functionNameValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(functionNameValue);
                }
                if (result == null) {
                    result = this.caseGARObject(functionNameValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                LinkerSymbolValue linkerSymbolValue = (LinkerSymbolValue)theEObject;
                T result = this.caseLinkerSymbolValue(linkerSymbolValue);
                if (result == null) {
                    result = this.caseStringValue(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGLinkerSymbolValue(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseParameterValue(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGStringValue(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseARObject(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGARObject(linkerSymbolValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                StringValue stringValue = (StringValue)theEObject;
                T result = this.caseStringValue(stringValue);
                if (result == null) {
                    result = this.caseParameterValue(stringValue);
                }
                if (result == null) {
                    result = this.caseGStringValue(stringValue);
                }
                if (result == null) {
                    result = this.caseARObject(stringValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(stringValue);
                }
                if (result == null) {
                    result = this.caseGARObject(stringValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                InstanceReferenceValue instanceReferenceValue = (InstanceReferenceValue)theEObject;
                T result = this.caseInstanceReferenceValue(instanceReferenceValue);
                if (result == null) {
                    result = this.caseConfigReferenceValue(instanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGInstanceReferenceValue(instanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseARObject(instanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(instanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(instanceReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                IntegerValue integerValue = (IntegerValue)theEObject;
                T result = this.caseIntegerValue(integerValue);
                if (result == null) {
                    result = this.caseParameterValue(integerValue);
                }
                if (result == null) {
                    result = this.caseGIntegerValue(integerValue);
                }
                if (result == null) {
                    result = this.caseARObject(integerValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(integerValue);
                }
                if (result == null) {
                    result = this.caseGARObject(integerValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                ReferenceValue referenceValue = (ReferenceValue)theEObject;
                T result = this.caseReferenceValue(referenceValue);
                if (result == null) {
                    result = this.caseConfigReferenceValue(referenceValue);
                }
                if (result == null) {
                    result = this.caseGReferenceValue(referenceValue);
                }
                if (result == null) {
                    result = this.caseARObject(referenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(referenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(referenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ModuleConfiguration moduleConfiguration = (ModuleConfiguration)theEObject;
                T result = this.caseModuleConfiguration(moduleConfiguration);
                if (result == null) {
                    result = this.caseARElement(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseGModuleConfiguration(moduleConfiguration);
                }
                if (result == null) {
                    result = this.casePackageableElement(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseIdentifiable(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseARObject(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)moduleConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(moduleConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBooleanValue(BooleanValue object) {
        return null;
    }

    public T caseParameterValue(ParameterValue object) {
        return null;
    }

    public T caseConfigReferenceValue(ConfigReferenceValue object) {
        return null;
    }

    public T caseContainer(Container object) {
        return null;
    }

    public T caseEcuConfiguration(EcuConfiguration object) {
        return null;
    }

    public T caseEnumerationValue(EnumerationValue object) {
        return null;
    }

    public T caseFloatValue(FloatValue object) {
        return null;
    }

    public T caseFunctionNameValue(FunctionNameValue object) {
        return null;
    }

    public T caseLinkerSymbolValue(LinkerSymbolValue object) {
        return null;
    }

    public T caseStringValue(StringValue object) {
        return null;
    }

    public T caseInstanceReferenceValue(InstanceReferenceValue object) {
        return null;
    }

    public T caseIntegerValue(IntegerValue object) {
        return null;
    }

    public T caseReferenceValue(ReferenceValue object) {
        return null;
    }

    public T caseModuleConfiguration(ModuleConfiguration object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGParameterValue(GParameterValue object) {
        return null;
    }

    public T caseGBooleanValue(GBooleanValue object) {
        return null;
    }

    public T caseGConfigReferenceValue(GConfigReferenceValue object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGContainer(GContainer object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseGEnumerationValue(GEnumerationValue object) {
        return null;
    }

    public T caseGFloatValue(GFloatValue object) {
        return null;
    }

    public T caseGStringValue(GStringValue object) {
        return null;
    }

    public T caseGLinkerSymbolValue(GLinkerSymbolValue object) {
        return null;
    }

    public T caseGFunctionNameValue(GFunctionNameValue object) {
        return null;
    }

    public T caseGInstanceReferenceValue(GInstanceReferenceValue object) {
        return null;
    }

    public T caseGIntegerValue(GIntegerValue object) {
        return null;
    }

    public T caseGReferenceValue(GReferenceValue object) {
        return null;
    }

    public T caseGModuleConfiguration(GModuleConfiguration object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

