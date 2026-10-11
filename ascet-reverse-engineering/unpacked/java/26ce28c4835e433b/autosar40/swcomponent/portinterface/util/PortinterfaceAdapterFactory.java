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
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.swcomponent.portinterface.util.PortinterfaceSwitch;
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
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PortinterfaceAdapterFactory
extends AdapterFactoryImpl {
    protected static PortinterfacePackage modelPackage;
    protected PortinterfaceSwitch<Adapter> modelSwitch = new PortinterfaceSwitch<Adapter>(){

        @Override
        public Adapter caseClientServerOperation(ClientServerOperation object) {
            return PortinterfaceAdapterFactory.this.createClientServerOperationAdapter();
        }

        @Override
        public Adapter caseArgumentDataPrototype(ArgumentDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createArgumentDataPrototypeAdapter();
        }

        @Override
        public Adapter caseApplicationError(ApplicationError object) {
            return PortinterfaceAdapterFactory.this.createApplicationErrorAdapter();
        }

        @Override
        public Adapter casePortInterfaceMapping(PortInterfaceMapping object) {
            return PortinterfaceAdapterFactory.this.createPortInterfaceMappingAdapter();
        }

        @Override
        public Adapter caseApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef object) {
            return PortinterfaceAdapterFactory.this.createApplicationCompositeDataTypeSubElementRefAdapter();
        }

        @Override
        public Adapter caseSubElementRef(SubElementRef object) {
            return PortinterfaceAdapterFactory.this.createSubElementRefAdapter();
        }

        @Override
        public Adapter caseDataInterface(DataInterface object) {
            return PortinterfaceAdapterFactory.this.createDataInterfaceAdapter();
        }

        @Override
        public Adapter caseImplementationDataTypeSubElementRef(ImplementationDataTypeSubElementRef object) {
            return PortinterfaceAdapterFactory.this.createImplementationDataTypeSubElementRefAdapter();
        }

        @Override
        public Adapter caseParameterInterface(ParameterInterface object) {
            return PortinterfaceAdapterFactory.this.createParameterInterfaceAdapter();
        }

        @Override
        public Adapter caseSubElementMapping(SubElementMapping object) {
            return PortinterfaceAdapterFactory.this.createSubElementMappingAdapter();
        }

        @Override
        public Adapter caseTextTableMapping(TextTableMapping object) {
            return PortinterfaceAdapterFactory.this.createTextTableMappingAdapter();
        }

        @Override
        public Adapter caseTextTableValuePair(TextTableValuePair object) {
            return PortinterfaceAdapterFactory.this.createTextTableValuePairAdapter();
        }

        @Override
        public Adapter caseNvDataInterface(NvDataInterface object) {
            return PortinterfaceAdapterFactory.this.createNvDataInterfaceAdapter();
        }

        @Override
        public Adapter caseInvalidationPolicy(InvalidationPolicy object) {
            return PortinterfaceAdapterFactory.this.createInvalidationPolicyAdapter();
        }

        @Override
        public Adapter caseModeSwitchInterface(ModeSwitchInterface object) {
            return PortinterfaceAdapterFactory.this.createModeSwitchInterfaceAdapter();
        }

        @Override
        public Adapter caseSenderReceiverInterface(SenderReceiverInterface object) {
            return PortinterfaceAdapterFactory.this.createSenderReceiverInterfaceAdapter();
        }

        @Override
        public Adapter caseClientServerInterface(ClientServerInterface object) {
            return PortinterfaceAdapterFactory.this.createClientServerInterfaceAdapter();
        }

        @Override
        public Adapter caseTriggerInterface(TriggerInterface object) {
            return PortinterfaceAdapterFactory.this.createTriggerInterfaceAdapter();
        }

        @Override
        public Adapter casePortInterfaceMappingSet(PortInterfaceMappingSet object) {
            return PortinterfaceAdapterFactory.this.createPortInterfaceMappingSetAdapter();
        }

        @Override
        public Adapter caseVariableAndParameterInterfaceMapping(VariableAndParameterInterfaceMapping object) {
            return PortinterfaceAdapterFactory.this.createVariableAndParameterInterfaceMappingAdapter();
        }

        @Override
        public Adapter caseDataPrototypeMapping(DataPrototypeMapping object) {
            return PortinterfaceAdapterFactory.this.createDataPrototypeMappingAdapter();
        }

        @Override
        public Adapter caseModeInterfaceMapping(ModeInterfaceMapping object) {
            return PortinterfaceAdapterFactory.this.createModeInterfaceMappingAdapter();
        }

        @Override
        public Adapter caseClientServerInterfaceMapping(ClientServerInterfaceMapping object) {
            return PortinterfaceAdapterFactory.this.createClientServerInterfaceMappingAdapter();
        }

        @Override
        public Adapter caseClientServerOperationMapping(ClientServerOperationMapping object) {
            return PortinterfaceAdapterFactory.this.createClientServerOperationMappingAdapter();
        }

        @Override
        public Adapter caseTriggerInterfaceMapping(TriggerInterfaceMapping object) {
            return PortinterfaceAdapterFactory.this.createTriggerInterfaceMappingAdapter();
        }

        @Override
        public Adapter casePortInterface(PortInterface object) {
            return PortinterfaceAdapterFactory.this.createPortInterfaceAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PortinterfaceAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PortinterfaceAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return PortinterfaceAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return PortinterfaceAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return PortinterfaceAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return PortinterfaceAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return PortinterfaceAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return PortinterfaceAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return PortinterfaceAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return PortinterfaceAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGClientServerOperation(GClientServerOperation object) {
            return PortinterfaceAdapterFactory.this.createGClientServerOperationAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return PortinterfaceAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return PortinterfaceAdapterFactory.this.createDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseAutosarDataPrototype(AutosarDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGArgumentDataPrototype(GArgumentDataPrototype object) {
            return PortinterfaceAdapterFactory.this.createGArgumentDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationError(GApplicationError object) {
            return PortinterfaceAdapterFactory.this.createGApplicationErrorAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return PortinterfaceAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return PortinterfaceAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return PortinterfaceAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return PortinterfaceAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return PortinterfaceAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return PortinterfaceAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return PortinterfaceAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGPortInterface(GPortInterface object) {
            return PortinterfaceAdapterFactory.this.createGPortInterfaceAdapter();
        }

        @Override
        public Adapter caseGParameterInterface(GParameterInterface object) {
            return PortinterfaceAdapterFactory.this.createGParameterInterfaceAdapter();
        }

        @Override
        public Adapter caseGNvDataInterface(GNvDataInterface object) {
            return PortinterfaceAdapterFactory.this.createGNvDataInterfaceAdapter();
        }

        @Override
        public Adapter caseGModeSwitchInterface(GModeSwitchInterface object) {
            return PortinterfaceAdapterFactory.this.createGModeSwitchInterfaceAdapter();
        }

        @Override
        public Adapter caseGSenderReceiverInterface(GSenderReceiverInterface object) {
            return PortinterfaceAdapterFactory.this.createGSenderReceiverInterfaceAdapter();
        }

        @Override
        public Adapter caseGClientServerInterface(GClientServerInterface object) {
            return PortinterfaceAdapterFactory.this.createGClientServerInterfaceAdapter();
        }

        @Override
        public Adapter caseGTriggerInterface(GTriggerInterface object) {
            return PortinterfaceAdapterFactory.this.createGTriggerInterfaceAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PortinterfaceAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PortinterfaceAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PortinterfacePackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createClientServerOperationAdapter() {
        return null;
    }

    public Adapter createArgumentDataPrototypeAdapter() {
        return null;
    }

    public Adapter createApplicationErrorAdapter() {
        return null;
    }

    public Adapter createPortInterfaceMappingAdapter() {
        return null;
    }

    public Adapter createApplicationCompositeDataTypeSubElementRefAdapter() {
        return null;
    }

    public Adapter createSubElementRefAdapter() {
        return null;
    }

    public Adapter createDataInterfaceAdapter() {
        return null;
    }

    public Adapter createImplementationDataTypeSubElementRefAdapter() {
        return null;
    }

    public Adapter createParameterInterfaceAdapter() {
        return null;
    }

    public Adapter createSubElementMappingAdapter() {
        return null;
    }

    public Adapter createTextTableMappingAdapter() {
        return null;
    }

    public Adapter createTextTableValuePairAdapter() {
        return null;
    }

    public Adapter createNvDataInterfaceAdapter() {
        return null;
    }

    public Adapter createInvalidationPolicyAdapter() {
        return null;
    }

    public Adapter createModeSwitchInterfaceAdapter() {
        return null;
    }

    public Adapter createSenderReceiverInterfaceAdapter() {
        return null;
    }

    public Adapter createClientServerInterfaceAdapter() {
        return null;
    }

    public Adapter createTriggerInterfaceAdapter() {
        return null;
    }

    public Adapter createPortInterfaceMappingSetAdapter() {
        return null;
    }

    public Adapter createVariableAndParameterInterfaceMappingAdapter() {
        return null;
    }

    public Adapter createDataPrototypeMappingAdapter() {
        return null;
    }

    public Adapter createModeInterfaceMappingAdapter() {
        return null;
    }

    public Adapter createClientServerInterfaceMappingAdapter() {
        return null;
    }

    public Adapter createClientServerOperationMappingAdapter() {
        return null;
    }

    public Adapter createTriggerInterfaceMappingAdapter() {
        return null;
    }

    public Adapter createPortInterfaceAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createGClientServerOperationAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGArgumentDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationErrorAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createGPortInterfaceAdapter() {
        return null;
    }

    public Adapter createGParameterInterfaceAdapter() {
        return null;
    }

    public Adapter createGNvDataInterfaceAdapter() {
        return null;
    }

    public Adapter createGModeSwitchInterfaceAdapter() {
        return null;
    }

    public Adapter createGSenderReceiverInterfaceAdapter() {
        return null;
    }

    public Adapter createGClientServerInterfaceAdapter() {
        return null;
    }

    public Adapter createGTriggerInterfaceAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

