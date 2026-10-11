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
package autosar21.system.pdustructure.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
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
public class PdustructureSwitch<T> {
    protected static PdustructurePackage modelPackage;

    public PdustructureSwitch() {
        if (modelPackage == null) {
            modelPackage = PdustructurePackage.eINSTANCE;
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
                Multiplexer multiplexer = (Multiplexer)theEObject;
                T result = this.caseMultiplexer(multiplexer);
                if (result == null) {
                    result = this.caseARObject(multiplexer);
                }
                if (result == null) {
                    result = this.caseGARObject(multiplexer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SubPDU subPDU = (SubPDU)theEObject;
                T result = this.caseSubPDU(subPDU);
                if (result == null) {
                    result = this.caseARObject(subPDU);
                }
                if (result == null) {
                    result = this.caseGARObject(subPDU);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SignalPosition signalPosition = (SignalPosition)theEObject;
                T result = this.caseSignalPosition(signalPosition);
                if (result == null) {
                    result = this.caseIdentifiable(signalPosition);
                }
                if (result == null) {
                    result = this.caseARObject(signalPosition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(signalPosition);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)signalPosition);
                }
                if (result == null) {
                    result = this.caseGARObject(signalPosition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PDUType pduType = (PDUType)theEObject;
                T result = this.casePDUType(pduType);
                if (result == null) {
                    result = this.caseARElement(pduType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(pduType);
                }
                if (result == null) {
                    result = this.casePackageableElement(pduType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pduType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pduType);
                }
                if (result == null) {
                    result = this.caseARObject(pduType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pduType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pduType);
                }
                if (result == null) {
                    result = this.caseGARObject(pduType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMultiplexer(Multiplexer object) {
        return null;
    }

    public T caseSubPDU(SubPDU object) {
        return null;
    }

    public T caseSignalPosition(SignalPosition object) {
        return null;
    }

    public T casePDUType(PDUType object) {
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

