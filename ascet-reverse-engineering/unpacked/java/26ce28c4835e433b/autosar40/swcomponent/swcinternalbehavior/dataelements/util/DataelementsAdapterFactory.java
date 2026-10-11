/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.util.DataelementsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DataelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static DataelementsPackage modelPackage;
    protected DataelementsSwitch<Adapter> modelSwitch = new DataelementsSwitch<Adapter>(){

        @Override
        public Adapter caseArVariableInImplementationDataInstanceRef(ArVariableInImplementationDataInstanceRef object) {
            return DataelementsAdapterFactory.this.createArVariableInImplementationDataInstanceRefAdapter();
        }

        @Override
        public Adapter caseAutosarParameterRef(AutosarParameterRef object) {
            return DataelementsAdapterFactory.this.createAutosarParameterRefAdapter();
        }

        @Override
        public Adapter caseParameterAccess(ParameterAccess object) {
            return DataelementsAdapterFactory.this.createParameterAccessAdapter();
        }

        @Override
        public Adapter caseVariableAccess(VariableAccess object) {
            return DataelementsAdapterFactory.this.createVariableAccessAdapter();
        }

        @Override
        public Adapter caseAutosarVariableRef(AutosarVariableRef object) {
            return DataelementsAdapterFactory.this.createAutosarVariableRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DataelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DataelementsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return DataelementsAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return DataelementsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return DataelementsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return DataelementsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return DataelementsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return DataelementsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGParameterAccess(GParameterAccess object) {
            return DataelementsAdapterFactory.this.createGParameterAccessAdapter();
        }

        @Override
        public Adapter caseGVariableAccess(GVariableAccess object) {
            return DataelementsAdapterFactory.this.createGVariableAccessAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DataelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DataelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DataelementsPackage.eINSTANCE;
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

    public Adapter createArVariableInImplementationDataInstanceRefAdapter() {
        return null;
    }

    public Adapter createAutosarParameterRefAdapter() {
        return null;
    }

    public Adapter createParameterAccessAdapter() {
        return null;
    }

    public Adapter createVariableAccessAdapter() {
        return null;
    }

    public Adapter createAutosarVariableRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
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

    public Adapter createGParameterAccessAdapter() {
        return null;
    }

    public Adapter createGVariableAccessAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

