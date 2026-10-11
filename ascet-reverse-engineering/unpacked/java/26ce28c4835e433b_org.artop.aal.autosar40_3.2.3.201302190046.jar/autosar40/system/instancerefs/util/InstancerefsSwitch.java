/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
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
                OperationInSystemInstanceRef operationInSystemInstanceRef = (OperationInSystemInstanceRef)theEObject;
                T result = this.caseOperationInSystemInstanceRef(operationInSystemInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(operationInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(operationInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(operationInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PortGroupInSystemInstanceRef portGroupInSystemInstanceRef = (PortGroupInSystemInstanceRef)theEObject;
                T result = this.casePortGroupInSystemInstanceRef(portGroupInSystemInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(portGroupInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(portGroupInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(portGroupInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                VariableDataPrototypeInSystemInstanceRef variableDataPrototypeInSystemInstanceRef = (VariableDataPrototypeInSystemInstanceRef)theEObject;
                T result = this.caseVariableDataPrototypeInSystemInstanceRef(variableDataPrototypeInSystemInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(variableDataPrototypeInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(variableDataPrototypeInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(variableDataPrototypeInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ComponentInSystemInstanceRef componentInSystemInstanceRef = (ComponentInSystemInstanceRef)theEObject;
                T result = this.caseComponentInSystemInstanceRef(componentInSystemInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(componentInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(componentInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(componentInSystemInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseOperationInSystemInstanceRef(OperationInSystemInstanceRef object) {
        return null;
    }

    public T casePortGroupInSystemInstanceRef(PortGroupInSystemInstanceRef object) {
        return null;
    }

    public T caseVariableDataPrototypeInSystemInstanceRef(VariableDataPrototypeInSystemInstanceRef object) {
        return null;
    }

    public T caseComponentInSystemInstanceRef(ComponentInSystemInstanceRef object) {
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

