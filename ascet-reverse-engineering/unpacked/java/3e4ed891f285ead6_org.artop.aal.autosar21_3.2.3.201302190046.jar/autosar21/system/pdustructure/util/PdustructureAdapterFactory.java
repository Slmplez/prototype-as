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
package autosar21.system.pdustructure.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import autosar21.system.pdustructure.util.PdustructureSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class PdustructureAdapterFactory
extends AdapterFactoryImpl {
    protected static PdustructurePackage modelPackage;
    protected PdustructureSwitch<Adapter> modelSwitch = new PdustructureSwitch<Adapter>(){

        @Override
        public Adapter caseMultiplexer(Multiplexer object) {
            return PdustructureAdapterFactory.this.createMultiplexerAdapter();
        }

        @Override
        public Adapter caseSubPDU(SubPDU object) {
            return PdustructureAdapterFactory.this.createSubPDUAdapter();
        }

        @Override
        public Adapter caseSignalPosition(SignalPosition object) {
            return PdustructureAdapterFactory.this.createSignalPositionAdapter();
        }

        @Override
        public Adapter casePDUType(PDUType object) {
            return PdustructureAdapterFactory.this.createPDUTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return PdustructureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return PdustructureAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return PdustructureAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return PdustructureAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return PdustructureAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return PdustructureAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return PdustructureAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return PdustructureAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return PdustructureAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return PdustructureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public PdustructureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = PdustructurePackage.eINSTANCE;
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

    public Adapter createMultiplexerAdapter() {
        return null;
    }

    public Adapter createSubPDUAdapter() {
        return null;
    }

    public Adapter createSignalPositionAdapter() {
        return null;
    }

    public Adapter createPDUTypeAdapter() {
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

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

