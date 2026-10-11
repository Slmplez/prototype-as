/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gecucparameterdef.util;

import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.gecucparameterdef.GStringParamDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
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
public class GecucparameterdefSwitch<T> {
    protected static GecucparameterdefPackage modelPackage;

    public GecucparameterdefSwitch() {
        if (modelPackage == null) {
            modelPackage = GecucparameterdefPackage.eINSTANCE;
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
                GParamConfMultiplicity gParamConfMultiplicity = (GParamConfMultiplicity)theEObject;
                T result = this.caseGParamConfMultiplicity(gParamConfMultiplicity);
                if (result == null) {
                    result = this.caseGARObject(gParamConfMultiplicity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GContainerDef gContainerDef = (GContainerDef)theEObject;
                T result = this.caseGContainerDef(gContainerDef);
                if (result == null) {
                    result = this.caseGIdentifiable(gContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GModuleDef gModuleDef = (GModuleDef)theEObject;
                T result = this.caseGModuleDef(gModuleDef);
                if (result == null) {
                    result = this.caseGPackageableElement(gModuleDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gModuleDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gModuleDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModuleDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gModuleDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GCommonConfigurationAttributes gCommonConfigurationAttributes = (GCommonConfigurationAttributes)theEObject;
                T result = this.caseGCommonConfigurationAttributes(gCommonConfigurationAttributes);
                if (result == null) {
                    result = this.caseGIdentifiable(gCommonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGReferrable(gCommonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGARObject(gCommonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GConfigParameter gConfigParameter = (GConfigParameter)theEObject;
                T result = this.caseGConfigParameter(gConfigParameter);
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gConfigParameter);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gConfigParameter);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gConfigParameter);
                }
                if (result == null) {
                    result = this.caseGReferrable(gConfigParameter);
                }
                if (result == null) {
                    result = this.caseGARObject(gConfigParameter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GConfigReference gConfigReference = (GConfigReference)theEObject;
                T result = this.caseGConfigReference(gConfigReference);
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gConfigReference);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gConfigReference);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gConfigReference);
                }
                if (result == null) {
                    result = this.caseGReferrable(gConfigReference);
                }
                if (result == null) {
                    result = this.caseGARObject(gConfigReference);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GParamConfContainerDef gParamConfContainerDef = (GParamConfContainerDef)theEObject;
                T result = this.caseGParamConfContainerDef(gParamConfContainerDef);
                if (result == null) {
                    result = this.caseGContainerDef(gParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gParamConfContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GChoiceContainerDef gChoiceContainerDef = (GChoiceContainerDef)theEObject;
                T result = this.caseGChoiceContainerDef(gChoiceContainerDef);
                if (result == null) {
                    result = this.caseGContainerDef(gChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gChoiceContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GBooleanParamDef gBooleanParamDef = (GBooleanParamDef)theEObject;
                T result = this.caseGBooleanParamDef(gBooleanParamDef);
                if (result == null) {
                    result = this.caseGConfigParameter(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gBooleanParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GIntegerParamDef gIntegerParamDef = (GIntegerParamDef)theEObject;
                T result = this.caseGIntegerParamDef(gIntegerParamDef);
                if (result == null) {
                    result = this.caseGConfigParameter(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gIntegerParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                GFloatParamDef gFloatParamDef = (GFloatParamDef)theEObject;
                T result = this.caseGFloatParamDef(gFloatParamDef);
                if (result == null) {
                    result = this.caseGConfigParameter(gFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gFloatParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                GEnumerationParamDef gEnumerationParamDef = (GEnumerationParamDef)theEObject;
                T result = this.caseGEnumerationParamDef(gEnumerationParamDef);
                if (result == null) {
                    result = this.caseGConfigParameter(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gEnumerationParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                GEnumerationLiteralDef gEnumerationLiteralDef = (GEnumerationLiteralDef)theEObject;
                T result = this.caseGEnumerationLiteralDef(gEnumerationLiteralDef);
                if (result == null) {
                    result = this.caseGIdentifiable(gEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                GAbstractStringParamDef gAbstractStringParamDef = (GAbstractStringParamDef)theEObject;
                T result = this.caseGAbstractStringParamDef(gAbstractStringParamDef);
                if (result == null) {
                    result = this.caseGConfigParameter(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                GStringParamDef gStringParamDef = (GStringParamDef)theEObject;
                T result = this.caseGStringParamDef(gStringParamDef);
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                GLinkerSymbolDef gLinkerSymbolDef = (GLinkerSymbolDef)theEObject;
                T result = this.caseGLinkerSymbolDef(gLinkerSymbolDef);
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                GFunctionNameDef gFunctionNameDef = (GFunctionNameDef)theEObject;
                T result = this.caseGFunctionNameDef(gFunctionNameDef);
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gFunctionNameDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                GReferenceDef gReferenceDef = (GReferenceDef)theEObject;
                T result = this.caseGReferenceDef(gReferenceDef);
                if (result == null) {
                    result = this.caseGConfigReference(gReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                GSymbolicNameReferenceDef gSymbolicNameReferenceDef = (GSymbolicNameReferenceDef)theEObject;
                T result = this.caseGSymbolicNameReferenceDef(gSymbolicNameReferenceDef);
                if (result == null) {
                    result = this.caseGReferenceDef(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                GInstanceReferenceDef gInstanceReferenceDef = (GInstanceReferenceDef)theEObject;
                T result = this.caseGInstanceReferenceDef(gInstanceReferenceDef);
                if (result == null) {
                    result = this.caseGConfigReference(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                GForeignReferenceDef gForeignReferenceDef = (GForeignReferenceDef)theEObject;
                T result = this.caseGForeignReferenceDef(gForeignReferenceDef);
                if (result == null) {
                    result = this.caseGConfigReference(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gForeignReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                GChoiceReferenceDef gChoiceReferenceDef = (GChoiceReferenceDef)theEObject;
                T result = this.caseGChoiceReferenceDef(gChoiceReferenceDef);
                if (result == null) {
                    result = this.caseGConfigReference(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(gChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGParamConfMultiplicity(GParamConfMultiplicity object) {
        return null;
    }

    public T caseGContainerDef(GContainerDef object) {
        return null;
    }

    public T caseGModuleDef(GModuleDef object) {
        return null;
    }

    public T caseGCommonConfigurationAttributes(GCommonConfigurationAttributes object) {
        return null;
    }

    public T caseGConfigParameter(GConfigParameter object) {
        return null;
    }

    public T caseGConfigReference(GConfigReference object) {
        return null;
    }

    public T caseGParamConfContainerDef(GParamConfContainerDef object) {
        return null;
    }

    public T caseGChoiceContainerDef(GChoiceContainerDef object) {
        return null;
    }

    public T caseGBooleanParamDef(GBooleanParamDef object) {
        return null;
    }

    public T caseGIntegerParamDef(GIntegerParamDef object) {
        return null;
    }

    public T caseGFloatParamDef(GFloatParamDef object) {
        return null;
    }

    public T caseGEnumerationParamDef(GEnumerationParamDef object) {
        return null;
    }

    public T caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
        return null;
    }

    public T caseGAbstractStringParamDef(GAbstractStringParamDef object) {
        return null;
    }

    public T caseGStringParamDef(GStringParamDef object) {
        return null;
    }

    public T caseGLinkerSymbolDef(GLinkerSymbolDef object) {
        return null;
    }

    public T caseGFunctionNameDef(GFunctionNameDef object) {
        return null;
    }

    public T caseGReferenceDef(GReferenceDef object) {
        return null;
    }

    public T caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef object) {
        return null;
    }

    public T caseGInstanceReferenceDef(GInstanceReferenceDef object) {
        return null;
    }

    public T caseGForeignReferenceDef(GForeignReferenceDef object) {
        return null;
    }

    public T caseGChoiceReferenceDef(GChoiceReferenceDef object) {
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

