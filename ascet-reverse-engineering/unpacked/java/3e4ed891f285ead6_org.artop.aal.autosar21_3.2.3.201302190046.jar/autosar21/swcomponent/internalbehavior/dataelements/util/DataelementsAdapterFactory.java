/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.dataelements.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.dataelements.util.DataelementsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
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
        public Adapter caseDataReceivePoint(DataReceivePoint object) {
            return DataelementsAdapterFactory.this.createDataReceivePointAdapter();
        }

        @Override
        public Adapter caseDataReadAccess(DataReadAccess object) {
            return DataelementsAdapterFactory.this.createDataReadAccessAdapter();
        }

        @Override
        public Adapter caseDataSendPoint(DataSendPoint object) {
            return DataelementsAdapterFactory.this.createDataSendPointAdapter();
        }

        @Override
        public Adapter caseDataWriteAccess(DataWriteAccess object) {
            return DataelementsAdapterFactory.this.createDataWriteAccessAdapter();
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
        public Adapter caseGReferrable(GReferrable object) {
            return DataelementsAdapterFactory.this.createGReferrableAdapter();
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

    public Adapter createDataReceivePointAdapter() {
        return null;
    }

    public Adapter createDataReadAccessAdapter() {
        return null;
    }

    public Adapter createDataSendPointAdapter() {
        return null;
    }

    public Adapter createDataWriteAccessAdapter() {
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

    public Adapter createGVariableAccessAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

