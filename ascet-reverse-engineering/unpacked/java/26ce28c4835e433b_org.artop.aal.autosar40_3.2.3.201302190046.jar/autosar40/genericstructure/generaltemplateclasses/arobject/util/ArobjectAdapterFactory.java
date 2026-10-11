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
package autosar40.genericstructure.generaltemplateclasses.arobject.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.util.ArobjectSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ArobjectAdapterFactory
extends AdapterFactoryImpl {
    protected static ArobjectPackage modelPackage;
    protected ArobjectSwitch<Adapter> modelSwitch = new ArobjectSwitch<Adapter>(){

        @Override
        public Adapter caseARObject(ARObject object) {
            return ArobjectAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ArobjectAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ArobjectAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ArobjectAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ArobjectPackage.eINSTANCE;
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

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

