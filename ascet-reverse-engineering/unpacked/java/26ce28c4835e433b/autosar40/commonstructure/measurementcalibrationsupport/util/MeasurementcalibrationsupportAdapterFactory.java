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
package autosar40.commonstructure.measurementcalibrationsupport.util;

import autosar40.commonstructure.measurementcalibrationsupport.ImplementationElementInParameterInstanceRef;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSupportData;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.measurementcalibrationsupport.util.MeasurementcalibrationsupportSwitch;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
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

public class MeasurementcalibrationsupportAdapterFactory
extends AdapterFactoryImpl {
    protected static MeasurementcalibrationsupportPackage modelPackage;
    protected MeasurementcalibrationsupportSwitch<Adapter> modelSwitch = new MeasurementcalibrationsupportSwitch<Adapter>(){

        @Override
        public Adapter caseImplementationElementInParameterInstanceRef(ImplementationElementInParameterInstanceRef object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createImplementationElementInParameterInstanceRefAdapter();
        }

        @Override
        public Adapter caseMcSupportData(McSupportData object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createMcSupportDataAdapter();
        }

        @Override
        public Adapter caseMcSwEmulationMethodSupport(McSwEmulationMethodSupport object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createMcSwEmulationMethodSupportAdapter();
        }

        @Override
        public Adapter caseMcParameterElementGroup(McParameterElementGroup object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createMcParameterElementGroupAdapter();
        }

        @Override
        public Adapter caseMcDataInstance(McDataInstance object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createMcDataInstanceAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MeasurementcalibrationsupportAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MeasurementcalibrationsupportAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MeasurementcalibrationsupportPackage.eINSTANCE;
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

    public Adapter createImplementationElementInParameterInstanceRefAdapter() {
        return null;
    }

    public Adapter createMcSupportDataAdapter() {
        return null;
    }

    public Adapter createMcSwEmulationMethodSupportAdapter() {
        return null;
    }

    public Adapter createMcParameterElementGroupAdapter() {
        return null;
    }

    public Adapter createMcDataInstanceAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

