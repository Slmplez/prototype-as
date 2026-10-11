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
package autosar21.ecuresource.util;

import autosar21.ecuresource.AssemblyHWConnection;
import autosar21.ecuresource.DelegationHWConnection;
import autosar21.ecuresource.ECU;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWContainer;
import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.PinHWConnection;
import autosar21.ecuresource.SignalTransformation;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
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
public class EcuresourceSwitch<T> {
    protected static EcuresourcePackage modelPackage;

    public EcuresourceSwitch() {
        if (modelPackage == null) {
            modelPackage = EcuresourcePackage.eINSTANCE;
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
                AssemblyHWConnection assemblyHWConnection = (AssemblyHWConnection)theEObject;
                T result = this.caseAssemblyHWConnection(assemblyHWConnection);
                if (result == null) {
                    result = this.caseHWConnection(assemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(assemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseARObject(assemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(assemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)assemblyHWConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(assemblyHWConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                HWConnection hwConnection = (HWConnection)theEObject;
                T result = this.caseHWConnection(hwConnection);
                if (result == null) {
                    result = this.caseIdentifiable(hwConnection);
                }
                if (result == null) {
                    result = this.caseARObject(hwConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(hwConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                PinHWConnection pinHWConnection = (PinHWConnection)theEObject;
                T result = this.casePinHWConnection(pinHWConnection);
                if (result == null) {
                    result = this.caseARObject(pinHWConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(pinHWConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                HWPin hwPin = (HWPin)theEObject;
                T result = this.caseHWPin(hwPin);
                if (result == null) {
                    result = this.caseIdentifiable(hwPin);
                }
                if (result == null) {
                    result = this.caseARObject(hwPin);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwPin);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwPin);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPin);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                HWPort hwPort = (HWPort)theEObject;
                T result = this.caseHWPort(hwPort);
                if (result == null) {
                    result = this.caseIdentifiable(hwPort);
                }
                if (result == null) {
                    result = this.caseARObject(hwPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwPort);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DelegationHWConnection delegationHWConnection = (DelegationHWConnection)theEObject;
                T result = this.caseDelegationHWConnection(delegationHWConnection);
                if (result == null) {
                    result = this.caseHWConnection(delegationHWConnection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(delegationHWConnection);
                }
                if (result == null) {
                    result = this.caseARObject(delegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(delegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)delegationHWConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(delegationHWConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ECU ecu = (ECU)theEObject;
                T result = this.caseECU(ecu);
                if (result == null) {
                    result = this.caseHWElementContainer(ecu);
                }
                if (result == null) {
                    result = this.caseHWElement(ecu);
                }
                if (result == null) {
                    result = this.caseARElement(ecu);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(ecu);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecu);
                }
                if (result == null) {
                    result = this.caseARObject(ecu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecu);
                }
                if (result == null) {
                    result = this.caseGARObject(ecu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                HWElementContainer hwElementContainer = (HWElementContainer)theEObject;
                T result = this.caseHWElementContainer(hwElementContainer);
                if (result == null) {
                    result = this.caseHWElement(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseARElement(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(hwElementContainer);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseARObject(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwElementContainer);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwElementContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(hwElementContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                HWElement hwElement = (HWElement)theEObject;
                T result = this.caseHWElement(hwElement);
                if (result == null) {
                    result = this.caseARElement(hwElement);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(hwElement);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwElement);
                }
                if (result == null) {
                    result = this.caseARObject(hwElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwElement);
                }
                if (result == null) {
                    result = this.caseGARObject(hwElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SignalTransformation signalTransformation = (SignalTransformation)theEObject;
                T result = this.caseSignalTransformation(signalTransformation);
                if (result == null) {
                    result = this.caseARObject(signalTransformation);
                }
                if (result == null) {
                    result = this.caseGARObject(signalTransformation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                HWContainer hwContainer = (HWContainer)theEObject;
                T result = this.caseHWContainer(hwContainer);
                if (result == null) {
                    result = this.caseHWElementContainer(hwContainer);
                }
                if (result == null) {
                    result = this.caseHWElement(hwContainer);
                }
                if (result == null) {
                    result = this.caseARElement(hwContainer);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(hwContainer);
                }
                if (result == null) {
                    result = this.casePackageableElement(hwContainer);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hwContainer);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(hwContainer);
                }
                if (result == null) {
                    result = this.caseARObject(hwContainer);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hwContainer);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hwContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(hwContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAssemblyHWConnection(AssemblyHWConnection object) {
        return null;
    }

    public T caseHWConnection(HWConnection object) {
        return null;
    }

    public T casePinHWConnection(PinHWConnection object) {
        return null;
    }

    public T caseHWPin(HWPin object) {
        return null;
    }

    public T caseHWPort(HWPort object) {
        return null;
    }

    public T caseDelegationHWConnection(DelegationHWConnection object) {
        return null;
    }

    public T caseECU(ECU object) {
        return null;
    }

    public T caseHWElementContainer(HWElementContainer object) {
        return null;
    }

    public T caseHWElement(HWElement object) {
        return null;
    }

    public T caseSignalTransformation(SignalTransformation object) {
        return null;
    }

    public T caseHWContainer(HWContainer object) {
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

