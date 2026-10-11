/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.communication.filter.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.filter.Always;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersX;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsX;
import autosar21.swcomponent.communication.filter.Never;
import autosar21.swcomponent.communication.filter.NewIsDifferent;
import autosar21.swcomponent.communication.filter.NewIsEqual;
import autosar21.swcomponent.communication.filter.NewIsGreater;
import autosar21.swcomponent.communication.filter.NewIsGreaterOrEqual;
import autosar21.swcomponent.communication.filter.NewIsLess;
import autosar21.swcomponent.communication.filter.NewIsLessOrEqual;
import autosar21.swcomponent.communication.filter.NewIsOutside;
import autosar21.swcomponent.communication.filter.NewIsWithin;
import autosar21.swcomponent.communication.filter.OneEveryN;
import autosar21.swcomponent.communication.filter.util.FilterSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FilterAdapterFactory
extends AdapterFactoryImpl {
    protected static FilterPackage modelPackage;
    protected FilterSwitch<Adapter> modelSwitch = new FilterSwitch<Adapter>(){

        @Override
        public Adapter caseAlways(Always object) {
            return FilterAdapterFactory.this.createAlwaysAdapter();
        }

        @Override
        public Adapter caseMaskedNewDiffersMaskedOld(MaskedNewDiffersMaskedOld object) {
            return FilterAdapterFactory.this.createMaskedNewDiffersMaskedOldAdapter();
        }

        @Override
        public Adapter caseMaskedNewDiffersX(MaskedNewDiffersX object) {
            return FilterAdapterFactory.this.createMaskedNewDiffersXAdapter();
        }

        @Override
        public Adapter caseMaskedNewEqualsMaskedOld(MaskedNewEqualsMaskedOld object) {
            return FilterAdapterFactory.this.createMaskedNewEqualsMaskedOldAdapter();
        }

        @Override
        public Adapter caseMaskedNewEqualsX(MaskedNewEqualsX object) {
            return FilterAdapterFactory.this.createMaskedNewEqualsXAdapter();
        }

        @Override
        public Adapter caseNever(Never object) {
            return FilterAdapterFactory.this.createNeverAdapter();
        }

        @Override
        public Adapter caseNewIsDifferent(NewIsDifferent object) {
            return FilterAdapterFactory.this.createNewIsDifferentAdapter();
        }

        @Override
        public Adapter caseNewIsEqual(NewIsEqual object) {
            return FilterAdapterFactory.this.createNewIsEqualAdapter();
        }

        @Override
        public Adapter caseNewIsGreater(NewIsGreater object) {
            return FilterAdapterFactory.this.createNewIsGreaterAdapter();
        }

        @Override
        public Adapter caseNewIsGreaterOrEqual(NewIsGreaterOrEqual object) {
            return FilterAdapterFactory.this.createNewIsGreaterOrEqualAdapter();
        }

        @Override
        public Adapter caseNewIsLess(NewIsLess object) {
            return FilterAdapterFactory.this.createNewIsLessAdapter();
        }

        @Override
        public Adapter caseNewIsLessOrEqual(NewIsLessOrEqual object) {
            return FilterAdapterFactory.this.createNewIsLessOrEqualAdapter();
        }

        @Override
        public Adapter caseNewIsOutside(NewIsOutside object) {
            return FilterAdapterFactory.this.createNewIsOutsideAdapter();
        }

        @Override
        public Adapter caseNewIsWithin(NewIsWithin object) {
            return FilterAdapterFactory.this.createNewIsWithinAdapter();
        }

        @Override
        public Adapter caseOneEveryN(OneEveryN object) {
            return FilterAdapterFactory.this.createOneEveryNAdapter();
        }

        @Override
        public Adapter caseDataFilter(DataFilter object) {
            return FilterAdapterFactory.this.createDataFilterAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FilterAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FilterAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FilterAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FilterAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FilterPackage.eINSTANCE;
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

    public Adapter createAlwaysAdapter() {
        return null;
    }

    public Adapter createMaskedNewDiffersMaskedOldAdapter() {
        return null;
    }

    public Adapter createMaskedNewDiffersXAdapter() {
        return null;
    }

    public Adapter createMaskedNewEqualsMaskedOldAdapter() {
        return null;
    }

    public Adapter createMaskedNewEqualsXAdapter() {
        return null;
    }

    public Adapter createNeverAdapter() {
        return null;
    }

    public Adapter createNewIsDifferentAdapter() {
        return null;
    }

    public Adapter createNewIsEqualAdapter() {
        return null;
    }

    public Adapter createNewIsGreaterAdapter() {
        return null;
    }

    public Adapter createNewIsGreaterOrEqualAdapter() {
        return null;
    }

    public Adapter createNewIsLessAdapter() {
        return null;
    }

    public Adapter createNewIsLessOrEqualAdapter() {
        return null;
    }

    public Adapter createNewIsOutsideAdapter() {
        return null;
    }

    public Adapter createNewIsWithinAdapter() {
        return null;
    }

    public Adapter createOneEveryNAdapter() {
        return null;
    }

    public Adapter createDataFilterAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

