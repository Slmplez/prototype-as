/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.communicationprotocol.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
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
public class CommunicationprotocolSwitch<T> {
    protected static CommunicationprotocolPackage modelPackage;

    public CommunicationprotocolSwitch() {
        if (modelPackage == null) {
            modelPackage = CommunicationprotocolPackage.eINSTANCE;
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
                CommProtocolElement commProtocolElement = (CommProtocolElement)theEObject;
                T result = this.caseCommProtocolElement(commProtocolElement);
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolElement);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolElement);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CommProtocolFrameRole commProtocolFrameRole = (CommProtocolFrameRole)theEObject;
                T result = this.caseCommProtocolFrameRole(commProtocolFrameRole);
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolFrameRole);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolFrameRole);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolFrameRole);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolFrameRole);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolFrameRole);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CommProtocolSignalGroupRole commProtocolSignalGroupRole = (CommProtocolSignalGroupRole)theEObject;
                T result = this.caseCommProtocolSignalGroupRole(commProtocolSignalGroupRole);
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolSignalGroupRole);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolSignalGroupRole);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolSignalGroupRole);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolSignalGroupRole);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolSignalGroupRole);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CommProtocolSignalRole commProtocolSignalRole = (CommProtocolSignalRole)theEObject;
                T result = this.caseCommProtocolSignalRole(commProtocolSignalRole);
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolSignalRole);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolSignalRole);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolSignalRole);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolSignalRole);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolSignalRole);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CommProtocolType commProtocolType = (CommProtocolType)theEObject;
                T result = this.caseCommProtocolType(commProtocolType);
                if (result == null) {
                    result = this.caseARElement(commProtocolType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(commProtocolType);
                }
                if (result == null) {
                    result = this.casePackageableElement(commProtocolType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(commProtocolType);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolType);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CommProtocolInstance commProtocolInstance = (CommProtocolInstance)theEObject;
                T result = this.caseCommProtocolInstance(commProtocolInstance);
                if (result == null) {
                    result = this.caseIdentifiable(commProtocolInstance);
                }
                if (result == null) {
                    result = this.caseARObject(commProtocolInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commProtocolInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commProtocolInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(commProtocolInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommProtocolElement(CommProtocolElement object) {
        return null;
    }

    public T caseCommProtocolFrameRole(CommProtocolFrameRole object) {
        return null;
    }

    public T caseCommProtocolSignalGroupRole(CommProtocolSignalGroupRole object) {
        return null;
    }

    public T caseCommProtocolSignalRole(CommProtocolSignalRole object) {
        return null;
    }

    public T caseCommProtocolType(CommProtocolType object) {
        return null;
    }

    public T caseCommProtocolInstance(CommProtocolInstance object) {
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

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

