/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucdescription.GInstanceReferenceValue
 *  gautosar.gecucdescription.GModuleConfiguration
 *  gautosar.gecucdescription.GParameterValue
 *  gautosar.gecucdescription.GReferenceValue
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecucdescription.util;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.ecucdescription.EcucAddInfoParamValue;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucIndexableValue;
import autosar40.ecucdescription.EcucInstanceReferenceValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucNumericalParamValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucReferenceValue;
import autosar40.ecucdescription.EcucTextualParamValue;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
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
                EcucAbstractReferenceValue ecucAbstractReferenceValue = (EcucAbstractReferenceValue)theEObject;
                T result = this.caseEcucAbstractReferenceValue(ecucAbstractReferenceValue);
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucAbstractReferenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(ecucAbstractReferenceValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucAbstractReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAbstractReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EcucIndexableValue ecucIndexableValue = (EcucIndexableValue)theEObject;
                T result = this.caseEcucIndexableValue(ecucIndexableValue);
                if (result == null) {
                    result = this.caseARObject(ecucIndexableValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucIndexableValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EcucAddInfoParamValue ecucAddInfoParamValue = (EcucAddInfoParamValue)theEObject;
                T result = this.caseEcucAddInfoParamValue(ecucAddInfoParamValue);
                if (result == null) {
                    result = this.caseEcucParameterValue(ecucAddInfoParamValue);
                }
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucAddInfoParamValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(ecucAddInfoParamValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucAddInfoParamValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAddInfoParamValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EcucParameterValue ecucParameterValue = (EcucParameterValue)theEObject;
                T result = this.caseEcucParameterValue(ecucParameterValue);
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucParameterValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(ecucParameterValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucParameterValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucParameterValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EcucContainerValue ecucContainerValue = (EcucContainerValue)theEObject;
                T result = this.caseEcucContainerValue(ecucContainerValue);
                if (result == null) {
                    result = this.caseIdentifiable(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseGContainer(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucContainerValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucContainerValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EcucInstanceReferenceValue ecucInstanceReferenceValue = (EcucInstanceReferenceValue)theEObject;
                T result = this.caseEcucInstanceReferenceValue(ecucInstanceReferenceValue);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceValue(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGInstanceReferenceValue(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucInstanceReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                EcucNumericalParamValue ecucNumericalParamValue = (EcucNumericalParamValue)theEObject;
                T result = this.caseEcucNumericalParamValue(ecucNumericalParamValue);
                if (result == null) {
                    result = this.caseEcucParameterValue(ecucNumericalParamValue);
                }
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucNumericalParamValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(ecucNumericalParamValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucNumericalParamValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucNumericalParamValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                EcucReferenceValue ecucReferenceValue = (EcucReferenceValue)theEObject;
                T result = this.caseEcucReferenceValue(ecucReferenceValue);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceValue(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.caseGReferenceValue(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.caseGConfigReferenceValue(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucReferenceValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                EcucTextualParamValue ecucTextualParamValue = (EcucTextualParamValue)theEObject;
                T result = this.caseEcucTextualParamValue(ecucTextualParamValue);
                if (result == null) {
                    result = this.caseEcucParameterValue(ecucTextualParamValue);
                }
                if (result == null) {
                    result = this.caseEcucIndexableValue(ecucTextualParamValue);
                }
                if (result == null) {
                    result = this.caseGParameterValue(ecucTextualParamValue);
                }
                if (result == null) {
                    result = this.caseARObject(ecucTextualParamValue);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucTextualParamValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                EcucValueCollection ecucValueCollection = (EcucValueCollection)theEObject;
                T result = this.caseEcucValueCollection(ecucValueCollection);
                if (result == null) {
                    result = this.caseARElement(ecucValueCollection);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseARObject(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucValueCollection);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucValueCollection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                EcucModuleConfigurationValuesRefConditional ecucModuleConfigurationValuesRefConditional = (EcucModuleConfigurationValuesRefConditional)theEObject;
                T result = this.caseEcucModuleConfigurationValuesRefConditional(ecucModuleConfigurationValuesRefConditional);
                if (result == null) {
                    result = this.caseARObject(ecucModuleConfigurationValuesRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucModuleConfigurationValuesRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                EcucModuleConfigurationValues ecucModuleConfigurationValues = (EcucModuleConfigurationValues)theEObject;
                T result = this.caseEcucModuleConfigurationValues(ecucModuleConfigurationValues);
                if (result == null) {
                    result = this.caseARElement(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseGModuleConfiguration(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseARObject(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucModuleConfigurationValues);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEcucAbstractReferenceValue(EcucAbstractReferenceValue object) {
        return null;
    }

    public T caseEcucIndexableValue(EcucIndexableValue object) {
        return null;
    }

    public T caseEcucAddInfoParamValue(EcucAddInfoParamValue object) {
        return null;
    }

    public T caseEcucParameterValue(EcucParameterValue object) {
        return null;
    }

    public T caseEcucContainerValue(EcucContainerValue object) {
        return null;
    }

    public T caseEcucInstanceReferenceValue(EcucInstanceReferenceValue object) {
        return null;
    }

    public T caseEcucNumericalParamValue(EcucNumericalParamValue object) {
        return null;
    }

    public T caseEcucReferenceValue(EcucReferenceValue object) {
        return null;
    }

    public T caseEcucTextualParamValue(EcucTextualParamValue object) {
        return null;
    }

    public T caseEcucValueCollection(EcucValueCollection object) {
        return null;
    }

    public T caseEcucModuleConfigurationValuesRefConditional(EcucModuleConfigurationValuesRefConditional object) {
        return null;
    }

    public T caseEcucModuleConfigurationValues(EcucModuleConfigurationValues object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGConfigReferenceValue(GConfigReferenceValue object) {
        return null;
    }

    public T caseGParameterValue(GParameterValue object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
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

    public T caseGInstanceReferenceValue(GInstanceReferenceValue object) {
        return null;
    }

    public T caseGReferenceValue(GReferenceValue object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
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

    public T caseGModuleConfiguration(GModuleConfiguration object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

