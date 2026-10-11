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
package autosar40.system.fibex.fibex4multiplatform.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.ISignalMapping;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar40.system.fibex.fibex4multiplatform.util.Fibex4multiplatformSwitch;
import autosar40.system.fibex.fibexcore.FibexElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class Fibex4multiplatformAdapterFactory
extends AdapterFactoryImpl {
    protected static Fibex4multiplatformPackage modelPackage;
    protected Fibex4multiplatformSwitch<Adapter> modelSwitch = new Fibex4multiplatformSwitch<Adapter>(){

        @Override
        public Adapter caseDefaultValueElement(DefaultValueElement object) {
            return Fibex4multiplatformAdapterFactory.this.createDefaultValueElementAdapter();
        }

        @Override
        public Adapter caseFrameMapping(FrameMapping object) {
            return Fibex4multiplatformAdapterFactory.this.createFrameMappingAdapter();
        }

        @Override
        public Adapter caseGateway(Gateway object) {
            return Fibex4multiplatformAdapterFactory.this.createGatewayAdapter();
        }

        @Override
        public Adapter caseISignalMapping(ISignalMapping object) {
            return Fibex4multiplatformAdapterFactory.this.createISignalMappingAdapter();
        }

        @Override
        public Adapter caseIPduMapping(IPduMapping object) {
            return Fibex4multiplatformAdapterFactory.this.createIPduMappingAdapter();
        }

        @Override
        public Adapter caseTargetIPduRef(TargetIPduRef object) {
            return Fibex4multiplatformAdapterFactory.this.createTargetIPduRefAdapter();
        }

        @Override
        public Adapter casePduMappingDefaultValue(PduMappingDefaultValue object) {
            return Fibex4multiplatformAdapterFactory.this.createPduMappingDefaultValueAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return Fibex4multiplatformAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return Fibex4multiplatformAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return Fibex4multiplatformAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return Fibex4multiplatformAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return Fibex4multiplatformAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return Fibex4multiplatformAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return Fibex4multiplatformAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return Fibex4multiplatformAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return Fibex4multiplatformAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return Fibex4multiplatformAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return Fibex4multiplatformAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return Fibex4multiplatformAdapterFactory.this.createEObjectAdapter();
        }
    };

    public Fibex4multiplatformAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = Fibex4multiplatformPackage.eINSTANCE;
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

    public Adapter createDefaultValueElementAdapter() {
        return null;
    }

    public Adapter createFrameMappingAdapter() {
        return null;
    }

    public Adapter createGatewayAdapter() {
        return null;
    }

    public Adapter createISignalMappingAdapter() {
        return null;
    }

    public Adapter createIPduMappingAdapter() {
        return null;
    }

    public Adapter createTargetIPduRefAdapter() {
        return null;
    }

    public Adapter createPduMappingDefaultValueAdapter() {
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

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

