/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.infrastructure.autosar.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.util.AutosarSwitch;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AutosarAdapterFactory
extends AdapterFactoryImpl {
    protected static AutosarPackage modelPackage;
    protected AutosarSwitch<Adapter> modelSwitch = new AutosarSwitch<Adapter>(){

        @Override
        public Adapter caseARPackage(ARPackage object) {
            return AutosarAdapterFactory.this.createARPackageAdapter();
        }

        @Override
        public Adapter caseAUTOSAR(AUTOSAR object) {
            return AutosarAdapterFactory.this.createAUTOSARAdapter();
        }

        @Override
        public Adapter caseAUTOSARAllExtensionsMapEntry(Map.Entry<String, EObject> object) {
            return AutosarAdapterFactory.this.createAUTOSARAllExtensionsMapEntryAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AutosarAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AutosarAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AutosarAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AutosarAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AutosarAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGARPackage(GARPackage object) {
            return AutosarAdapterFactory.this.createGARPackageAdapter();
        }

        @Override
        public Adapter caseGAUTOSAR(GAUTOSAR object) {
            return AutosarAdapterFactory.this.createGAUTOSARAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AutosarAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AutosarAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AutosarPackage.eINSTANCE;
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

    public Adapter createARPackageAdapter() {
        return null;
    }

    public Adapter createAUTOSARAdapter() {
        return null;
    }

    public Adapter createAUTOSARAllExtensionsMapEntryAdapter() {
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

    public Adapter createGARPackageAdapter() {
        return null;
    }

    public Adapter createGAUTOSARAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

