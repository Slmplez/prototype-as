/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.communication.filter;

import autosar21.swcomponent.communication.filter.Always;
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
import autosar21.swcomponent.communication.filter.impl.FilterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FilterFactory
extends EFactory {
    public static final FilterFactory eINSTANCE = FilterFactoryImpl.init();

    public Always createAlways();

    public MaskedNewDiffersMaskedOld createMaskedNewDiffersMaskedOld();

    public MaskedNewDiffersX createMaskedNewDiffersX();

    public MaskedNewEqualsMaskedOld createMaskedNewEqualsMaskedOld();

    public MaskedNewEqualsX createMaskedNewEqualsX();

    public Never createNever();

    public NewIsDifferent createNewIsDifferent();

    public NewIsEqual createNewIsEqual();

    public NewIsGreater createNewIsGreater();

    public NewIsGreaterOrEqual createNewIsGreaterOrEqual();

    public NewIsLess createNewIsLess();

    public NewIsLessOrEqual createNewIsLessOrEqual();

    public NewIsOutside createNewIsOutside();

    public NewIsWithin createNewIsWithin();

    public OneEveryN createOneEveryN();

    public FilterPackage getFilterPackage();
}

