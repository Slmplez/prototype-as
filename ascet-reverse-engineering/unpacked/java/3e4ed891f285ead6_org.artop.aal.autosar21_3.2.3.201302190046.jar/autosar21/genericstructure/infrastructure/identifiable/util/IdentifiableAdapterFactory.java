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
package autosar21.genericstructure.infrastructure.identifiable.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.genericstructure.infrastructure.identifiable.util.IdentifiableSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class IdentifiableAdapterFactory
extends AdapterFactoryImpl {
    protected static IdentifiablePackage modelPackage;
    protected IdentifiableSwitch<Adapter> modelSwitch = new IdentifiableSwitch<Adapter>(){

        @Override
        public Adapter caseARElement(ARElement object) {
            return IdentifiableAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return IdentifiableAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiableAllExtensionsMapEntry(Map.Entry<String, EObject> object) {
            return IdentifiableAdapterFactory.this.createIdentifiableAllExtensionsMapEntryAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return IdentifiableAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return IdentifiableAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return IdentifiableAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return IdentifiableAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return IdentifiableAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return IdentifiableAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return IdentifiableAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return IdentifiableAdapterFactory.this.createEObjectAdapter();
        }
    };

    public IdentifiableAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = IdentifiablePackage.eINSTANCE;
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

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAllExtensionsMapEntryAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

