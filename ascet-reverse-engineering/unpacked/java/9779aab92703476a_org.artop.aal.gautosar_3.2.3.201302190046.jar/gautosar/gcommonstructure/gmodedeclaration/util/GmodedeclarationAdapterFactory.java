/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gmodedeclaration.util;

import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.util.GmodedeclarationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GmodedeclarationAdapterFactory
extends AdapterFactoryImpl {
    protected static GmodedeclarationPackage modelPackage;
    protected GmodedeclarationSwitch<Adapter> modelSwitch = new GmodedeclarationSwitch<Adapter>(){

        @Override
        public Adapter caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype object) {
            return GmodedeclarationAdapterFactory.this.createGModeDeclarationGroupPrototypeAdapter();
        }

        @Override
        public Adapter caseGModeDeclarationGroup(GModeDeclarationGroup object) {
            return GmodedeclarationAdapterFactory.this.createGModeDeclarationGroupAdapter();
        }

        @Override
        public Adapter caseGModeDeclaration(GModeDeclaration object) {
            return GmodedeclarationAdapterFactory.this.createGModeDeclarationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GmodedeclarationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GmodedeclarationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GmodedeclarationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GmodedeclarationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GmodedeclarationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GmodedeclarationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GmodedeclarationPackage.eINSTANCE;
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

    public Adapter createGModeDeclarationGroupPrototypeAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationGroupAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationAdapter() {
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

