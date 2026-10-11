/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.dataprototypes.util;

import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataprototypesSwitch<T> {
    protected static DataprototypesPackage modelPackage;

    public DataprototypesSwitch() {
        if (modelPackage == null) {
            modelPackage = DataprototypesPackage.eINSTANCE;
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
                ApplicationArrayElement applicationArrayElement = (ApplicationArrayElement)theEObject;
                T result = this.caseApplicationArrayElement(applicationArrayElement);
                if (result == null) {
                    result = this.caseApplicationCompositeElementDataPrototype(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseDataPrototype(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseAtpFeature(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseARObject(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationArrayElement);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationArrayElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ApplicationCompositeElementDataPrototype applicationCompositeElementDataPrototype = (ApplicationCompositeElementDataPrototype)theEObject;
                T result = this.caseApplicationCompositeElementDataPrototype(applicationCompositeElementDataPrototype);
                if (result == null) {
                    result = this.caseDataPrototype(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DataPrototype dataPrototype = (DataPrototype)theEObject;
                T result = this.caseDataPrototype(dataPrototype);
                if (result == null) {
                    result = this.caseAtpPrototype(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(dataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(dataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(dataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ApplicationRecordElement applicationRecordElement = (ApplicationRecordElement)theEObject;
                T result = this.caseApplicationRecordElement(applicationRecordElement);
                if (result == null) {
                    result = this.caseApplicationCompositeElementDataPrototype(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGApplicationRecordElement(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseDataPrototype(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseAtpFeature(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseARObject(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationRecordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AutosarDataPrototype autosarDataPrototype = (AutosarDataPrototype)theEObject;
                T result = this.caseAutosarDataPrototype(autosarDataPrototype);
                if (result == null) {
                    result = this.caseDataPrototype(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ParameterDataPrototype parameterDataPrototype = (ParameterDataPrototype)theEObject;
                T result = this.caseParameterDataPrototype(parameterDataPrototype);
                if (result == null) {
                    result = this.caseAutosarDataPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGParameterDataPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseDataPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                VariableDataPrototype variableDataPrototype = (VariableDataPrototype)theEObject;
                T result = this.caseVariableDataPrototype(variableDataPrototype);
                if (result == null) {
                    result = this.caseAutosarDataPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGVariableDataPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseDataPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(variableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(variableDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationArrayElement(ApplicationArrayElement object) {
        return null;
    }

    public T caseApplicationCompositeElementDataPrototype(ApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseApplicationRecordElement(ApplicationRecordElement object) {
        return null;
    }

    public T caseAutosarDataPrototype(AutosarDataPrototype object) {
        return null;
    }

    public T caseParameterDataPrototype(ParameterDataPrototype object) {
        return null;
    }

    public T caseVariableDataPrototype(VariableDataPrototype object) {
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

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseGApplicationRecordElement(GApplicationRecordElement object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGParameterDataPrototype(GParameterDataPrototype object) {
        return null;
    }

    public T caseGVariableDataPrototype(GVariableDataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

