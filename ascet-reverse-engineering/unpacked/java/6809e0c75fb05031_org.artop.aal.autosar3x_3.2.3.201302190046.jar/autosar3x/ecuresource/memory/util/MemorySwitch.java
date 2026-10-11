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
package autosar3x.ecuresource.memory.util;

import autosar3x.ecuresource.AssemblyHWConnection;
import autosar3x.ecuresource.DelegationHWConnection;
import autosar3x.ecuresource.HWConnection;
import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.memory.MemoryAccess;
import autosar3x.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedHWPort;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.ProvidedMemorySegment;
import autosar3x.ecuresource.memory.ProvidedNVMemorySegment;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
public class MemorySwitch<T> {
    protected static MemoryPackage modelPackage;

    public MemorySwitch() {
        if (modelPackage == null) {
            modelPackage = MemoryPackage.eINSTANCE;
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
                MemoryAccess memoryAccess = (MemoryAccess)theEObject;
                T result = this.caseMemoryAccess(memoryAccess);
                if (result == null) {
                    result = this.caseARObject(memoryAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(memoryAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MemoryMappedAssemblyHWConnection memoryMappedAssemblyHWConnection = (MemoryMappedAssemblyHWConnection)theEObject;
                T result = this.caseMemoryMappedAssemblyHWConnection(memoryMappedAssemblyHWConnection);
                if (result == null) {
                    result = this.caseAssemblyHWConnection(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseHWConnection(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseARObject(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(memoryMappedAssemblyHWConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MemoryMappedDelegationHWConnection memoryMappedDelegationHWConnection = (MemoryMappedDelegationHWConnection)theEObject;
                T result = this.caseMemoryMappedDelegationHWConnection(memoryMappedDelegationHWConnection);
                if (result == null) {
                    result = this.caseDelegationHWConnection(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseHWConnection(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseARObject(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(memoryMappedDelegationHWConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ProvidedMemorySegment providedMemorySegment = (ProvidedMemorySegment)theEObject;
                T result = this.caseProvidedMemorySegment(providedMemorySegment);
                if (result == null) {
                    result = this.caseHWElement(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseARElement(providedMemorySegment);
                }
                if (result == null) {
                    result = this.casePackageableElement(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseIdentifiable(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseARObject(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)providedMemorySegment);
                }
                if (result == null) {
                    result = this.caseGARObject(providedMemorySegment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ProvidedNVMemorySegment providedNVMemorySegment = (ProvidedNVMemorySegment)theEObject;
                T result = this.caseProvidedNVMemorySegment(providedNVMemorySegment);
                if (result == null) {
                    result = this.caseProvidedMemorySegment(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseHWElement(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseARElement(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.casePackageableElement(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseIdentifiable(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseARObject(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.caseGARObject(providedNVMemorySegment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                MemoryMappedHWPort memoryMappedHWPort = (MemoryMappedHWPort)theEObject;
                T result = this.caseMemoryMappedHWPort(memoryMappedHWPort);
                if (result == null) {
                    result = this.caseHWPort(memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(memoryMappedHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMemoryAccess(MemoryAccess object) {
        return null;
    }

    public T caseMemoryMappedAssemblyHWConnection(MemoryMappedAssemblyHWConnection object) {
        return null;
    }

    public T caseMemoryMappedDelegationHWConnection(MemoryMappedDelegationHWConnection object) {
        return null;
    }

    public T caseProvidedMemorySegment(ProvidedMemorySegment object) {
        return null;
    }

    public T caseProvidedNVMemorySegment(ProvidedNVMemorySegment object) {
        return null;
    }

    public T caseMemoryMappedHWPort(MemoryMappedHWPort object) {
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

    public T caseHWConnection(HWConnection object) {
        return null;
    }

    public T caseAssemblyHWConnection(AssemblyHWConnection object) {
        return null;
    }

    public T caseDelegationHWConnection(DelegationHWConnection object) {
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

    public T caseHWElement(HWElement object) {
        return null;
    }

    public T caseHWPort(HWPort object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

