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
package autosar40.system.ecuresourcemapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.ecuresourcemapping.HwPortMapping;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcuresourcemappingSwitch<T> {
    protected static EcuresourcemappingPackage modelPackage;

    public EcuresourcemappingSwitch() {
        if (modelPackage == null) {
            modelPackage = EcuresourcemappingPackage.eINSTANCE;
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
                CommunicationControllerMapping communicationControllerMapping = (CommunicationControllerMapping)theEObject;
                T result = this.caseCommunicationControllerMapping(communicationControllerMapping);
                if (result == null) {
                    result = this.caseARObject(communicationControllerMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationControllerMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                HwPortMapping hwPortMapping = (HwPortMapping)theEObject;
                T result = this.caseHwPortMapping(hwPortMapping);
                if (result == null) {
                    result = this.caseARObject(hwPortMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(hwPortMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ECUMapping ecuMapping = (ECUMapping)theEObject;
                T result = this.caseECUMapping(ecuMapping);
                if (result == null) {
                    result = this.caseIdentifiable(ecuMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuMapping);
                }
                if (result == null) {
                    result = this.caseARObject(ecuMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommunicationControllerMapping(CommunicationControllerMapping object) {
        return null;
    }

    public T caseHwPortMapping(HwPortMapping object) {
        return null;
    }

    public T caseECUMapping(ECUMapping object) {
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

