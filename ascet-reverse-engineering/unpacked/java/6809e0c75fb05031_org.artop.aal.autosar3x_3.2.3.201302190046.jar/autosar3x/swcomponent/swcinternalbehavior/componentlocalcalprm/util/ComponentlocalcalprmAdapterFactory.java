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
package autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.InitValueAssignment;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.LocalParameterInitValueAssignment;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.util.ComponentlocalcalprmSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentlocalcalprmAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentlocalcalprmPackage modelPackage;
    protected ComponentlocalcalprmSwitch<Adapter> modelSwitch = new ComponentlocalcalprmSwitch<Adapter>(){

        @Override
        public Adapter caseLocalParameterInitValueAssignment(LocalParameterInitValueAssignment object) {
            return ComponentlocalcalprmAdapterFactory.this.createLocalParameterInitValueAssignmentAdapter();
        }

        @Override
        public Adapter caseInitValueAssignment(InitValueAssignment object) {
            return ComponentlocalcalprmAdapterFactory.this.createInitValueAssignmentAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ComponentlocalcalprmAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ComponentlocalcalprmAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentlocalcalprmAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentlocalcalprmAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentlocalcalprmPackage.eINSTANCE;
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

    public Adapter createLocalParameterInitValueAssignmentAdapter() {
        return null;
    }

    public Adapter createInitValueAssignmentAdapter() {
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

