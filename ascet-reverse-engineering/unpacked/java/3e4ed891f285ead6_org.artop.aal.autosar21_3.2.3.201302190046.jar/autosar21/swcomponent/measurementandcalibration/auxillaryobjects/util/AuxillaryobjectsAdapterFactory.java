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
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwAddrMethod;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwCodeSyntax;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroup;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutV;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRelatedConstrs;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.util.AuxillaryobjectsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AuxillaryobjectsAdapterFactory
extends AdapterFactoryImpl {
    protected static AuxillaryobjectsPackage modelPackage;
    protected AuxillaryobjectsSwitch<Adapter> modelSwitch = new AuxillaryobjectsSwitch<Adapter>(){

        @Override
        public Adapter caseSwAddrMethod(SwAddrMethod object) {
            return AuxillaryobjectsAdapterFactory.this.createSwAddrMethodAdapter();
        }

        @Override
        public Adapter caseSwCodeSyntax(SwCodeSyntax object) {
            return AuxillaryobjectsAdapterFactory.this.createSwCodeSyntaxAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutGroup(SwRecordLayoutGroup object) {
            return AuxillaryobjectsAdapterFactory.this.createSwRecordLayoutGroupAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutGroupContent(SwRecordLayoutGroupContent object) {
            return AuxillaryobjectsAdapterFactory.this.createSwRecordLayoutGroupContentAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutV(SwRecordLayoutV object) {
            return AuxillaryobjectsAdapterFactory.this.createSwRecordLayoutVAdapter();
        }

        @Override
        public Adapter caseSwRelatedConstrs(SwRelatedConstrs object) {
            return AuxillaryobjectsAdapterFactory.this.createSwRelatedConstrsAdapter();
        }

        @Override
        public Adapter caseSwRecordLayout(SwRecordLayout object) {
            return AuxillaryobjectsAdapterFactory.this.createSwRecordLayoutAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AuxillaryobjectsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AuxillaryobjectsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AuxillaryobjectsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AuxillaryobjectsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AuxillaryobjectsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return AuxillaryobjectsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return AuxillaryobjectsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return AuxillaryobjectsAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return AuxillaryobjectsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AuxillaryobjectsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AuxillaryobjectsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AuxillaryobjectsPackage.eINSTANCE;
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

    public Adapter createSwAddrMethodAdapter() {
        return null;
    }

    public Adapter createSwCodeSyntaxAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutGroupAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutGroupContentAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutVAdapter() {
        return null;
    }

    public Adapter createSwRelatedConstrsAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutAdapter() {
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

