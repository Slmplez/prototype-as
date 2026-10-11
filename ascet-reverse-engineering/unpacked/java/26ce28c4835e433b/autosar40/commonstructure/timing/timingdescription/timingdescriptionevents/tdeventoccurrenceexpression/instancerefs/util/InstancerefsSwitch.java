/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.util;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.OperationArgumentInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.VariableInComponentInstanceRef;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefsSwitch<T> {
    protected static InstancerefsPackage modelPackage;

    public InstancerefsSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefsPackage.eINSTANCE;
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
                VariableInComponentInstanceRef variableInComponentInstanceRef = (VariableInComponentInstanceRef)theEObject;
                T result = this.caseVariableInComponentInstanceRef(variableInComponentInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(variableInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(variableInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(variableInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                OperationArgumentInComponentInstanceRef operationArgumentInComponentInstanceRef = (OperationArgumentInComponentInstanceRef)theEObject;
                T result = this.caseOperationArgumentInComponentInstanceRef(operationArgumentInComponentInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(operationArgumentInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(operationArgumentInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(operationArgumentInComponentInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseVariableInComponentInstanceRef(VariableInComponentInstanceRef object) {
        return null;
    }

    public T caseOperationArgumentInComponentInstanceRef(OperationArgumentInComponentInstanceRef object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

