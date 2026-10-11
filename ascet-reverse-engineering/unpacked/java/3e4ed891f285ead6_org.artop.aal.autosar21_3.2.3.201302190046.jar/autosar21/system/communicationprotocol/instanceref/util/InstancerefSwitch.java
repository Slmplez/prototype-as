/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.communicationprotocol.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalGroupRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.InstancerefPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                CommProtocolFrameRoleFrameInstance commProtocolFrameRoleFrameInstance = (CommProtocolFrameRoleFrameInstance)theEObject;
                T result = this.caseCommProtocolFrameRoleFrameInstance(commProtocolFrameRoleFrameInstance);
                if (result == null) {
                    result = this.caseARObject(commProtocolFrameRoleFrameInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolFrameRoleFrameInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CommProtocolFrameRoleProtocolElement commProtocolFrameRoleProtocolElement = (CommProtocolFrameRoleProtocolElement)theEObject;
                T result = this.caseCommProtocolFrameRoleProtocolElement(commProtocolFrameRoleProtocolElement);
                if (result == null) {
                    result = this.caseARObject(commProtocolFrameRoleProtocolElement);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolFrameRoleProtocolElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CommProtocolSignalGroupRoleProtocolElement commProtocolSignalGroupRoleProtocolElement = (CommProtocolSignalGroupRoleProtocolElement)theEObject;
                T result = this.caseCommProtocolSignalGroupRoleProtocolElement(commProtocolSignalGroupRoleProtocolElement);
                if (result == null) {
                    result = this.caseARObject(commProtocolSignalGroupRoleProtocolElement);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolSignalGroupRoleProtocolElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CommProtocolSignalRoleProtocolElement commProtocolSignalRoleProtocolElement = (CommProtocolSignalRoleProtocolElement)theEObject;
                T result = this.caseCommProtocolSignalRoleProtocolElement(commProtocolSignalRoleProtocolElement);
                if (result == null) {
                    result = this.caseARObject(commProtocolSignalRoleProtocolElement);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolSignalRoleProtocolElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommProtocolFrameRoleFrameInstance(CommProtocolFrameRoleFrameInstance object) {
        return null;
    }

    public T caseCommProtocolFrameRoleProtocolElement(CommProtocolFrameRoleProtocolElement object) {
        return null;
    }

    public T caseCommProtocolSignalGroupRoleProtocolElement(CommProtocolSignalGroupRoleProtocolElement object) {
        return null;
    }

    public T caseCommProtocolSignalRoleProtocolElement(CommProtocolSignalRoleProtocolElement object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

