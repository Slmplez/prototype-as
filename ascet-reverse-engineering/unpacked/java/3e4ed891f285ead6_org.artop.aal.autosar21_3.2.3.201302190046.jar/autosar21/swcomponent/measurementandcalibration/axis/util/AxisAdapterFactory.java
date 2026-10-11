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
package autosar21.swcomponent.measurementandcalibration.axis.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import autosar21.swcomponent.measurementandcalibration.axis.util.AxisSwitch;
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
        public Adapter caseSwGenericAxisParam(SwGenericAxisParam object) {
            return AxisAdapterFactory.this.createSwGenericAxisParamAdapter();
        }

        @Override
        public Adapter caseSwGenericAxisParamType(SwGenericAxisParamType object) {
            return AxisAdapterFactory.this.createSwGenericAxisParamTypeAdapter();
        }

        @Override
        public Adapter caseSwAxisType(SwAxisType object) {
            return AxisAdapterFactory.this.createSwAxisTypeAdapter();
        }

        @Override
        public Adapter caseSwAxisIndividual(SwAxisIndividual object) {
            return AxisAdapterFactory.this.createSwAxisIndividualAdapter();
        }

        @Override
        public Adapter caseSwAxisGrouped(SwAxisGrouped object) {
            return AxisAdapterFactory.this.createSwAxisGroupedAdapter();
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
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AxisAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AxisAdapterFactory.this.createIdentifiableAdapter();
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
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return AxisAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return AxisAdapterFactory.this.createARElementAdapter();
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

    public Adapter createSwGenericAxisParamAdapter() {
        return null;
    }

    public Adapter createSwGenericAxisParamTypeAdapter() {
        return null;
    }

    public Adapter createSwAxisTypeAdapter() {
        return null;
    }

    public Adapter createSwAxisIndividualAdapter() {
        return null;
    }

    public Adapter createSwAxisGroupedAdapter() {
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

