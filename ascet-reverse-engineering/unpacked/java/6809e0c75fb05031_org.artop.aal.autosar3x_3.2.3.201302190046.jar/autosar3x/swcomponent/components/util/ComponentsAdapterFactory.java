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
package autosar3x.swcomponent.components.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import autosar3x.swcomponent.components.CalprmComponentType;
import autosar3x.swcomponent.components.ComplexDeviceDriverComponentType;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.EcuAbstractionComponentType;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar3x.swcomponent.components.ServiceComponentType;
import autosar3x.swcomponent.components.util.ComponentsSwitch;
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
        public Adapter caseApplicationSoftwareComponentType(ApplicationSoftwareComponentType object) {
            return ComponentsAdapterFactory.this.createApplicationSoftwareComponentTypeAdapter();
        }

        @Override
        public Adapter caseAtomicSoftwareComponentType(AtomicSoftwareComponentType object) {
            return ComponentsAdapterFactory.this.createAtomicSoftwareComponentTypeAdapter();
        }

        @Override
        public Adapter caseComponentType(ComponentType object) {
            return ComponentsAdapterFactory.this.createComponentTypeAdapter();
        }

        @Override
        public Adapter casePortPrototype(PortPrototype object) {
            return ComponentsAdapterFactory.this.createPortPrototypeAdapter();
        }

        @Override
        public Adapter caseRPortPrototype(RPortPrototype object) {
            return ComponentsAdapterFactory.this.createRPortPrototypeAdapter();
        }

        @Override
        public Adapter caseServiceComponentType(ServiceComponentType object) {
            return ComponentsAdapterFactory.this.createServiceComponentTypeAdapter();
        }

        @Override
        public Adapter casePortGroup(PortGroup object) {
            return ComponentsAdapterFactory.this.createPortGroupAdapter();
        }

        @Override
        public Adapter caseCalprmComponentType(CalprmComponentType object) {
            return ComponentsAdapterFactory.this.createCalprmComponentTypeAdapter();
        }

        @Override
        public Adapter caseComplexDeviceDriverComponentType(ComplexDeviceDriverComponentType object) {
            return ComponentsAdapterFactory.this.createComplexDeviceDriverComponentTypeAdapter();
        }

        @Override
        public Adapter caseEcuAbstractionComponentType(EcuAbstractionComponentType object) {
            return ComponentsAdapterFactory.this.createEcuAbstractionComponentTypeAdapter();
        }

        @Override
        public Adapter caseSensorActuatorSoftwareComponentType(SensorActuatorSoftwareComponentType object) {
            return ComponentsAdapterFactory.this.createSensorActuatorSoftwareComponentTypeAdapter();
        }

        @Override
        public Adapter casePPortPrototype(PPortPrototype object) {
            return ComponentsAdapterFactory.this.createPPortPrototypeAdapter();
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
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ComponentsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ComponentsAdapterFactory.this.createIdentifiableAdapter();
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
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return ComponentsAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGAtomicSwComponentType(GAtomicSwComponentType object) {
            return ComponentsAdapterFactory.this.createGAtomicSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationSwComponentType(GApplicationSwComponentType object) {
            return ComponentsAdapterFactory.this.createGApplicationSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGPortPrototype(GPortPrototype object) {
            return ComponentsAdapterFactory.this.createGPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGRPortPrototype(GRPortPrototype object) {
            return ComponentsAdapterFactory.this.createGRPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGServiceSwComponentType(GServiceSwComponentType object) {
            return ComponentsAdapterFactory.this.createGServiceSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
            return ComponentsAdapterFactory.this.createGSensorActuatorSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGPPortPrototype(GPPortPrototype object) {
            return ComponentsAdapterFactory.this.createGPPortPrototypeAdapter();
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

    public Adapter createApplicationSoftwareComponentTypeAdapter() {
        return null;
    }

    public Adapter createAtomicSoftwareComponentTypeAdapter() {
        return null;
    }

    public Adapter createComponentTypeAdapter() {
        return null;
    }

    public Adapter createPortPrototypeAdapter() {
        return null;
    }

    public Adapter createRPortPrototypeAdapter() {
        return null;
    }

    public Adapter createServiceComponentTypeAdapter() {
        return null;
    }

    public Adapter createPortGroupAdapter() {
        return null;
    }

    public Adapter createCalprmComponentTypeAdapter() {
        return null;
    }

    public Adapter createComplexDeviceDriverComponentTypeAdapter() {
        return null;
    }

    public Adapter createEcuAbstractionComponentTypeAdapter() {
        return null;
    }

    public Adapter createSensorActuatorSoftwareComponentTypeAdapter() {
        return null;
    }

    public Adapter createPPortPrototypeAdapter() {
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

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
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

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGAtomicSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGRPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGServiceSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGSensorActuatorSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGPPortPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

