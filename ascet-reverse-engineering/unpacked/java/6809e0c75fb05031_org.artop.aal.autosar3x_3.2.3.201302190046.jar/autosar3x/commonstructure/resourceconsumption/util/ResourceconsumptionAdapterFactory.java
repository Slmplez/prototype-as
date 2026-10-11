/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.resourceconsumption.util;

import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.commonstructure.resourceconsumption.util.ResourceconsumptionSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ResourceconsumptionAdapterFactory
extends AdapterFactoryImpl {
    protected static ResourceconsumptionPackage modelPackage;
    protected ResourceconsumptionSwitch<Adapter> modelSwitch = new ResourceconsumptionSwitch<Adapter>(){

        @Override
        public Adapter caseHardwareConfiguration(HardwareConfiguration object) {
            return ResourceconsumptionAdapterFactory.this.createHardwareConfigurationAdapter();
        }

        @Override
        public Adapter caseSoftwareContext(SoftwareContext object) {
            return ResourceconsumptionAdapterFactory.this.createSoftwareContextAdapter();
        }

        @Override
        public Adapter caseResourceConsumption(ResourceConsumption object) {
            return ResourceconsumptionAdapterFactory.this.createResourceConsumptionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ResourceconsumptionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ResourceconsumptionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ResourceconsumptionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ResourceconsumptionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ResourceconsumptionAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGResourceConsumption(GResourceConsumption object) {
            return ResourceconsumptionAdapterFactory.this.createGResourceConsumptionAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ResourceconsumptionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ResourceconsumptionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ResourceconsumptionPackage.eINSTANCE;
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

    public Adapter createHardwareConfigurationAdapter() {
        return null;
    }

    public Adapter createSoftwareContextAdapter() {
        return null;
    }

    public Adapter createResourceConsumptionAdapter() {
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

    public Adapter createGResourceConsumptionAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

