/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  gautosar.gswcomponents.gportinterface.GNvDataInterface
 *  gautosar.gswcomponents.gportinterface.GParameterInterface
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  gautosar.gswcomponents.gportinterface.GTriggerInterface
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.portinterface.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import autosar40.swcomponent.portinterface.ClientServerInterfaceMapping;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ClientServerOperationMapping;
import autosar40.swcomponent.portinterface.DataInterface;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.ImplementationDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import autosar40.swcomponent.portinterface.ModeInterfaceMapping;
import autosar40.swcomponent.portinterface.ModeSwitchInterface;
import autosar40.swcomponent.portinterface.NvDataInterface;
import autosar40.swcomponent.portinterface.ParameterInterface;
import autosar40.swcomponent.portinterface.PortInterface;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMappingSet;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.SubElementRef;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import autosar40.swcomponent.portinterface.TriggerInterface;
import autosar40.swcomponent.portinterface.TriggerInterfaceMapping;
import autosar40.swcomponent.portinterface.VariableAndParameterInterfaceMapping;
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
                ClientServerOperation clientServerOperation = (ClientServerOperation)theEObject;
                T result = this.caseClientServerOperation(clientServerOperation);
                if (result == null) {
                    result = this.caseAtpStructureElement(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseGClientServerOperation(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseAtpFeature(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseReferrable(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseGReferrable(clientServerOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ArgumentDataPrototype argumentDataPrototype = (ArgumentDataPrototype)theEObject;
                T result = this.caseArgumentDataPrototype(argumentDataPrototype);
                if (result == null) {
                    result = this.caseAutosarDataPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGArgumentDataPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseDataPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(argumentDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ApplicationError applicationError = (ApplicationError)theEObject;
                T result = this.caseApplicationError(applicationError);
                if (result == null) {
                    result = this.caseIdentifiable(applicationError);
                }
                if (result == null) {
                    result = this.caseGApplicationError(applicationError);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationError);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationError);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationError);
                }
                if (result == null) {
                    result = this.caseARObject(applicationError);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationError);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationError);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PortInterfaceMapping portInterfaceMapping = (PortInterfaceMapping)theEObject;
                T result = this.casePortInterfaceMapping(portInterfaceMapping);
                if (result == null) {
                    result = this.caseIdentifiable(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseARObject(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(portInterfaceMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ApplicationCompositeDataTypeSubElementRef applicationCompositeDataTypeSubElementRef = (ApplicationCompositeDataTypeSubElementRef)theEObject;
                T result = this.caseApplicationCompositeDataTypeSubElementRef(applicationCompositeDataTypeSubElementRef);
                if (result == null) {
                    result = this.caseSubElementRef(applicationCompositeDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.caseARObject(applicationCompositeDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationCompositeDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SubElementRef subElementRef = (SubElementRef)theEObject;
                T result = this.caseSubElementRef(subElementRef);
                if (result == null) {
                    result = this.caseARObject(subElementRef);
                }
                if (result == null) {
                    result = this.caseGARObject(subElementRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DataInterface dataInterface = (DataInterface)theEObject;
                T result = this.caseDataInterface(dataInterface);
                if (result == null) {
                    result = this.casePortInterface(dataInterface);
                }
                if (result == null) {
                    result = this.caseARElement(dataInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(dataInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(dataInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(dataInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(dataInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(dataInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(dataInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(dataInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dataInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dataInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dataInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(dataInterface);
                }
                if (result == null) {
                    result = this.caseARObject(dataInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(dataInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(dataInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ImplementationDataTypeSubElementRef implementationDataTypeSubElementRef = (ImplementationDataTypeSubElementRef)theEObject;
                T result = this.caseImplementationDataTypeSubElementRef(implementationDataTypeSubElementRef);
                if (result == null) {
                    result = this.caseSubElementRef(implementationDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.caseARObject(implementationDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationDataTypeSubElementRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ParameterInterface parameterInterface = (ParameterInterface)theEObject;
                T result = this.caseParameterInterface(parameterInterface);
                if (result == null) {
                    result = this.caseDataInterface(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGParameterInterface(parameterInterface);
                }
                if (result == null) {
                    result = this.casePortInterface(parameterInterface);
                }
                if (result == null) {
                    result = this.caseARElement(parameterInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(parameterInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(parameterInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(parameterInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(parameterInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(parameterInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseARObject(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(parameterInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SubElementMapping subElementMapping = (SubElementMapping)theEObject;
                T result = this.caseSubElementMapping(subElementMapping);
                if (result == null) {
                    result = this.caseARObject(subElementMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(subElementMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                TextTableMapping textTableMapping = (TextTableMapping)theEObject;
                T result = this.caseTextTableMapping(textTableMapping);
                if (result == null) {
                    result = this.caseARObject(textTableMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(textTableMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                TextTableValuePair textTableValuePair = (TextTableValuePair)theEObject;
                T result = this.caseTextTableValuePair(textTableValuePair);
                if (result == null) {
                    result = this.caseARObject(textTableValuePair);
                }
                if (result == null) {
                    result = this.caseGARObject(textTableValuePair);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                NvDataInterface nvDataInterface = (NvDataInterface)theEObject;
                T result = this.caseNvDataInterface(nvDataInterface);
                if (result == null) {
                    result = this.caseDataInterface(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGNvDataInterface(nvDataInterface);
                }
                if (result == null) {
                    result = this.casePortInterface(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseARElement(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(nvDataInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseARObject(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(nvDataInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(nvDataInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                InvalidationPolicy invalidationPolicy = (InvalidationPolicy)theEObject;
                T result = this.caseInvalidationPolicy(invalidationPolicy);
                if (result == null) {
                    result = this.caseARObject(invalidationPolicy);
                }
                if (result == null) {
                    result = this.caseGARObject(invalidationPolicy);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ModeSwitchInterface modeSwitchInterface = (ModeSwitchInterface)theEObject;
                T result = this.caseModeSwitchInterface(modeSwitchInterface);
                if (result == null) {
                    result = this.casePortInterface(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGModeSwitchInterface(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseARElement(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseARObject(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                SenderReceiverInterface senderReceiverInterface = (SenderReceiverInterface)theEObject;
                T result = this.caseSenderReceiverInterface(senderReceiverInterface);
                if (result == null) {
                    result = this.caseDataInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGSenderReceiverInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.casePortInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseARElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
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
                    result = this.caseAtpBlueprint(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(clientServerInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(clientServerInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                TriggerInterface triggerInterface = (TriggerInterface)theEObject;
                T result = this.caseTriggerInterface(triggerInterface);
                if (result == null) {
                    result = this.casePortInterface(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGTriggerInterface(triggerInterface);
                }
                if (result == null) {
                    result = this.caseARElement(triggerInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(triggerInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(triggerInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(triggerInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(triggerInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(triggerInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseARObject(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(triggerInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                PortInterfaceMappingSet portInterfaceMappingSet = (PortInterfaceMappingSet)theEObject;
                T result = this.casePortInterfaceMappingSet(portInterfaceMappingSet);
                if (result == null) {
                    result = this.caseARElement(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseReferrable(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseARObject(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.caseGARObject(portInterfaceMappingSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                VariableAndParameterInterfaceMapping variableAndParameterInterfaceMapping = (VariableAndParameterInterfaceMapping)theEObject;
                T result = this.caseVariableAndParameterInterfaceMapping(variableAndParameterInterfaceMapping);
                if (result == null) {
                    result = this.casePortInterfaceMapping(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseIdentifiable(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseARObject(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(variableAndParameterInterfaceMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                DataPrototypeMapping dataPrototypeMapping = (DataPrototypeMapping)theEObject;
                T result = this.caseDataPrototypeMapping(dataPrototypeMapping);
                if (result == null) {
                    result = this.caseARObject(dataPrototypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(dataPrototypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                ModeInterfaceMapping modeInterfaceMapping = (ModeInterfaceMapping)theEObject;
                T result = this.caseModeInterfaceMapping(modeInterfaceMapping);
                if (result == null) {
                    result = this.casePortInterfaceMapping(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseIdentifiable(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseARObject(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(modeInterfaceMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ClientServerInterfaceMapping clientServerInterfaceMapping = (ClientServerInterfaceMapping)theEObject;
                T result = this.caseClientServerInterfaceMapping(clientServerInterfaceMapping);
                if (result == null) {
                    result = this.casePortInterfaceMapping(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseIdentifiable(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerInterfaceMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                ClientServerOperationMapping clientServerOperationMapping = (ClientServerOperationMapping)theEObject;
                T result = this.caseClientServerOperationMapping(clientServerOperationMapping);
                if (result == null) {
                    result = this.caseARObject(clientServerOperationMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerOperationMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                TriggerInterfaceMapping triggerInterfaceMapping = (TriggerInterfaceMapping)theEObject;
                T result = this.caseTriggerInterfaceMapping(triggerInterfaceMapping);
                if (result == null) {
                    result = this.casePortInterfaceMapping(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseIdentifiable(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseARObject(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerInterfaceMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                PortInterface portInterface = (PortInterface)theEObject;
                T result = this.casePortInterface(portInterface);
                if (result == null) {
                    result = this.caseARElement(portInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(portInterface);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(portInterface);
                }
                if (result == null) {
                    result = this.caseAtpType(portInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(portInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(portInterface);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(portInterface);
                }
                if (result == null) {
                    result = this.caseCollectableElement(portInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(portInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portInterface);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portInterface);
                }
                if (result == null) {
                    result = this.caseReferrable(portInterface);
                }
                if (result == null) {
                    result = this.caseARObject(portInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable(portInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(portInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseClientServerOperation(ClientServerOperation object) {
        return null;
    }

    public T caseArgumentDataPrototype(ArgumentDataPrototype object) {
        return null;
    }

    public T caseApplicationError(ApplicationError object) {
        return null;
    }

    public T casePortInterfaceMapping(PortInterfaceMapping object) {
        return null;
    }

    public T caseApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef object) {
        return null;
    }

    public T caseSubElementRef(SubElementRef object) {
        return null;
    }

    public T caseDataInterface(DataInterface object) {
        return null;
    }

    public T caseImplementationDataTypeSubElementRef(ImplementationDataTypeSubElementRef object) {
        return null;
    }

    public T caseParameterInterface(ParameterInterface object) {
        return null;
    }

    public T caseSubElementMapping(SubElementMapping object) {
        return null;
    }

    public T caseTextTableMapping(TextTableMapping object) {
        return null;
    }

    public T caseTextTableValuePair(TextTableValuePair object) {
        return null;
    }

    public T caseNvDataInterface(NvDataInterface object) {
        return null;
    }

    public T caseInvalidationPolicy(InvalidationPolicy object) {
        return null;
    }

    public T caseModeSwitchInterface(ModeSwitchInterface object) {
        return null;
    }

    public T caseSenderReceiverInterface(SenderReceiverInterface object) {
        return null;
    }

    public T caseClientServerInterface(ClientServerInterface object) {
        return null;
    }

    public T caseTriggerInterface(TriggerInterface object) {
        return null;
    }

    public T casePortInterfaceMappingSet(PortInterfaceMappingSet object) {
        return null;
    }

    public T caseVariableAndParameterInterfaceMapping(VariableAndParameterInterfaceMapping object) {
        return null;
    }

    public T caseDataPrototypeMapping(DataPrototypeMapping object) {
        return null;
    }

    public T caseModeInterfaceMapping(ModeInterfaceMapping object) {
        return null;
    }

    public T caseClientServerInterfaceMapping(ClientServerInterfaceMapping object) {
        return null;
    }

    public T caseClientServerOperationMapping(ClientServerOperationMapping object) {
        return null;
    }

    public T caseTriggerInterfaceMapping(TriggerInterfaceMapping object) {
        return null;
    }

    public T casePortInterface(PortInterface object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseGClientServerOperation(GClientServerOperation object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseAutosarDataPrototype(AutosarDataPrototype object) {
        return null;
    }

    public T caseGArgumentDataPrototype(GArgumentDataPrototype object) {
        return null;
    }

    public T caseGApplicationError(GApplicationError object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseGPortInterface(GPortInterface object) {
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

    public T caseGSenderReceiverInterface(GSenderReceiverInterface object) {
        return null;
    }

    public T caseGClientServerInterface(GClientServerInterface object) {
        return null;
    }

    public T caseGTriggerInterface(GTriggerInterface object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

