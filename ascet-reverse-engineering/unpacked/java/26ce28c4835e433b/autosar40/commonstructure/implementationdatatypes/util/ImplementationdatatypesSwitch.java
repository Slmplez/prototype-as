/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.implementationdatatypes.util;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplementationdatatypesSwitch<T> {
    protected static ImplementationdatatypesPackage modelPackage;

    public ImplementationdatatypesSwitch() {
        if (modelPackage == null) {
            modelPackage = ImplementationdatatypesPackage.eINSTANCE;
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
                ImplementationDataType implementationDataType = (ImplementationDataType)theEObject;
                T result = this.caseImplementationDataType(implementationDataType);
                if (result == null) {
                    result = this.caseAtpBlueprint(implementationDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(implementationDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(implementationDataType);
                }
                if (result == null) {
                    result = this.caseARElement(implementationDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(implementationDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(implementationDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(implementationDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(implementationDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(implementationDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(implementationDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(implementationDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(implementationDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(implementationDataType);
                }
                if (result == null) {
                    result = this.caseARObject(implementationDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(implementationDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(implementationDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ImplementationDataTypeElement implementationDataTypeElement = (ImplementationDataTypeElement)theEObject;
                T result = this.caseImplementationDataTypeElement(implementationDataTypeElement);
                if (result == null) {
                    result = this.caseIdentifiable(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseReferrable(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseARObject(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationDataTypeElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseImplementationDataType(ImplementationDataType object) {
        return null;
    }

    public T caseImplementationDataTypeElement(ImplementationDataTypeElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseGAutosarDataType(GAutosarDataType object) {
        return null;
    }

    public T caseAutosarDataType(AutosarDataType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

