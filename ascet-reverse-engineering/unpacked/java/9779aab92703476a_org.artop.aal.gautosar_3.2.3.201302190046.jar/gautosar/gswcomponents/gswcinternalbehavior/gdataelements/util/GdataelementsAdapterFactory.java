/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.util.GdataelementsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GdataelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static GdataelementsPackage modelPackage;
    protected GdataelementsSwitch<Adapter> modelSwitch = new GdataelementsSwitch<Adapter>(){

        @Override
        public Adapter caseGVariableAccess(GVariableAccess object) {
            return GdataelementsAdapterFactory.this.createGVariableAccessAdapter();
        }

        @Override
        public Adapter caseGParameterAccess(GParameterAccess object) {
            return GdataelementsAdapterFactory.this.createGParameterAccessAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GdataelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GdataelementsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GdataelementsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GdataelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GdataelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GdataelementsPackage.eINSTANCE;
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

    public Adapter createGVariableAccessAdapter() {
        return null;
    }

    public Adapter createGParameterAccessAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

