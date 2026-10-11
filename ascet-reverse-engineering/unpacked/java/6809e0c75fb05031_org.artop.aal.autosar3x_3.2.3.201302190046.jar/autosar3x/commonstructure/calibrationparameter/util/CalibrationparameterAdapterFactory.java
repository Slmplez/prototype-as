/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.calibrationparameter.util;

import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar3x.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar3x.commonstructure.calibrationparameter.util.CalibrationparameterSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
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
        public Adapter caseSwCalprmAxisSet(SwCalprmAxisSet object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisSetAdapter();
        }

        @Override
        public Adapter caseSwCalprmValueAxisLabels(SwCalprmValueAxisLabels object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmValueAxisLabelsAdapter();
        }

        @Override
        public Adapter caseSwCalprmAxisTypeProps(SwCalprmAxisTypeProps object) {
            return CalibrationparameterAdapterFactory.this.createSwCalprmAxisTypePropsAdapter();
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
        public Adapter caseGARObject(GARObject object) {
            return CalibrationparameterAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CalibrationparameterAdapterFactory.this.createARObjectAdapter();
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

    public Adapter createSwCalprmAxisSetAdapter() {
        return null;
    }

    public Adapter createSwCalprmValueAxisLabelsAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisTypePropsAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisCommonAxisAdapter() {
        return null;
    }

    public Adapter createSwCalprmAxisIndividualAxisAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

