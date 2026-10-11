/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.modedeclaration.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.modedeclaration.ModeDeclaration;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar3x.swcomponent.modedeclaration.util.ModedeclarationSwitch;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ModedeclarationAdapterFactory
extends AdapterFactoryImpl {
    protected static ModedeclarationPackage modelPackage;
    protected ModedeclarationSwitch<Adapter> modelSwitch = new ModedeclarationSwitch<Adapter>(){

        @Override
        public Adapter caseModeDeclaration(ModeDeclaration object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationAdapter();
        }

        @Override
        public Adapter caseModeDisablingDependency(ModeDisablingDependency object) {
            return ModedeclarationAdapterFactory.this.createModeDisablingDependencyAdapter();
        }

        @Override
        public Adapter caseModeDeclarationGroup(ModeDeclarationGroup object) {
            return ModedeclarationAdapterFactory.this.createModeDeclarationGroupAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ModedeclarationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ModedeclarationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ModedeclarationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ModedeclarationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ModedeclarationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGModeDeclaration(GModeDeclaration object) {
            return ModedeclarationAdapterFactory.this.createGModeDeclarationAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ModedeclarationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ModedeclarationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ModedeclarationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGModeDeclarationGroup(GModeDeclarationGroup object) {
            return ModedeclarationAdapterFactory.this.createGModeDeclarationGroupAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ModedeclarationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ModedeclarationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ModedeclarationPackage.eINSTANCE;
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

    public Adapter createModeDeclarationAdapter() {
        return null;
    }

    public Adapter createModeDisablingDependencyAdapter() {
        return null;
    }

    public Adapter createModeDeclarationGroupAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGModeDeclarationGroupAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

