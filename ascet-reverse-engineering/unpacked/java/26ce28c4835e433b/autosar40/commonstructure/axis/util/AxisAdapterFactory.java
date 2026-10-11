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
package autosar40.commonstructure.axis.util;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwAxisGrouped;
import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.axis.util.AxisSwitch;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
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

public class AxisAdapterFactory
extends AdapterFactoryImpl {
    protected static AxisPackage modelPackage;
    protected AxisSwitch<Adapter> modelSwitch = new AxisSwitch<Adapter>(){

        @Override
        public Adapter caseSwAxisGeneric(SwAxisGeneric object) {
            return AxisAdapterFactory.this.createSwAxisGenericAdapter();
        }

        @Override
        public Adapter caseSwAxisType(SwAxisType object) {
            return AxisAdapterFactory.this.createSwAxisTypeAdapter();
        }

        @Override
        public Adapter caseSwGenericAxisParam(SwGenericAxisParam object) {
            return AxisAdapterFactory.this.createSwGenericAxisParamAdapter();
        }

        @Override
        public Adapter caseSwAxisGrouped(SwAxisGrouped object) {
            return AxisAdapterFactory.this.createSwAxisGroupedAdapter();
        }

        @Override
        public Adapter caseSwAxisIndividual(SwAxisIndividual object) {
            return AxisAdapterFactory.this.createSwAxisIndividualAdapter();
        }

        @Override
        public Adapter caseSwGenericAxisParamType(SwGenericAxisParamType object) {
            return AxisAdapterFactory.this.createSwGenericAxisParamTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AxisAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AxisAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AxisAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return AxisAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return AxisAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AxisAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AxisAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return AxisAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return AxisAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return AxisAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return AxisAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisTypeProps(SwCalprmAxisTypeProps object) {
            return AxisAdapterFactory.this.createSwCalprmAxisTypePropsAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AxisAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AxisAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AxisPackage.eINSTANCE;
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

    public Adapter createSwAxisGenericAdapter() {
        return null;
    }

    public Adapter createSwAxisTypeAdapter() {
        return null;
    }

    public Adapter createSwGenericAxisParamAdapter() {
        return null;
    }

    public Adapter createSwAxisGroupedAdapter() {
        return null;
    }

    public Adapter createSwAxisIndividualAdapter() {
        return null;
    }

    public Adapter createSwGenericAxisParamTypeAdapter() {
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

    public Adapter createSwCalprmAxisTypePropsAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

