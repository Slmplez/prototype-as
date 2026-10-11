/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.standardization.abstractblueprintstructure.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.standardization.abstractblueprintstructure.util.AbstractblueprintstructureSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AbstractblueprintstructureAdapterFactory
extends AdapterFactoryImpl {
    protected static AbstractblueprintstructurePackage modelPackage;
    protected AbstractblueprintstructureSwitch<Adapter> modelSwitch = new AbstractblueprintstructureSwitch<Adapter>(){

        @Override
        public Adapter caseAtpBlueprintMapping(AtpBlueprintMapping object) {
            return AbstractblueprintstructureAdapterFactory.this.createAtpBlueprintMappingAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return AbstractblueprintstructureAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return AbstractblueprintstructureAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AbstractblueprintstructureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AbstractblueprintstructureAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AbstractblueprintstructureAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return AbstractblueprintstructureAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return AbstractblueprintstructureAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AbstractblueprintstructureAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AbstractblueprintstructureAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AbstractblueprintstructureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AbstractblueprintstructureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AbstractblueprintstructurePackage.eINSTANCE;
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

    public Adapter createAtpBlueprintMappingAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

