/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.datatypes.util;

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
import autosar40.swcomponent.datatype.datatypes.ApplicationArrayDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.ApplicationRecordDataType;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatatypesSwitch<T> {
    protected static DatatypesPackage modelPackage;

    public DatatypesSwitch() {
        if (modelPackage == null) {
            modelPackage = DatatypesPackage.eINSTANCE;
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
                ApplicationCompositeDataType applicationCompositeDataType = (ApplicationCompositeDataType)theEObject;
                T result = this.caseApplicationCompositeDataType(applicationCompositeDataType);
                if (result == null) {
                    result = this.caseApplicationDataType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationCompositeDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ApplicationDataType applicationDataType = (ApplicationDataType)theEObject;
                T result = this.caseApplicationDataType(applicationDataType);
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(applicationDataType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(applicationDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationDataType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AutosarDataType autosarDataType = (AutosarDataType)theEObject;
                T result = this.caseAutosarDataType(autosarDataType);
                if (result == null) {
                    result = this.caseARElement(autosarDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(autosarDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(autosarDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(autosarDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(autosarDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(autosarDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(autosarDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(autosarDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(autosarDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(autosarDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(autosarDataType);
                }
                if (result == null) {
                    result = this.caseARObject(autosarDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(autosarDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DataTypeMap dataTypeMap = (DataTypeMap)theEObject;
                T result = this.caseDataTypeMap(dataTypeMap);
                if (result == null) {
                    result = this.caseARObject(dataTypeMap);
                }
                if (result == null) {
                    result = this.caseGARObject(dataTypeMap);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DataTypeMappingSet dataTypeMappingSet = (DataTypeMappingSet)theEObject;
                T result = this.caseDataTypeMappingSet(dataTypeMappingSet);
                if (result == null) {
                    result = this.caseARElement(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseReferrable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseARObject(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.caseGARObject(dataTypeMappingSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ApplicationPrimitiveDataType applicationPrimitiveDataType = (ApplicationPrimitiveDataType)theEObject;
                T result = this.caseApplicationPrimitiveDataType(applicationPrimitiveDataType);
                if (result == null) {
                    result = this.caseApplicationDataType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ApplicationArrayDataType applicationArrayDataType = (ApplicationArrayDataType)theEObject;
                T result = this.caseApplicationArrayDataType(applicationArrayDataType);
                if (result == null) {
                    result = this.caseApplicationCompositeDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseApplicationDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationArrayDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ApplicationRecordDataType applicationRecordDataType = (ApplicationRecordDataType)theEObject;
                T result = this.caseApplicationRecordDataType(applicationRecordDataType);
                if (result == null) {
                    result = this.caseApplicationCompositeDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationRecordDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseApplicationDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseAutosarDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationRecordDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationCompositeDataType(ApplicationCompositeDataType object) {
        return null;
    }

    public T caseApplicationDataType(ApplicationDataType object) {
        return null;
    }

    public T caseAutosarDataType(AutosarDataType object) {
        return null;
    }

    public T caseDataTypeMap(DataTypeMap object) {
        return null;
    }

    public T caseDataTypeMappingSet(DataTypeMappingSet object) {
        return null;
    }

    public T caseApplicationPrimitiveDataType(ApplicationPrimitiveDataType object) {
        return null;
    }

    public T caseApplicationArrayDataType(ApplicationArrayDataType object) {
        return null;
    }

    public T caseApplicationRecordDataType(ApplicationRecordDataType object) {
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

    public T caseGApplicationDataType(GApplicationDataType object) {
        return null;
    }

    public T caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
        return null;
    }

    public T caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
        return null;
    }

    public T caseGApplicationRecordDataType(GApplicationRecordDataType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

