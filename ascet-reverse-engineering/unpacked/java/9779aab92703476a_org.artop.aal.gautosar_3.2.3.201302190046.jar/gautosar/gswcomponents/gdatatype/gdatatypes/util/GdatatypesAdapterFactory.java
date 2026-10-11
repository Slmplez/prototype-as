/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.util.GdatatypesSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GdatatypesAdapterFactory
extends AdapterFactoryImpl {
    protected static GdatatypesPackage modelPackage;
    protected GdatatypesSwitch<Adapter> modelSwitch = new GdatatypesSwitch<Adapter>(){

        @Override
        public Adapter caseGApplicationDataType(GApplicationDataType object) {
            return GdatatypesAdapterFactory.this.createGApplicationDataTypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataType(GAutosarDataType object) {
            return GdatatypesAdapterFactory.this.createGAutosarDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
            return GdatatypesAdapterFactory.this.createGApplicationPrimitiveDataTypeAdapter();
        }

        @Override
        public Adapter caseGARLimit(GARLimit object) {
            return GdatatypesAdapterFactory.this.createGARLimitAdapter();
        }

        @Override
        public Adapter caseGApplicationRecordDataType(GApplicationRecordDataType object) {
            return GdatatypesAdapterFactory.this.createGApplicationRecordDataTypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
            return GdatatypesAdapterFactory.this.createGApplicationCompositeDataTypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GdatatypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GdatatypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GdatatypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GdatatypesAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter caseGAbstractLimit(GAbstractLimit object) {
            return GdatatypesAdapterFactory.this.createGAbstractLimitAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GdatatypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GdatatypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GdatatypesPackage.eINSTANCE;
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

    public Adapter createGApplicationDataTypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationPrimitiveDataTypeAdapter() {
        return null;
    }

    public Adapter createGARLimitAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordDataTypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeDataTypeAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createGAbstractLimitAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

