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
package autosar40.commonstructure.calibrationvalue.util;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.commonstructure.calibrationvalue.util.CalibrationvalueSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CalibrationvalueAdapterFactory
extends AdapterFactoryImpl {
    protected static CalibrationvaluePackage modelPackage;
    protected CalibrationvalueSwitch<Adapter> modelSwitch = new CalibrationvalueSwitch<Adapter>(){

        @Override
        public Adapter caseSwAxisCont(SwAxisCont object) {
            return CalibrationvalueAdapterFactory.this.createSwAxisContAdapter();
        }

        @Override
        public Adapter caseSwValueCont(SwValueCont object) {
            return CalibrationvalueAdapterFactory.this.createSwValueContAdapter();
        }

        @Override
        public Adapter caseValueGroup(ValueGroup object) {
            return CalibrationvalueAdapterFactory.this.createValueGroupAdapter();
        }

        @Override
        public Adapter caseSwValues(SwValues object) {
            return CalibrationvalueAdapterFactory.this.createSwValuesAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CalibrationvalueAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CalibrationvalueAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CalibrationvalueAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CalibrationvalueAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CalibrationvaluePackage.eINSTANCE;
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

    public Adapter createSwAxisContAdapter() {
        return null;
    }

    public Adapter createSwValueContAdapter() {
        return null;
    }

    public Adapter createValueGroupAdapter() {
        return null;
    }

    public Adapter createSwValuesAdapter() {
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

