/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gimplementation.util;

import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.gimplementation.util.GimplementationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GimplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static GimplementationPackage modelPackage;
    protected GimplementationSwitch<Adapter> modelSwitch = new GimplementationSwitch<Adapter>(){

        @Override
        public Adapter caseGImplementation(GImplementation object) {
            return GimplementationAdapterFactory.this.createGImplementationAdapter();
        }

        @Override
        public Adapter caseGCode(GCode object) {
            return GimplementationAdapterFactory.this.createGCodeAdapter();
        }

        @Override
        public Adapter caseGEngineeringObject(GEngineeringObject object) {
            return GimplementationAdapterFactory.this.createGEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
            return GimplementationAdapterFactory.this.createGAutosarEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GimplementationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GimplementationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GimplementationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GimplementationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GimplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GimplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GimplementationPackage.eINSTANCE;
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

    public Adapter createGImplementationAdapter() {
        return null;
    }

    public Adapter createGCodeAdapter() {
        return null;
    }

    public Adapter createGEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createGAutosarEngineeringObjectAdapter() {
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

