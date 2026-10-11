/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.portinterface.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortInterface;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.SenderReceiverInterface;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortinterfaceSwitch<T> {
    protected static PortinterfacePackage modelPackage;

    public PortinterfaceSwitch() {
        if (modelPackage == null) {
            modelPackage = PortinterfacePackage.eINSTANCE;
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
                ModeDeclarationGroupPrototype modeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)theEObject;
                T result = this.caseModeDeclarationGroupPrototype(modeDeclarationGroupPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGModeDeclarationGroupPrototype(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(modeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                OperationPrototype operationPrototype = (OperationPrototype)theEObject;
                T result = this.caseOperationPrototype(operationPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(operationPrototype);
                }
                if (result == null) {
                    result = this.caseGClientServerOperation(operationPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(operationPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(operationPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)operationPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(operationPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ArgumentPrototype argumentPrototype = (ArgumentPrototype)theEObject;
                T result = this.caseArgumentPrototype(argumentPrototype);
                if (result == null) {
                    result = this.caseDataPrototype(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGArgumentDataPrototype(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)argumentPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(argumentPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PortInterface portInterface = (PortInterface)theEObject;
                T result = this.casePortInterface(portInterface);
                if (result == null) {
                    result = this.caseARElement(portInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(portInterface);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(portInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(portInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(portInterface);
                }
                if (result == null) {
                    result = this.caseARObject(portInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)portInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(portInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ClientServerInterface clientServerInterface = (ClientServerInterface)theEObject;
                T result = this.caseClientServerInterface(clientServerInterface);
                if (result == null) {
                    result = this.casePortInterface(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGClientServerInterface(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseARElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SenderReceiverInterface senderReceiverInterface = (SenderReceiverInterface)theEObject;
                T result = this.caseSenderReceiverInterface(senderReceiverInterface);
                if (result == null) {
                    result = this.casePortInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGSenderReceiverInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGModeSwitchInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseARElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DataElementPrototype dataElementPrototype = (DataElementPrototype)theEObject;
                T result = this.caseDataElementPrototype(dataElementPrototype);
                if (result == null) {
                    result = this.caseDataPrototype(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGVariableDataPrototype(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataElementPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(dataElementPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype object) {
        return null;
    }

    public T caseOperationPrototype(OperationPrototype object) {
        return null;
    }

    public T caseArgumentPrototype(ArgumentPrototype object) {
        return null;
    }

    public T casePortInterface(PortInterface object) {
        return null;
    }

    public T caseClientServerInterface(ClientServerInterface object) {
        return null;
    }

    public T caseSenderReceiverInterface(SenderReceiverInterface object) {
        return null;
    }

    public T caseDataElementPrototype(DataElementPrototype object) {
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

    public T caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
        return null;
    }

    public T caseGClientServerOperation(GClientServerOperation object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseGArgumentDataPrototype(GArgumentDataPrototype object) {
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

    public T caseGPortInterface(GPortInterface object) {
        return null;
    }

    public T caseGClientServerInterface(GClientServerInterface object) {
        return null;
    }

    public T caseGSenderReceiverInterface(GSenderReceiverInterface object) {
        return null;
    }

    public T caseGModeSwitchInterface(GModeSwitchInterface object) {
        return null;
    }

    public T caseGVariableDataPrototype(GVariableDataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

