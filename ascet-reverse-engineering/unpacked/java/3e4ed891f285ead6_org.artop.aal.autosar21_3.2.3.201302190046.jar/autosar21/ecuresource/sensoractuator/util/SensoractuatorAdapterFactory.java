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
package autosar21.ecuresource.sensoractuator.util;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.sensoractuator.ActuatorHW;
import autosar21.ecuresource.sensoractuator.DisplayHW;
import autosar21.ecuresource.sensoractuator.SensorActuatorHW;
import autosar21.ecuresource.sensoractuator.SensorHW;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.ecuresource.sensoractuator.util.SensoractuatorSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SensoractuatorAdapterFactory
extends AdapterFactoryImpl {
    protected static SensoractuatorPackage modelPackage;
    protected SensoractuatorSwitch<Adapter> modelSwitch = new SensoractuatorSwitch<Adapter>(){

        @Override
        public Adapter caseActuatorHW(ActuatorHW object) {
            return SensoractuatorAdapterFactory.this.createActuatorHWAdapter();
        }

        @Override
        public Adapter caseDisplayHW(DisplayHW object) {
            return SensoractuatorAdapterFactory.this.createDisplayHWAdapter();
        }

        @Override
        public Adapter caseSensorHW(SensorHW object) {
            return SensoractuatorAdapterFactory.this.createSensorHWAdapter();
        }

        @Override
        public Adapter caseSensorActuatorHW(SensorActuatorHW object) {
            return SensoractuatorAdapterFactory.this.createSensorActuatorHWAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SensoractuatorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SensoractuatorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SensoractuatorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SensoractuatorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SensoractuatorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SensoractuatorAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SensoractuatorAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return SensoractuatorAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SensoractuatorAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseHWElement(HWElement object) {
            return SensoractuatorAdapterFactory.this.createHWElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SensoractuatorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SensoractuatorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SensoractuatorPackage.eINSTANCE;
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

    public Adapter createActuatorHWAdapter() {
        return null;
    }

    public Adapter createDisplayHWAdapter() {
        return null;
    }

    public Adapter createSensorHWAdapter() {
        return null;
    }

    public Adapter createSensorActuatorHWAdapter() {
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

    public Adapter createHWElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

