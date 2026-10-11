/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.datatype.units.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.units.DisplayName;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.units.UnitGroup;
import autosar21.swcomponent.datatype.units.UnitSpec;
import autosar21.swcomponent.datatype.units.UnitsPackage;
import autosar21.swcomponent.datatype.units.util.UnitsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class UnitsAdapterFactory
extends AdapterFactoryImpl {
    protected static UnitsPackage modelPackage;
    protected UnitsSwitch<Adapter> modelSwitch = new UnitsSwitch<Adapter>(){

        @Override
        public Adapter caseDisplayName(DisplayName object) {
            return UnitsAdapterFactory.this.createDisplayNameAdapter();
        }

        @Override
        public Adapter casePhysicalDimension(PhysicalDimension object) {
            return UnitsAdapterFactory.this.createPhysicalDimensionAdapter();
        }

        @Override
        public Adapter caseUnitGroup(UnitGroup object) {
            return UnitsAdapterFactory.this.createUnitGroupAdapter();
        }

        @Override
        public Adapter caseUnitSpec(UnitSpec object) {
            return UnitsAdapterFactory.this.createUnitSpecAdapter();
        }

        @Override
        public Adapter caseUnit(Unit object) {
            return UnitsAdapterFactory.this.createUnitAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return UnitsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return UnitsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return UnitsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return UnitsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return UnitsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return UnitsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return UnitsAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return UnitsAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return UnitsAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGPhysicalDimension(GPhysicalDimension object) {
            return UnitsAdapterFactory.this.createGPhysicalDimensionAdapter();
        }

        @Override
        public Adapter caseGUnit(GUnit object) {
            return UnitsAdapterFactory.this.createGUnitAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return UnitsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public UnitsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = UnitsPackage.eINSTANCE;
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

    public Adapter createDisplayNameAdapter() {
        return null;
    }

    public Adapter createPhysicalDimensionAdapter() {
        return null;
    }

    public Adapter createUnitGroupAdapter() {
        return null;
    }

    public Adapter createUnitSpecAdapter() {
        return null;
    }

    public Adapter createUnitAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGPhysicalDimensionAdapter() {
        return null;
    }

    public Adapter createGUnitAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

