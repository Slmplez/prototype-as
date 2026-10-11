/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.resourceconsumption.stackusage.util;

import autosar3x.commonstructure.resourceconsumption.stackusage.MeasuredStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.RoughEstimateStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.WorstCaseStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.util.StackusageSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class StackusageAdapterFactory
extends AdapterFactoryImpl {
    protected static StackusagePackage modelPackage;
    protected StackusageSwitch<Adapter> modelSwitch = new StackusageSwitch<Adapter>(){

        @Override
        public Adapter caseMeasuredStackUsage(MeasuredStackUsage object) {
            return StackusageAdapterFactory.this.createMeasuredStackUsageAdapter();
        }

        @Override
        public Adapter caseStackUsage(StackUsage object) {
            return StackusageAdapterFactory.this.createStackUsageAdapter();
        }

        @Override
        public Adapter caseRoughEstimateStackUsage(RoughEstimateStackUsage object) {
            return StackusageAdapterFactory.this.createRoughEstimateStackUsageAdapter();
        }

        @Override
        public Adapter caseWorstCaseStackUsage(WorstCaseStackUsage object) {
            return StackusageAdapterFactory.this.createWorstCaseStackUsageAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return StackusageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return StackusageAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return StackusageAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return StackusageAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return StackusageAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return StackusageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public StackusageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = StackusagePackage.eINSTANCE;
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

    public Adapter createMeasuredStackUsageAdapter() {
        return null;
    }

    public Adapter createStackUsageAdapter() {
        return null;
    }

    public Adapter createRoughEstimateStackUsageAdapter() {
        return null;
    }

    public Adapter createWorstCaseStackUsageAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

