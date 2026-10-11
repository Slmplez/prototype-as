/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseArCalprmRefCalprmElementPrototype(ArCalprmRefCalprmElementPrototype object) {
            return InstancerefAdapterFactory.this.createArCalprmRefCalprmElementPrototypeAdapter();
        }

        @Override
        public Adapter caseCalprmAccessCalprmElementPrototype(CalprmAccessCalprmElementPrototype object) {
            return InstancerefAdapterFactory.this.createCalprmAccessCalprmElementPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGParameterInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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

    public Adapter createArCalprmRefCalprmElementPrototypeAdapter() {
        return null;
    }

    public Adapter createCalprmAccessCalprmElementPrototypeAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGParameterInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

