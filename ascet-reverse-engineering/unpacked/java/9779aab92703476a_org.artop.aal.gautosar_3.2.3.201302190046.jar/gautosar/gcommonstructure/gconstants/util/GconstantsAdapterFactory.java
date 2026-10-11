/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gconstants.util;

import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gconstants.util.GconstantsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GconstantsAdapterFactory
extends AdapterFactoryImpl {
    protected static GconstantsPackage modelPackage;
    protected GconstantsSwitch<Adapter> modelSwitch = new GconstantsSwitch<Adapter>(){

        @Override
        public Adapter caseGValueSpecification(GValueSpecification object) {
            return GconstantsAdapterFactory.this.createGValueSpecificationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GconstantsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GconstantsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GconstantsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GconstantsPackage.eINSTANCE;
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

    public Adapter createGValueSpecificationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

