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
package autosar3x.swcomponent.endtoendprotection.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.swcomponent.endtoendprotection.util.EndtoendprotectionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class EndtoendprotectionAdapterFactory
extends AdapterFactoryImpl {
    protected static EndtoendprotectionPackage modelPackage;
    protected EndtoendprotectionSwitch<Adapter> modelSwitch = new EndtoendprotectionSwitch<Adapter>(){

        @Override
        public Adapter caseEndToEndDescription(EndToEndDescription object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndDescriptionAdapter();
        }

        @Override
        public Adapter caseEndToEndProtection(EndToEndProtection object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndProtectionAdapter();
        }

        @Override
        public Adapter caseEndToEndProtectionDataElementPrototype(EndToEndProtectionDataElementPrototype object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndProtectionDataElementPrototypeAdapter();
        }

        @Override
        public Adapter caseEndToEndProtectionDataElementPrototype_dataElement(EndToEndProtectionDataElementPrototype_dataElement object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndProtectionDataElementPrototype_dataElementAdapter();
        }

        @Override
        public Adapter caseEndToEndProtectionSet(EndToEndProtectionSet object) {
            return EndtoendprotectionAdapterFactory.this.createEndToEndProtectionSetAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EndtoendprotectionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EndtoendprotectionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EndtoendprotectionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EndtoendprotectionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EndtoendprotectionAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return EndtoendprotectionAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return EndtoendprotectionAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return EndtoendprotectionAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EndtoendprotectionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EndtoendprotectionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EndtoendprotectionPackage.eINSTANCE;
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

    public Adapter createEndToEndDescriptionAdapter() {
        return null;
    }

    public Adapter createEndToEndProtectionAdapter() {
        return null;
    }

    public Adapter createEndToEndProtectionDataElementPrototypeAdapter() {
        return null;
    }

    public Adapter createEndToEndProtectionDataElementPrototype_dataElementAdapter() {
        return null;
    }

    public Adapter createEndToEndProtectionSetAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

