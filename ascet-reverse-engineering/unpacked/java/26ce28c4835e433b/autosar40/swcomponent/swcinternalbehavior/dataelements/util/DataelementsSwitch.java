/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataelementsSwitch<T> {
    protected static DataelementsPackage modelPackage;

    public DataelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = DataelementsPackage.eINSTANCE;
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
                ArVariableInImplementationDataInstanceRef arVariableInImplementationDataInstanceRef = (ArVariableInImplementationDataInstanceRef)theEObject;
                T result = this.caseArVariableInImplementationDataInstanceRef(arVariableInImplementationDataInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(arVariableInImplementationDataInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(arVariableInImplementationDataInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(arVariableInImplementationDataInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AutosarParameterRef autosarParameterRef = (AutosarParameterRef)theEObject;
                T result = this.caseAutosarParameterRef(autosarParameterRef);
                if (result == null) {
                    result = this.caseARObject(autosarParameterRef);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarParameterRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ParameterAccess parameterAccess = (ParameterAccess)theEObject;
                T result = this.caseParameterAccess(parameterAccess);
                if (result == null) {
                    result = this.caseIdentifiable(parameterAccess);
                }
                if (result == null) {
                    result = this.caseGParameterAccess(parameterAccess);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(parameterAccess);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(parameterAccess);
                }
                if (result == null) {
                    result = this.caseReferrable(parameterAccess);
                }
                if (result == null) {
                    result = this.caseARObject(parameterAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable(parameterAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                VariableAccess variableAccess = (VariableAccess)theEObject;
                T result = this.caseVariableAccess(variableAccess);
                if (result == null) {
                    result = this.caseIdentifiable(variableAccess);
                }
                if (result == null) {
                    result = this.caseGVariableAccess(variableAccess);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(variableAccess);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(variableAccess);
                }
                if (result == null) {
                    result = this.caseReferrable(variableAccess);
                }
                if (result == null) {
                    result = this.caseARObject(variableAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable(variableAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(variableAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AutosarVariableRef autosarVariableRef = (AutosarVariableRef)theEObject;
                T result = this.caseAutosarVariableRef(autosarVariableRef);
                if (result == null) {
                    result = this.caseARObject(autosarVariableRef);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarVariableRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseArVariableInImplementationDataInstanceRef(ArVariableInImplementationDataInstanceRef object) {
        return null;
    }

    public T caseAutosarParameterRef(AutosarParameterRef object) {
        return null;
    }

    public T caseParameterAccess(ParameterAccess object) {
        return null;
    }

    public T caseVariableAccess(VariableAccess object) {
        return null;
    }

    public T caseAutosarVariableRef(AutosarVariableRef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAtpInstanceRef(AtpInstanceRef object) {
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

    public T caseGParameterAccess(GParameterAccess object) {
        return null;
    }

    public T caseGVariableAccess(GVariableAccess object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

