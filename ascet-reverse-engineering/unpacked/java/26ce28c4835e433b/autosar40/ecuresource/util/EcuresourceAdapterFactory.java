/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecuresource.util;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwElementRefConditional;
import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.ecuresource.HwPinGroupContent;
import autosar40.ecuresource.util.EcuresourceSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EcuresourceAdapterFactory
extends AdapterFactoryImpl {
    protected static EcuresourcePackage modelPackage;
    protected EcuresourceSwitch<Adapter> modelSwitch = new EcuresourceSwitch<Adapter>(){

        @Override
        public Adapter caseHwDescriptionEntity(HwDescriptionEntity object) {
            return EcuresourceAdapterFactory.this.createHwDescriptionEntityAdapter();
        }

        @Override
        public Adapter caseHwElementConnector(HwElementConnector object) {
            return EcuresourceAdapterFactory.this.createHwElementConnectorAdapter();
        }

        @Override
        public Adapter caseHwPinGroupConnector(HwPinGroupConnector object) {
            return EcuresourceAdapterFactory.this.createHwPinGroupConnectorAdapter();
        }

        @Override
        public Adapter caseHwPinGroup(HwPinGroup object) {
            return EcuresourceAdapterFactory.this.createHwPinGroupAdapter();
        }

        @Override
        public Adapter caseHwPinGroupContent(HwPinGroupContent object) {
            return EcuresourceAdapterFactory.this.createHwPinGroupContentAdapter();
        }

        @Override
        public Adapter caseHwPin(HwPin object) {
            return EcuresourceAdapterFactory.this.createHwPinAdapter();
        }

        @Override
        public Adapter caseHwPinConnector(HwPinConnector object) {
            return EcuresourceAdapterFactory.this.createHwPinConnectorAdapter();
        }

        @Override
        public Adapter caseHwElementRefConditional(HwElementRefConditional object) {
            return EcuresourceAdapterFactory.this.createHwElementRefConditionalAdapter();
        }

        @Override
        public Adapter caseHwElement(HwElement object) {
            return EcuresourceAdapterFactory.this.createHwElementAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EcuresourceAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EcuresourceAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EcuresourceAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EcuresourceAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseDescribable(Describable object) {
            return EcuresourceAdapterFactory.this.createDescribableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EcuresourceAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EcuresourceAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EcuresourceAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return EcuresourceAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EcuresourceAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EcuresourceAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EcuresourceAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcuresourceAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcuresourceAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcuresourcePackage.eINSTANCE;
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

    public Adapter createHwDescriptionEntityAdapter() {
        return null;
    }

    public Adapter createHwElementConnectorAdapter() {
        return null;
    }

    public Adapter createHwPinGroupConnectorAdapter() {
        return null;
    }

    public Adapter createHwPinGroupAdapter() {
        return null;
    }

    public Adapter createHwPinGroupContentAdapter() {
        return null;
    }

    public Adapter createHwPinAdapter() {
        return null;
    }

    public Adapter createHwPinConnectorAdapter() {
        return null;
    }

    public Adapter createHwElementRefConditionalAdapter() {
        return null;
    }

    public Adapter createHwElementAdapter() {
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

    public Adapter createDescribableAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

