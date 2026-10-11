/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.constants.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.BooleanLiteral;
import autosar3x.swcomponent.datatype.constants.CharLiteral;
import autosar3x.swcomponent.datatype.constants.ConstantReference;
import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.OpaqueLiteral;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.constants.RealLiteral;
import autosar3x.swcomponent.datatype.constants.RecordSpecification;
import autosar3x.swcomponent.datatype.constants.StringLiteral;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.constants.util.ConstantsSwitch;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ConstantsAdapterFactory
extends AdapterFactoryImpl {
    protected static ConstantsPackage modelPackage;
    protected ConstantsSwitch<Adapter> modelSwitch = new ConstantsSwitch<Adapter>(){

        @Override
        public Adapter caseArraySpecification(ArraySpecification object) {
            return ConstantsAdapterFactory.this.createArraySpecificationAdapter();
        }

        @Override
        public Adapter caseValueSpecification(ValueSpecification object) {
            return ConstantsAdapterFactory.this.createValueSpecificationAdapter();
        }

        @Override
        public Adapter caseBooleanLiteral(BooleanLiteral object) {
            return ConstantsAdapterFactory.this.createBooleanLiteralAdapter();
        }

        @Override
        public Adapter caseCharLiteral(CharLiteral object) {
            return ConstantsAdapterFactory.this.createCharLiteralAdapter();
        }

        @Override
        public Adapter caseConstantReference(ConstantReference object) {
            return ConstantsAdapterFactory.this.createConstantReferenceAdapter();
        }

        @Override
        public Adapter caseConstantSpecification(ConstantSpecification object) {
            return ConstantsAdapterFactory.this.createConstantSpecificationAdapter();
        }

        @Override
        public Adapter caseIntegerLiteral(IntegerLiteral object) {
            return ConstantsAdapterFactory.this.createIntegerLiteralAdapter();
        }

        @Override
        public Adapter caseOpaqueLiteral(OpaqueLiteral object) {
            return ConstantsAdapterFactory.this.createOpaqueLiteralAdapter();
        }

        @Override
        public Adapter caseRealLiteral(RealLiteral object) {
            return ConstantsAdapterFactory.this.createRealLiteralAdapter();
        }

        @Override
        public Adapter caseRecordSpecification(RecordSpecification object) {
            return ConstantsAdapterFactory.this.createRecordSpecificationAdapter();
        }

        @Override
        public Adapter caseStringLiteral(StringLiteral object) {
            return ConstantsAdapterFactory.this.createStringLiteralAdapter();
        }

        @Override
        public Adapter casePrimitiveSpecification(PrimitiveSpecification object) {
            return ConstantsAdapterFactory.this.createPrimitiveSpecificationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ConstantsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ConstantsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ConstantsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ConstantsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ConstantsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return ConstantsAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return ConstantsAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return ConstantsAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return ConstantsAdapterFactory.this.createDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGValueSpecification(GValueSpecification object) {
            return ConstantsAdapterFactory.this.createGValueSpecificationAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ConstantsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ConstantsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ConstantsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ConstantsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ConstantsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ConstantsPackage.eINSTANCE;
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

    public Adapter createArraySpecificationAdapter() {
        return null;
    }

    public Adapter createValueSpecificationAdapter() {
        return null;
    }

    public Adapter createBooleanLiteralAdapter() {
        return null;
    }

    public Adapter createCharLiteralAdapter() {
        return null;
    }

    public Adapter createConstantReferenceAdapter() {
        return null;
    }

    public Adapter createConstantSpecificationAdapter() {
        return null;
    }

    public Adapter createIntegerLiteralAdapter() {
        return null;
    }

    public Adapter createOpaqueLiteralAdapter() {
        return null;
    }

    public Adapter createRealLiteralAdapter() {
        return null;
    }

    public Adapter createRecordSpecificationAdapter() {
        return null;
    }

    public Adapter createStringLiteralAdapter() {
        return null;
    }

    public Adapter createPrimitiveSpecificationAdapter() {
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

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGValueSpecificationAdapter() {
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

