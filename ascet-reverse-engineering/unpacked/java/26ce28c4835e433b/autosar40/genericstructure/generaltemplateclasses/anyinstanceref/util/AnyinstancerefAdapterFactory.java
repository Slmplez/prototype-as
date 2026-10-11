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
package autosar40.genericstructure.generaltemplateclasses.anyinstanceref.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.util.AnyinstancerefSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AnyinstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static AnyinstancerefPackage modelPackage;
    protected AnyinstancerefSwitch<Adapter> modelSwitch = new AnyinstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseAnyInstanceRef(AnyInstanceRef object) {
            return AnyinstancerefAdapterFactory.this.createAnyInstanceRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AnyinstancerefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AnyinstancerefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return AnyinstancerefAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AnyinstancerefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AnyinstancerefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AnyinstancerefPackage.eINSTANCE;
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

    public Adapter createAnyInstanceRefAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

