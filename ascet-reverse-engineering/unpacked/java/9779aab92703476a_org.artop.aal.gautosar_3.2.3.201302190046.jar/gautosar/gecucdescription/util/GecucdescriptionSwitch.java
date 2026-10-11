/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gecucdescription.util;

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
import gautosar.gecucdescription.GecucdescriptionPackage;
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
public class GecucdescriptionSwitch<T> {
    protected static GecucdescriptionPackage modelPackage;

    public GecucdescriptionSwitch() {
        if (modelPackage == null) {
            modelPackage = GecucdescriptionPackage.eINSTANCE;
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
                GModuleConfiguration gModuleConfiguration = (GModuleConfiguration)theEObject;
                T result = this.caseGModuleConfiguration(gModuleConfiguration);
                if (result == null) {
                    result = this.caseGPackageableElement(gModuleConfiguration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gModuleConfiguration);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModuleConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(gModuleConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GContainer gContainer = (GContainer)theEObject;
                T result = this.caseGContainer(gContainer);
                if (result == null) {
                    result = this.caseGIdentifiable(gContainer);
                }
                if (result == null) {
                    result = this.caseGReferrable(gContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(gContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GParameterValue gParameterValue = (GParameterValue)theEObject;
                T result = this.caseGParameterValue(gParameterValue);
                if (result == null) {
                    result = this.caseGARObject(gParameterValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GConfigReferenceValue gConfigReferenceValue = (GConfigReferenceValue)theEObject;
                T result = this.caseGConfigReferenceValue(gConfigReferenceValue);
                if (result == null) {
                    result = this.caseGARObject(gConfigReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GReferenceValue gReferenceValue = (GReferenceValue)theEObject;
                T result = this.caseGReferenceValue(gReferenceValue);
                if (result == null) {
                    result = this.caseGConfigReferenceValue(gReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GInstanceReferenceValue gInstanceReferenceValue = (GInstanceReferenceValue)theEObject;
                T result = this.caseGInstanceReferenceValue(gInstanceReferenceValue);
                if (result == null) {
                    result = this.caseGConfigReferenceValue(gInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GBooleanValue gBooleanValue = (GBooleanValue)theEObject;
                T result = this.caseGBooleanValue(gBooleanValue);
                if (result == null) {
                    result = this.caseGParameterValue(gBooleanValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gBooleanValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GEnumerationValue gEnumerationValue = (GEnumerationValue)theEObject;
                T result = this.caseGEnumerationValue(gEnumerationValue);
                if (result == null) {
                    result = this.caseGParameterValue(gEnumerationValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gEnumerationValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GIntegerValue gIntegerValue = (GIntegerValue)theEObject;
                T result = this.caseGIntegerValue(gIntegerValue);
                if (result == null) {
                    result = this.caseGParameterValue(gIntegerValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gIntegerValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GStringValue gStringValue = (GStringValue)theEObject;
                T result = this.caseGStringValue(gStringValue);
                if (result == null) {
                    result = this.caseGParameterValue(gStringValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gStringValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                GLinkerSymbolValue gLinkerSymbolValue = (GLinkerSymbolValue)theEObject;
                T result = this.caseGLinkerSymbolValue(gLinkerSymbolValue);
                if (result == null) {
                    result = this.caseGStringValue(gLinkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(gLinkerSymbolValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gLinkerSymbolValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                GFunctionNameValue gFunctionNameValue = (GFunctionNameValue)theEObject;
                T result = this.caseGFunctionNameValue(gFunctionNameValue);
                if (result == null) {
                    result = this.caseGLinkerSymbolValue(gFunctionNameValue);
                }
                if (result == null) {
                    result = this.caseGStringValue(gFunctionNameValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(gFunctionNameValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gFunctionNameValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                GFloatValue gFloatValue = (GFloatValue)theEObject;
                T result = this.caseGFloatValue(gFloatValue);
                if (result == null) {
                    result = this.caseGParameterValue(gFloatValue);
                }
                if (result == null) {
                    result = this.caseGARObject(gFloatValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGModuleConfiguration(GModuleConfiguration object) {
        return null;
    }

    public T caseGContainer(GContainer object) {
        return null;
    }

    public T caseGParameterValue(GParameterValue object) {
        return null;
    }

    public T caseGConfigReferenceValue(GConfigReferenceValue object) {
        return null;
    }

    public T caseGReferenceValue(GReferenceValue object) {
        return null;
    }

    public T caseGInstanceReferenceValue(GInstanceReferenceValue object) {
        return null;
    }

    public T caseGBooleanValue(GBooleanValue object) {
        return null;
    }

    public T caseGEnumerationValue(GEnumerationValue object) {
        return null;
    }

    public T caseGIntegerValue(GIntegerValue object) {
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

    public T caseGFloatValue(GFloatValue object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

