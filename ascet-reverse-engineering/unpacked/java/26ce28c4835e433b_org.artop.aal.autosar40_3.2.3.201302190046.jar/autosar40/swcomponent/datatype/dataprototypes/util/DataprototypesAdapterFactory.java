/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.datatype.dataprototypes.util;

import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.util.DataprototypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DataprototypesAdapterFactory
extends AdapterFactoryImpl {
    protected static DataprototypesPackage modelPackage;
    protected DataprototypesSwitch<Adapter> modelSwitch = new DataprototypesSwitch<Adapter>(){

        @Override
        public Adapter caseApplicationArrayElement(ApplicationArrayElement object) {
            return DataprototypesAdapterFactory.this.createApplicationArrayElementAdapter();
        }

        @Override
        public Adapter caseApplicationCompositeElementDataPrototype(ApplicationCompositeElementDataPrototype object) {
            return DataprototypesAdapterFactory.this.createApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return DataprototypesAdapterFactory.this.createDataPrototypeAdapter();
        }

        @Override
        public Adapter caseApplicationRecordElement(ApplicationRecordElement object) {
            return DataprototypesAdapterFactory.this.createApplicationRecordElementAdapter();
        }

        @Override
        public Adapter caseAutosarDataPrototype(AutosarDataPrototype object) {
            return DataprototypesAdapterFactory.this.createAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseParameterDataPrototype(ParameterDataPrototype object) {
            return DataprototypesAdapterFactory.this.createParameterDataPrototypeAdapter();
        }

        @Override
        public Adapter caseVariableDataPrototype(VariableDataPrototype object) {
            return DataprototypesAdapterFactory.this.createVariableDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DataprototypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DataprototypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return DataprototypesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return DataprototypesAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return DataprototypesAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return DataprototypesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return DataprototypesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return DataprototypesAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return DataprototypesAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return DataprototypesAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return DataprototypesAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationRecordElement(GApplicationRecordElement object) {
            return DataprototypesAdapterFactory.this.createGApplicationRecordElementAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return DataprototypesAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGParameterDataPrototype(GParameterDataPrototype object) {
            return DataprototypesAdapterFactory.this.createGParameterDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGVariableDataPrototype(GVariableDataPrototype object) {
            return DataprototypesAdapterFactory.this.createGVariableDataPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DataprototypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DataprototypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DataprototypesPackage.eINSTANCE;
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

    public Adapter createApplicationArrayElementAdapter() {
        return null;
    }

    public Adapter createApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createApplicationRecordElementAdapter() {
        return null;
    }

    public Adapter createAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createParameterDataPrototypeAdapter() {
        return null;
    }

    public Adapter createVariableDataPrototypeAdapter() {
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

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationRecordElementAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGParameterDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGVariableDataPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

