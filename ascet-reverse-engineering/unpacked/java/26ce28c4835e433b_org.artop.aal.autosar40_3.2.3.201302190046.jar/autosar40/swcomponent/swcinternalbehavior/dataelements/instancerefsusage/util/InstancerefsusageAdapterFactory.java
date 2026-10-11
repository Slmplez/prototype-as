/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.util.InstancerefsusageSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefsusageAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefsusagePackage modelPackage;
    protected InstancerefsusageSwitch<Adapter> modelSwitch = new InstancerefsusageSwitch<Adapter>(){

        @Override
        public Adapter caseVariableInAtomicSWCTypeInstanceRef(VariableInAtomicSWCTypeInstanceRef object) {
            return InstancerefsusageAdapterFactory.this.createVariableInAtomicSWCTypeInstanceRefAdapter();
        }

        @Override
        public Adapter caseParameterInAtomicSWCTypeInstanceRef(ParameterInAtomicSWCTypeInstanceRef object) {
            return InstancerefsusageAdapterFactory.this.createParameterInAtomicSWCTypeInstanceRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefsusageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefsusageAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return InstancerefsusageAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
            return InstancerefsusageAdapterFactory.this.createGVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
            return InstancerefsusageAdapterFactory.this.createGParameterInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefsusageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefsusageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefsusagePackage.eINSTANCE;
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

    public Adapter createVariableInAtomicSWCTypeInstanceRefAdapter() {
        return null;
    }

    public Adapter createParameterInAtomicSWCTypeInstanceRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
        return null;
    }

    public Adapter createGVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGParameterInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

