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
package autosar3x.system.fibex.fibex4flexray.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.CycleCounter;
import autosar3x.system.fibex.fibex4flexray.CycleRepetition;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.util.Fibex4flexraySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class Fibex4flexrayAdapterFactory
extends AdapterFactoryImpl {
    protected static Fibex4flexrayPackage modelPackage;
    protected Fibex4flexraySwitch<Adapter> modelSwitch = new Fibex4flexraySwitch<Adapter>(){

        @Override
        public Adapter caseCommunicationCycle(CommunicationCycle object) {
            return Fibex4flexrayAdapterFactory.this.createCommunicationCycleAdapter();
        }

        @Override
        public Adapter caseCycleCounter(CycleCounter object) {
            return Fibex4flexrayAdapterFactory.this.createCycleCounterAdapter();
        }

        @Override
        public Adapter caseCycleRepetition(CycleRepetition object) {
            return Fibex4flexrayAdapterFactory.this.createCycleRepetitionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return Fibex4flexrayAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return Fibex4flexrayAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return Fibex4flexrayAdapterFactory.this.createEObjectAdapter();
        }
    };

    public Fibex4flexrayAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = Fibex4flexrayPackage.eINSTANCE;
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

    public Adapter createCommunicationCycleAdapter() {
        return null;
    }

    public Adapter createCycleCounterAdapter() {
        return null;
    }

    public Adapter createCycleRepetitionAdapter() {
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

