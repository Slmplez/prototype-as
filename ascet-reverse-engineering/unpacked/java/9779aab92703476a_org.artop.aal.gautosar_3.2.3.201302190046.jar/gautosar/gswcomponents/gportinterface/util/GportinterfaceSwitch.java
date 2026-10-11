/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gportinterface.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GNvDataInterface;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import gautosar.gswcomponents.gportinterface.GTriggerInterface;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GportinterfaceSwitch<T> {
    protected static GportinterfacePackage modelPackage;

    public GportinterfaceSwitch() {
        if (modelPackage == null) {
            modelPackage = GportinterfacePackage.eINSTANCE;
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
                GPortInterface gPortInterface = (GPortInterface)theEObject;
                T result = this.caseGPortInterface(gPortInterface);
                if (result == null) {
                    result = this.caseGPackageableElement(gPortInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gPortInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gPortInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gPortInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GSenderReceiverInterface gSenderReceiverInterface = (GSenderReceiverInterface)theEObject;
                T result = this.caseGSenderReceiverInterface(gSenderReceiverInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gSenderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gSenderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSenderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSenderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gSenderReceiverInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GClientServerInterface gClientServerInterface = (GClientServerInterface)theEObject;
                T result = this.caseGClientServerInterface(gClientServerInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gClientServerInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gClientServerInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gClientServerInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gClientServerInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gClientServerInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GParameterInterface gParameterInterface = (GParameterInterface)theEObject;
                T result = this.caseGParameterInterface(gParameterInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gParameterInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gParameterInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gParameterInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gParameterInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gParameterInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GNvDataInterface gNvDataInterface = (GNvDataInterface)theEObject;
                T result = this.caseGNvDataInterface(gNvDataInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gNvDataInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gNvDataInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gNvDataInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gNvDataInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gNvDataInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GModeSwitchInterface gModeSwitchInterface = (GModeSwitchInterface)theEObject;
                T result = this.caseGModeSwitchInterface(gModeSwitchInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gModeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gModeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gModeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gModeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gModeSwitchInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GTriggerInterface gTriggerInterface = (GTriggerInterface)theEObject;
                T result = this.caseGTriggerInterface(gTriggerInterface);
                if (result == null) {
                    result = this.caseGPortInterface(gTriggerInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gTriggerInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gTriggerInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(gTriggerInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(gTriggerInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GArgumentDataPrototype gArgumentDataPrototype = (GArgumentDataPrototype)theEObject;
                T result = this.caseGArgumentDataPrototype(gArgumentDataPrototype);
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(gArgumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(gArgumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gArgumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gArgumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gArgumentDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GClientServerOperation gClientServerOperation = (GClientServerOperation)theEObject;
                T result = this.caseGClientServerOperation(gClientServerOperation);
                if (result == null) {
                    result = this.caseGIdentifiable(gClientServerOperation);
                }
                if (result == null) {
                    result = this.caseGReferrable(gClientServerOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(gClientServerOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GApplicationError gApplicationError = (GApplicationError)theEObject;
                T result = this.caseGApplicationError(gApplicationError);
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationError);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationError);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationError);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGPortInterface(GPortInterface object) {
        return null;
    }

    public T caseGSenderReceiverInterface(GSenderReceiverInterface object) {
        return null;
    }

    public T caseGClientServerInterface(GClientServerInterface object) {
        return null;
    }

    public T caseGParameterInterface(GParameterInterface object) {
        return null;
    }

    public T caseGNvDataInterface(GNvDataInterface object) {
        return null;
    }

    public T caseGModeSwitchInterface(GModeSwitchInterface object) {
        return null;
    }

    public T caseGTriggerInterface(GTriggerInterface object) {
        return null;
    }

    public T caseGArgumentDataPrototype(GArgumentDataPrototype object) {
        return null;
    }

    public T caseGClientServerOperation(GClientServerOperation object) {
        return null;
    }

    public T caseGApplicationError(GApplicationError object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

