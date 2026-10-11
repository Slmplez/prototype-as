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
package autosar40.swcomponent.datatype.recordlayout.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutV;
import autosar40.swcomponent.datatype.recordlayout.util.RecordlayoutSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class RecordlayoutAdapterFactory
extends AdapterFactoryImpl {
    protected static RecordlayoutPackage modelPackage;
    protected RecordlayoutSwitch<Adapter> modelSwitch = new RecordlayoutSwitch<Adapter>(){

        @Override
        public Adapter caseSwRecordLayout(SwRecordLayout object) {
            return RecordlayoutAdapterFactory.this.createSwRecordLayoutAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutGroup(SwRecordLayoutGroup object) {
            return RecordlayoutAdapterFactory.this.createSwRecordLayoutGroupAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutGroupContent(SwRecordLayoutGroupContent object) {
            return RecordlayoutAdapterFactory.this.createSwRecordLayoutGroupContentAdapter();
        }

        @Override
        public Adapter caseSwRecordLayoutV(SwRecordLayoutV object) {
            return RecordlayoutAdapterFactory.this.createSwRecordLayoutVAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return RecordlayoutAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return RecordlayoutAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return RecordlayoutAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return RecordlayoutAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return RecordlayoutAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return RecordlayoutAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return RecordlayoutAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return RecordlayoutAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return RecordlayoutAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return RecordlayoutAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return RecordlayoutAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return RecordlayoutAdapterFactory.this.createEObjectAdapter();
        }
    };

    public RecordlayoutAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = RecordlayoutPackage.eINSTANCE;
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

    public Adapter createSwRecordLayoutAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutGroupAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutGroupContentAdapter() {
        return null;
    }

    public Adapter createSwRecordLayoutVAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

