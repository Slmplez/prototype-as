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
package autosar40.commonstructure.resourceconsumption.memorysectionusage.util;

import autosar40.commonstructure.implementation.ImplementationProps;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.SectionNamePrefix;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.util.MemorysectionusageSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class MemorysectionusageAdapterFactory
extends AdapterFactoryImpl {
    protected static MemorysectionusagePackage modelPackage;
    protected MemorysectionusageSwitch<Adapter> modelSwitch = new MemorysectionusageSwitch<Adapter>(){

        @Override
        public Adapter caseMemorySection(MemorySection object) {
            return MemorysectionusageAdapterFactory.this.createMemorySectionAdapter();
        }

        @Override
        public Adapter caseSectionNamePrefix(SectionNamePrefix object) {
            return MemorysectionusageAdapterFactory.this.createSectionNamePrefixAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MemorysectionusageAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MemorysectionusageAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return MemorysectionusageAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return MemorysectionusageAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return MemorysectionusageAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return MemorysectionusageAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return MemorysectionusageAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseImplementationProps(ImplementationProps object) {
            return MemorysectionusageAdapterFactory.this.createImplementationPropsAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MemorysectionusageAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MemorysectionusageAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MemorysectionusagePackage.eINSTANCE;
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

    public Adapter createMemorySectionAdapter() {
        return null;
    }

    public Adapter createSectionNamePrefixAdapter() {
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

    public Adapter createImplementationPropsAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

