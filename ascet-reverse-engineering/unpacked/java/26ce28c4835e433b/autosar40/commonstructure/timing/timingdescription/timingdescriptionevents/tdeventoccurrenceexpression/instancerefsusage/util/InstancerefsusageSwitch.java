/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.util;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefsusageSwitch<T> {
    protected static InstancerefsusagePackage modelPackage;

    public InstancerefsusageSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefsusagePackage.eINSTANCE;
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
                AutosarOperationArgumentInstance autosarOperationArgumentInstance = (AutosarOperationArgumentInstance)theEObject;
                T result = this.caseAutosarOperationArgumentInstance(autosarOperationArgumentInstance);
                if (result == null) {
                    result = this.caseIdentifiable(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseReferrable(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseARObject(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarOperationArgumentInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AutosarVariableInstance autosarVariableInstance = (AutosarVariableInstance)theEObject;
                T result = this.caseAutosarVariableInstance(autosarVariableInstance);
                if (result == null) {
                    result = this.caseIdentifiable(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseReferrable(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseARObject(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarVariableInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAutosarOperationArgumentInstance(AutosarOperationArgumentInstance object) {
        return null;
    }

    public T caseAutosarVariableInstance(AutosarVariableInstance object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

