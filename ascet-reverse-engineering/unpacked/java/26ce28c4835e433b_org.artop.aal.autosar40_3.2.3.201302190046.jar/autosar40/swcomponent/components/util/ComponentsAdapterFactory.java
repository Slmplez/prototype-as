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
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.swcomponent.components.util.ComponentsSwitch;
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
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentsAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentsPackage modelPackage;
    protected ComponentsSwitch<Adapter> modelSwitch = new ComponentsSwitch<Adapter>(){

        @Override
        public Adapter caseServiceProxySwComponentType(ServiceProxySwComponentType object) {
            return ComponentsAdapterFactory.this.createServiceProxySwComponentTypeAdapter();
        }

        @Override
        public Adapter caseAtomicSwComponentType(AtomicSwComponentType object) {
            return ComponentsAdapterFactory.this.createAtomicSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseSwComponentType(SwComponentType object) {
            return ComponentsAdapterFactory.this.createSwComponentTypeAdapter();
        }

        @Override
        public Adapter casePortGroup(PortGroup object) {
            return ComponentsAdapterFactory.this.createPortGroupAdapter();
        }

        @Override
        public Adapter casePPortPrototype(PPortPrototype object) {
            return ComponentsAdapterFactory.this.createPPortPrototypeAdapter();
        }

        @Override
        public Adapter caseRPortPrototype(RPortPrototype object) {
            return ComponentsAdapterFactory.this.createRPortPrototypeAdapter();
        }

        @Override
        public Adapter casePortPrototypeRefConditional(PortPrototypeRefConditional object) {
            return ComponentsAdapterFactory.this.createPortPrototypeRefConditionalAdapter();
        }

        @Override
        public Adapter caseSymbolProps(SymbolProps object) {
            return ComponentsAdapterFactory.this.createSymbolPropsAdapter();
        }

        @Override
        public Adapter caseApplicationSwComponentType(ApplicationSwComponentType object) {
            return ComponentsAdapterFactory.this.createApplicationSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseComplexDeviceDriverSwComponentType(ComplexDeviceDriverSwComponentType object) {
            return ComponentsAdapterFactory.this.createComplexDeviceDriverSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseEcuAbstractionSwComponentType(EcuAbstractionSwComponentType object) {
            return ComponentsAdapterFactory.this.createEcuAbstractionSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseNvBlockSwComponentType(NvBlockSwComponentType object) {
            return ComponentsAdapterFactory.this.createNvBlockSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseParameterSwComponentType(ParameterSwComponentType object) {
            return ComponentsAdapterFactory.this.createParameterSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseSensorActuatorSwComponentType(SensorActuatorSwComponentType object) {
            return ComponentsAdapterFactory.this.createSensorActuatorSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseServiceSwComponentType(ServiceSwComponentType object) {
            return ComponentsAdapterFactory.this.createServiceSwComponentTypeAdapter();
        }

        @Override
        public Adapter casePortPrototype(PortPrototype object) {
            return ComponentsAdapterFactory.this.createPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ComponentsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ComponentsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ComponentsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ComponentsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ComponentsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ComponentsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ComponentsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return ComponentsAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ComponentsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ComponentsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ComponentsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return ComponentsAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return ComponentsAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return ComponentsAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return ComponentsAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return ComponentsAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGAtomicSwComponentType(GAtomicSwComponentType object) {
            return ComponentsAdapterFactory.this.createGAtomicSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return ComponentsAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return ComponentsAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return ComponentsAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseGPortPrototype(GPortPrototype object) {
            return ComponentsAdapterFactory.this.createGPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGPPortPrototype(GPPortPrototype object) {
            return ComponentsAdapterFactory.this.createGPPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGRPortPrototype(GRPortPrototype object) {
            return ComponentsAdapterFactory.this.createGRPortPrototypeAdapter();
        }

        @Override
        public Adapter caseImplementationProps(ImplementationProps object) {
            return ComponentsAdapterFactory.this.createImplementationPropsAdapter();
        }

        @Override
        public Adapter caseGApplicationSwComponentType(GApplicationSwComponentType object) {
            return ComponentsAdapterFactory.this.createGApplicationSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
            return ComponentsAdapterFactory.this.createGSensorActuatorSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGServiceSwComponentType(GServiceSwComponentType object) {
            return ComponentsAdapterFactory.this.createGServiceSwComponentTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentsPackage.eINSTANCE;
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

    public Adapter createServiceProxySwComponentTypeAdapter() {
        return null;
    }

    public Adapter createAtomicSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createPortGroupAdapter() {
        return null;
    }

    public Adapter createPPortPrototypeAdapter() {
        return null;
    }

    public Adapter createRPortPrototypeAdapter() {
        return null;
    }

    public Adapter createPortPrototypeRefConditionalAdapter() {
        return null;
    }

    public Adapter createSymbolPropsAdapter() {
        return null;
    }

    public Adapter createApplicationSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createComplexDeviceDriverSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createEcuAbstractionSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createNvBlockSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createParameterSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createSensorActuatorSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createServiceSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createPortPrototypeAdapter() {
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

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGAtomicSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createGPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGPPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGRPortPrototypeAdapter() {
        return null;
    }

    public Adapter createImplementationPropsAdapter() {
        return null;
    }

    public Adapter createGApplicationSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGSensorActuatorSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGServiceSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

