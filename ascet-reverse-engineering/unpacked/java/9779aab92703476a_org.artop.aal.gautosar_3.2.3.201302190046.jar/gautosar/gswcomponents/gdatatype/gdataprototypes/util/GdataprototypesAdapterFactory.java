/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdataprototypes.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.util.GdataprototypesSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GdataprototypesAdapterFactory
extends AdapterFactoryImpl {
    protected static GdataprototypesPackage modelPackage;
    protected GdataprototypesSwitch<Adapter> modelSwitch = new GdataprototypesSwitch<Adapter>(){

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return GdataprototypesAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return GdataprototypesAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGParameterDataPrototype(GParameterDataPrototype object) {
            return GdataprototypesAdapterFactory.this.createGParameterDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGVariableDataPrototype(GVariableDataPrototype object) {
            return GdataprototypesAdapterFactory.this.createGVariableDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationRecordElement(GApplicationRecordElement object) {
            return GdataprototypesAdapterFactory.this.createGApplicationRecordElementAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return GdataprototypesAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GdataprototypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GdataprototypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GdataprototypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GdataprototypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GdataprototypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GdataprototypesPackage.eINSTANCE;
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

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGParameterDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGVariableDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordElementAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

