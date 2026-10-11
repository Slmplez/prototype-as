/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.commonstructure.filter.impl;

import autosar3x.commonstructure.filter.Always;
import autosar3x.commonstructure.filter.FilterFactory;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.MaskedNewDiffersMaskedOld;
import autosar3x.commonstructure.filter.MaskedNewDiffersX;
import autosar3x.commonstructure.filter.MaskedNewEqualsX;
import autosar3x.commonstructure.filter.Never;
import autosar3x.commonstructure.filter.NewIsOutside;
import autosar3x.commonstructure.filter.NewIsWithin;
import autosar3x.commonstructure.filter.OneEveryN;
import autosar3x.commonstructure.filter.impl.AlwaysImpl;
import autosar3x.commonstructure.filter.impl.MaskedNewDiffersMaskedOldImpl;
import autosar3x.commonstructure.filter.impl.MaskedNewDiffersXImpl;
import autosar3x.commonstructure.filter.impl.MaskedNewEqualsXImpl;
import autosar3x.commonstructure.filter.impl.NeverImpl;
import autosar3x.commonstructure.filter.impl.NewIsOutsideImpl;
import autosar3x.commonstructure.filter.impl.NewIsWithinImpl;
import autosar3x.commonstructure.filter.impl.OneEveryNImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FilterFactoryImpl
extends EFactoryImpl
implements FilterFactory {
    public static FilterFactory init() {
        try {
            FilterFactory theFilterFactory = (FilterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/f");
            if (theFilterFactory != null) {
                return theFilterFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FilterFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAlways();
            }
            case 2: {
                return this.createMaskedNewDiffersMaskedOld();
            }
            case 3: {
                return this.createMaskedNewDiffersX();
            }
            case 4: {
                return this.createMaskedNewEqualsX();
            }
            case 5: {
                return this.createNever();
            }
            case 6: {
                return this.createNewIsOutside();
            }
            case 7: {
                return this.createNewIsWithin();
            }
            case 8: {
                return this.createOneEveryN();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Always createAlways() {
        AlwaysImpl always = new AlwaysImpl();
        return always;
    }

    public MaskedNewDiffersMaskedOld createMaskedNewDiffersMaskedOld() {
        MaskedNewDiffersMaskedOldImpl maskedNewDiffersMaskedOld = new MaskedNewDiffersMaskedOldImpl();
        return maskedNewDiffersMaskedOld;
    }

    public MaskedNewDiffersX createMaskedNewDiffersX() {
        MaskedNewDiffersXImpl maskedNewDiffersX = new MaskedNewDiffersXImpl();
        return maskedNewDiffersX;
    }

    public MaskedNewEqualsX createMaskedNewEqualsX() {
        MaskedNewEqualsXImpl maskedNewEqualsX = new MaskedNewEqualsXImpl();
        return maskedNewEqualsX;
    }

    public Never createNever() {
        NeverImpl never = new NeverImpl();
        return never;
    }

    public NewIsOutside createNewIsOutside() {
        NewIsOutsideImpl newIsOutside = new NewIsOutsideImpl();
        return newIsOutside;
    }

    public NewIsWithin createNewIsWithin() {
        NewIsWithinImpl newIsWithin = new NewIsWithinImpl();
        return newIsWithin;
    }

    public OneEveryN createOneEveryN() {
        OneEveryNImpl oneEveryN = new OneEveryNImpl();
        return oneEveryN;
    }

    public FilterPackage getFilterPackage() {
        return (FilterPackage)this.getEPackage();
    }

    @Deprecated
    public static FilterPackage getPackage() {
        return FilterPackage.eINSTANCE;
    }
}

