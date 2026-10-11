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
package autosar3x.commonstructure.filter.util;

import autosar3x.commonstructure.filter.Always;
import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.MaskedNewDiffersMaskedOld;
import autosar3x.commonstructure.filter.MaskedNewDiffersX;
import autosar3x.commonstructure.filter.MaskedNewEqualsX;
import autosar3x.commonstructure.filter.Never;
import autosar3x.commonstructure.filter.NewIsOutside;
import autosar3x.commonstructure.filter.NewIsWithin;
import autosar3x.commonstructure.filter.OneEveryN;
import autosar3x.commonstructure.filter.util.FilterSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
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
        public Adapter caseDataFilter(DataFilter object) {
            return FilterAdapterFactory.this.createDataFilterAdapter();
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
        public Adapter caseMaskedNewEqualsX(MaskedNewEqualsX object) {
            return FilterAdapterFactory.this.createMaskedNewEqualsXAdapter();
        }

        @Override
        public Adapter caseNever(Never object) {
            return FilterAdapterFactory.this.createNeverAdapter();
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

    public Adapter createDataFilterAdapter() {
        return null;
    }

    public Adapter createMaskedNewDiffersMaskedOldAdapter() {
        return null;
    }

    public Adapter createMaskedNewDiffersXAdapter() {
        return null;
    }

    public Adapter createMaskedNewEqualsXAdapter() {
        return null;
    }

    public Adapter createNeverAdapter() {
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

