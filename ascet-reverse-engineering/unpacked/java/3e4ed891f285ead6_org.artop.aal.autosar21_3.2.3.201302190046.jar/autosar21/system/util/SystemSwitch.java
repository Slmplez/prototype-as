/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gsystem.GSystem
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.GatewayInstance;
import autosar21.system.SoftwareComposition;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gsystem.GSystem;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemSwitch<T> {
    protected static SystemPackage modelPackage;

    public SystemSwitch() {
        if (modelPackage == null) {
            modelPackage = SystemPackage.eINSTANCE;
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
                SystemTopologyInstance systemTopologyInstance = (SystemTopologyInstance)theEObject;
                T result = this.caseSystemTopologyInstance(systemTopologyInstance);
                if (result == null) {
                    result = this.caseIdentifiable(systemTopologyInstance);
                }
                if (result == null) {
                    result = this.caseARObject(systemTopologyInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemTopologyInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemTopologyInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(systemTopologyInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CommunicationMatrixInstance communicationMatrixInstance = (CommunicationMatrixInstance)theEObject;
                T result = this.caseCommunicationMatrixInstance(communicationMatrixInstance);
                if (result == null) {
                    result = this.caseIdentifiable(communicationMatrixInstance);
                }
                if (result == null) {
                    result = this.caseARObject(communicationMatrixInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationMatrixInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationMatrixInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationMatrixInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GatewayInstance gatewayInstance = (GatewayInstance)theEObject;
                T result = this.caseGatewayInstance(gatewayInstance);
                if (result == null) {
                    result = this.caseIdentifiable(gatewayInstance);
                }
                if (result == null) {
                    result = this.caseARObject(gatewayInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gatewayInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)gatewayInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(gatewayInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                System system = (System)theEObject;
                T result = this.caseSystem(system);
                if (result == null) {
                    result = this.caseARElement(system);
                }
                if (result == null) {
                    result = this.caseGSystem(system);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(system);
                }
                if (result == null) {
                    result = this.casePackageableElement(system);
                }
                if (result == null) {
                    result = this.caseIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(system);
                }
                if (result == null) {
                    result = this.caseARObject(system);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)system);
                }
                if (result == null) {
                    result = this.caseGARObject(system);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SystemCommunication systemCommunication = (SystemCommunication)theEObject;
                T result = this.caseSystemCommunication(systemCommunication);
                if (result == null) {
                    result = this.caseARObject(systemCommunication);
                }
                if (result == null) {
                    result = this.caseGARObject(systemCommunication);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SystemMapping systemMapping = (SystemMapping)theEObject;
                T result = this.caseSystemMapping(systemMapping);
                if (result == null) {
                    result = this.caseIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseARObject(systemMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(systemMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SoftwareComposition softwareComposition = (SoftwareComposition)theEObject;
                T result = this.caseSoftwareComposition(softwareComposition);
                if (result == null) {
                    result = this.caseIdentifiable(softwareComposition);
                }
                if (result == null) {
                    result = this.caseARObject(softwareComposition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(softwareComposition);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)softwareComposition);
                }
                if (result == null) {
                    result = this.caseGARObject(softwareComposition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSystemTopologyInstance(SystemTopologyInstance object) {
        return null;
    }

    public T caseCommunicationMatrixInstance(CommunicationMatrixInstance object) {
        return null;
    }

    public T caseGatewayInstance(GatewayInstance object) {
        return null;
    }

    public T caseSystem(System object) {
        return null;
    }

    public T caseSystemCommunication(SystemCommunication object) {
        return null;
    }

    public T caseSystemMapping(SystemMapping object) {
        return null;
    }

    public T caseSoftwareComposition(SoftwareComposition object) {
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

    public T caseGSystem(GSystem object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

