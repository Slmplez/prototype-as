/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.globalconstraints.util;

import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.globalconstraints.InternalConstrs;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.commonstructure.globalconstraints.ScaleConstr;
import autosar40.commonstructure.globalconstraints.ScaleConstrs;
import autosar40.commonstructure.globalconstraints.util.GlobalconstraintsSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GlobalconstraintsAdapterFactory
extends AdapterFactoryImpl {
    protected static GlobalconstraintsPackage modelPackage;
    protected GlobalconstraintsSwitch<Adapter> modelSwitch = new GlobalconstraintsSwitch<Adapter>(){

        @Override
        public Adapter caseDataConstrRule(DataConstrRule object) {
            return GlobalconstraintsAdapterFactory.this.createDataConstrRuleAdapter();
        }

        @Override
        public Adapter caseInternalConstrs(InternalConstrs object) {
            return GlobalconstraintsAdapterFactory.this.createInternalConstrsAdapter();
        }

        @Override
        public Adapter caseScaleConstr(ScaleConstr object) {
            return GlobalconstraintsAdapterFactory.this.createScaleConstrAdapter();
        }

        @Override
        public Adapter casePhysConstrs(PhysConstrs object) {
            return GlobalconstraintsAdapterFactory.this.createPhysConstrsAdapter();
        }

        @Override
        public Adapter caseScaleConstrs(ScaleConstrs object) {
            return GlobalconstraintsAdapterFactory.this.createScaleConstrsAdapter();
        }

        @Override
        public Adapter caseDataConstr(DataConstr object) {
            return GlobalconstraintsAdapterFactory.this.createDataConstrAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GlobalconstraintsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return GlobalconstraintsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GlobalconstraintsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return GlobalconstraintsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return GlobalconstraintsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GlobalconstraintsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return GlobalconstraintsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return GlobalconstraintsAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GlobalconstraintsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return GlobalconstraintsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return GlobalconstraintsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return GlobalconstraintsAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return GlobalconstraintsAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GlobalconstraintsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GlobalconstraintsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GlobalconstraintsPackage.eINSTANCE;
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

    public Adapter createDataConstrRuleAdapter() {
        return null;
    }

    public Adapter createInternalConstrsAdapter() {
        return null;
    }

    public Adapter createScaleConstrAdapter() {
        return null;
    }

    public Adapter createPhysConstrsAdapter() {
        return null;
    }

    public Adapter createScaleConstrsAdapter() {
        return null;
    }

    public Adapter createDataConstrAdapter() {
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

    public Adapter createCollectableElementAdapter() {
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

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

