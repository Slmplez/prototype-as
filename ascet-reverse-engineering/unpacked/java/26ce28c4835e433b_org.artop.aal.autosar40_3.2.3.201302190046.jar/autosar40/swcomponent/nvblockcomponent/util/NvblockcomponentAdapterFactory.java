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
package autosar40.swcomponent.nvblockcomponent.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.nvblockcomponent.util.NvblockcomponentSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class NvblockcomponentAdapterFactory
extends AdapterFactoryImpl {
    protected static NvblockcomponentPackage modelPackage;
    protected NvblockcomponentSwitch<Adapter> modelSwitch = new NvblockcomponentSwitch<Adapter>(){

        @Override
        public Adapter caseNvBlockDataMapping(NvBlockDataMapping object) {
            return NvblockcomponentAdapterFactory.this.createNvBlockDataMappingAdapter();
        }

        @Override
        public Adapter caseNvBlockDescriptor(NvBlockDescriptor object) {
            return NvblockcomponentAdapterFactory.this.createNvBlockDescriptorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return NvblockcomponentAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return NvblockcomponentAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return NvblockcomponentAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return NvblockcomponentAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return NvblockcomponentAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return NvblockcomponentAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return NvblockcomponentAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return NvblockcomponentAdapterFactory.this.createEObjectAdapter();
        }
    };

    public NvblockcomponentAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = NvblockcomponentPackage.eINSTANCE;
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

    public Adapter createNvBlockDataMappingAdapter() {
        return null;
    }

    public Adapter createNvBlockDescriptorAdapter() {
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

