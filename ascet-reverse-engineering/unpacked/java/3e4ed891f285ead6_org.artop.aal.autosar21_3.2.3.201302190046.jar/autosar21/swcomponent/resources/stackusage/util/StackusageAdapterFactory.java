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
package autosar21.swcomponent.resources.stackusage.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.stackusage.MeasuredStackUsage;
import autosar21.swcomponent.resources.stackusage.RoughEstimateStackUsage;
import autosar21.swcomponent.resources.stackusage.StackUsage;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.resources.stackusage.WorstCaseStackUsage;
import autosar21.swcomponent.resources.stackusage.util.StackusageSwitch;
import autosar21.system.swmapping.AggregatedStackUsage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
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
        public Adapter caseRoughEstimateStackUsage(RoughEstimateStackUsage object) {
            return StackusageAdapterFactory.this.createRoughEstimateStackUsageAdapter();
        }

        @Override
        public Adapter caseWorstCaseStackUsage(WorstCaseStackUsage object) {
            return StackusageAdapterFactory.this.createWorstCaseStackUsageAdapter();
        }

        @Override
        public Adapter caseStackUsage(StackUsage object) {
            return StackusageAdapterFactory.this.createStackUsageAdapter();
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
        public Adapter caseAggregatedStackUsage(AggregatedStackUsage object) {
            return StackusageAdapterFactory.this.createAggregatedStackUsageAdapter();
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

    public Adapter createRoughEstimateStackUsageAdapter() {
        return null;
    }

    public Adapter createWorstCaseStackUsageAdapter() {
        return null;
    }

    public Adapter createStackUsageAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAggregatedStackUsageAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

