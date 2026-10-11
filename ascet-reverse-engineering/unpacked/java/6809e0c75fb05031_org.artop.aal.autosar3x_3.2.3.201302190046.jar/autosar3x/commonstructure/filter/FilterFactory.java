/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.filter;

import autosar3x.commonstructure.filter.Always;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.MaskedNewDiffersMaskedOld;
import autosar3x.commonstructure.filter.MaskedNewDiffersX;
import autosar3x.commonstructure.filter.MaskedNewEqualsX;
import autosar3x.commonstructure.filter.Never;
import autosar3x.commonstructure.filter.NewIsOutside;
import autosar3x.commonstructure.filter.NewIsWithin;
import autosar3x.commonstructure.filter.OneEveryN;
import autosar3x.commonstructure.filter.impl.FilterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FilterFactory
extends EFactory {
    public static final FilterFactory eINSTANCE = FilterFactoryImpl.init();

    public Always createAlways();

    public MaskedNewDiffersMaskedOld createMaskedNewDiffersMaskedOld();

    public MaskedNewDiffersX createMaskedNewDiffersX();

    public MaskedNewEqualsX createMaskedNewEqualsX();

    public Never createNever();

    public NewIsOutside createNewIsOutside();

    public NewIsWithin createNewIsWithin();

    public OneEveryN createOneEveryN();

    public FilterPackage getFilterPackage();
}

