/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gsystemconstant.util;

import gautosar.gcommonstructure.gsystemconstant.GSwSystemconst;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gcommonstructure.gsystemconstant.util.GsystemconstantSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GsystemconstantAdapterFactory
extends AdapterFactoryImpl {
    protected static GsystemconstantPackage modelPackage;
    protected GsystemconstantSwitch<Adapter> modelSwitch = new GsystemconstantSwitch<Adapter>(){

        @Override
        public Adapter caseGSwSystemconst(GSwSystemconst object) {
            return GsystemconstantAdapterFactory.this.createGSwSystemconstAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GsystemconstantAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GsystemconstantAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GsystemconstantAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GsystemconstantAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GsystemconstantAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GsystemconstantAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GsystemconstantPackage.eINSTANCE;
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

    public Adapter createGSwSystemconstAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

