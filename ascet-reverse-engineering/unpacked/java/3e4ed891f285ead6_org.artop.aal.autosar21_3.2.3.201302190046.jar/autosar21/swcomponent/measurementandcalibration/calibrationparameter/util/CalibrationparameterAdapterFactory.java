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
package autosar21.swcomponent.measurementandcalibration.calibrationparameter.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmValueAxisLabels;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.util.CalibrationparameterSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CalibrationparameterAdapterFactory
extends AdapterFactoryImpl {
    protected static CalibrationparameterPackage modelPackage;
    protected CalibrationparameterSwitch<Adapter> modelSwitch = new CalibrationparameterSwitch<Adapter>(){

        @Override
        public Adapter caseSwCalprmAxis(SwCalprmAxis object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisAxis(SwCalprmAxisAxis object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisAxisAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisCommonAxisAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisIndividualAxisAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisSet(SwCalprmAxisSet object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisSetAdapter();
        }

        @Override
        public Adapter caseSwCalprmValueAxisLabels(SwCalprmValueAxisLabels object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmValueAxisLabelsAdapter();
        }

        @Override
        public Adapter caseSwCalprm(SwCalprm object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CalibrationparameterAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CalibrationparameterAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CalibrationparameterAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CalibrationparameterAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CalibrationparameterAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CalibrationparameterAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CalibrationparameterAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return CalibrationparameterAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CalibrationparameterAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CalibrationparameterAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CalibrationparameterAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CalibrationparameterPackage.eINSTANCE;
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

    public Adapter createSwCalprmAxisAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisAxisAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisCommonAxisAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisIndividualAxisAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisSetAdapter() {
        return null;
    }

    public Adapter createSwCalprmValueAxisLabelsAdapter() {
        return null;
    }

    public Adapter createSwCalprmAdapter() {
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

