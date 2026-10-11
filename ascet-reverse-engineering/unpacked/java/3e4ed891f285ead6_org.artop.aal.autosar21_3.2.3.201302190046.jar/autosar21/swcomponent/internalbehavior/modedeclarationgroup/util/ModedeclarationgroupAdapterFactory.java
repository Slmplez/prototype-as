/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.util.ModedeclarationgroupSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ModedeclarationgroupAdapterFactory
extends AdapterFactoryImpl {
    protected static ModedeclarationgroupPackage modelPackage;
    protected ModedeclarationgroupSwitch<Adapter> modelSwitch = new ModedeclarationgroupSwitch<Adapter>(){

        @Override
        public Adapter caseModeSwitchPoint(ModeSwitchPoint object) {
            return ModedeclarationgroupAdapterFactory.this.createModeSwitchPointAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ModedeclarationgroupAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ModedeclarationgroupAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ModedeclarationgroupAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ModedeclarationgroupAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ModedeclarationgroupAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGModeSwitchPoint(GModeSwitchPoint object) {
            return ModedeclarationgroupAdapterFactory.this.createGModeSwitchPointAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ModedeclarationgroupAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ModedeclarationgroupAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ModedeclarationgroupPackage.eINSTANCE;
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

    public Adapter createModeSwitchPointAdapter() {
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

    public Adapter createGModeSwitchPointAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

