/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gcomponents.GApplicationSwComponentType
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType
 *  gautosar.gswcomponents.gcomponents.GServiceSwComponentType
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.components.util;

import autosar40.commonstructure.implementation.ImplementationProps;
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
import autosar40.swcomponent.components.ApplicationSwComponentType;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.ComplexDeviceDriverSwComponentType;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.EcuAbstractionSwComponentType;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.ParameterSwComponentType;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.PortPrototypeRefConditional;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.SensorActuatorSwComponentType;
import autosar40.swcomponent.components.ServiceProxySwComponentType;
import autosar40.swcomponent.components.ServiceSwComponentType;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.components.SymbolProps;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GApplicationSwComponentType;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComponentsSwitch<T> {
    protected static ComponentsPackage modelPackage;

    public ComponentsSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentsPackage.eINSTANCE;
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
                ServiceProxySwComponentType serviceProxySwComponentType = (ServiceProxySwComponentType)theEObject;
                T result = this.caseServiceProxySwComponentType(serviceProxySwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceProxySwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AtomicSwComponentType atomicSwComponentType = (AtomicSwComponentType)theEObject;
                T result = this.caseAtomicSwComponentType(atomicSwComponentType);
                if (result == null) {
                    result = this.caseSwComponentType(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(atomicSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwComponentType swComponentType = (SwComponentType)theEObject;
                T result = this.caseSwComponentType(swComponentType);
                if (result == null) {
                    result = this.caseARElement(swComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(swComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(swComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(swComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(swComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(swComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(swComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(swComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(swComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(swComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PortGroup portGroup = (PortGroup)theEObject;
                T result = this.casePortGroup(portGroup);
                if (result == null) {
                    result = this.caseAtpStructureElement(portGroup);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(portGroup);
                }
                if (result == null) {
                    result = this.caseAtpFeature(portGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(portGroup);
                }
                if (result == null) {
                    result = this.caseARObject(portGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(portGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(portGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                PPortPrototype pPortPrototype = (PPortPrototype)theEObject;
                T result = this.casePPortPrototype(pPortPrototype);
                if (result == null) {
                    result = this.casePortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPPortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(pPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                RPortPrototype rPortPrototype = (RPortPrototype)theEObject;
                T result = this.caseRPortPrototype(rPortPrototype);
                if (result == null) {
                    result = this.casePortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGRPortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(rPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PortPrototypeRefConditional portPrototypeRefConditional = (PortPrototypeRefConditional)theEObject;
                T result = this.casePortPrototypeRefConditional(portPrototypeRefConditional);
                if (result == null) {
                    result = this.caseARObject(portPrototypeRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototypeRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SymbolProps symbolProps = (SymbolProps)theEObject;
                T result = this.caseSymbolProps(symbolProps);
                if (result == null) {
                    result = this.caseImplementationProps(symbolProps);
                }
                if (result == null) {
                    result = this.caseReferrable(symbolProps);
                }
                if (result == null) {
                    result = this.caseARObject(symbolProps);
                }
                if (result == null) {
                    result = this.caseGReferrable(symbolProps);
                }
                if (result == null) {
                    result = this.caseGARObject(symbolProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ApplicationSwComponentType applicationSwComponentType = (ApplicationSwComponentType)theEObject;
                T result = this.caseApplicationSwComponentType(applicationSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGApplicationSwComponentType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ComplexDeviceDriverSwComponentType complexDeviceDriverSwComponentType = (ComplexDeviceDriverSwComponentType)theEObject;
                T result = this.caseComplexDeviceDriverSwComponentType(complexDeviceDriverSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(complexDeviceDriverSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                EcuAbstractionSwComponentType ecuAbstractionSwComponentType = (EcuAbstractionSwComponentType)theEObject;
                T result = this.caseEcuAbstractionSwComponentType(ecuAbstractionSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuAbstractionSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                NvBlockSwComponentType nvBlockSwComponentType = (NvBlockSwComponentType)theEObject;
                T result = this.caseNvBlockSwComponentType(nvBlockSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(nvBlockSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                ParameterSwComponentType parameterSwComponentType = (ParameterSwComponentType)theEObject;
                T result = this.caseParameterSwComponentType(parameterSwComponentType);
                if (result == null) {
                    result = this.caseSwComponentType(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SensorActuatorSwComponentType sensorActuatorSwComponentType = (SensorActuatorSwComponentType)theEObject;
                T result = this.caseSensorActuatorSwComponentType(sensorActuatorSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSensorActuatorSwComponentType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(sensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ServiceSwComponentType serviceSwComponentType = (ServiceSwComponentType)theEObject;
                T result = this.caseServiceSwComponentType(serviceSwComponentType);
                if (result == null) {
                    result = this.caseAtomicSwComponentType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGServiceSwComponentType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseSwComponentType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                PortPrototype portPrototype = (PortPrototype)theEObject;
                T result = this.casePortPrototype(portPrototype);
                if (result == null) {
                    result = this.caseAtpBlueprintable(portPrototype);
                }
                if (result == null) {
                    result = this.caseAtpPrototype(portPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(portPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(portPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(portPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(portPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(portPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(portPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(portPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseServiceProxySwComponentType(ServiceProxySwComponentType object) {
        return null;
    }

    public T caseAtomicSwComponentType(AtomicSwComponentType object) {
        return null;
    }

    public T caseSwComponentType(SwComponentType object) {
        return null;
    }

    public T casePortGroup(PortGroup object) {
        return null;
    }

    public T casePPortPrototype(PPortPrototype object) {
        return null;
    }

    public T caseRPortPrototype(RPortPrototype object) {
        return null;
    }

    public T casePortPrototypeRefConditional(PortPrototypeRefConditional object) {
        return null;
    }

    public T caseSymbolProps(SymbolProps object) {
        return null;
    }

    public T caseApplicationSwComponentType(ApplicationSwComponentType object) {
        return null;
    }

    public T caseComplexDeviceDriverSwComponentType(ComplexDeviceDriverSwComponentType object) {
        return null;
    }

    public T caseEcuAbstractionSwComponentType(EcuAbstractionSwComponentType object) {
        return null;
    }

    public T caseNvBlockSwComponentType(NvBlockSwComponentType object) {
        return null;
    }

    public T caseParameterSwComponentType(ParameterSwComponentType object) {
        return null;
    }

    public T caseSensorActuatorSwComponentType(SensorActuatorSwComponentType object) {
        return null;
    }

    public T caseServiceSwComponentType(ServiceSwComponentType object) {
        return null;
    }

    public T casePortPrototype(PortPrototype object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T caseGAtomicSwComponentType(GAtomicSwComponentType object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseGPortPrototype(GPortPrototype object) {
        return null;
    }

    public T caseGPPortPrototype(GPPortPrototype object) {
        return null;
    }

    public T caseGRPortPrototype(GRPortPrototype object) {
        return null;
    }

    public T caseImplementationProps(ImplementationProps object) {
        return null;
    }

    public T caseGApplicationSwComponentType(GApplicationSwComponentType object) {
        return null;
    }

    public T caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
        return null;
    }

    public T caseGServiceSwComponentType(GServiceSwComponentType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

