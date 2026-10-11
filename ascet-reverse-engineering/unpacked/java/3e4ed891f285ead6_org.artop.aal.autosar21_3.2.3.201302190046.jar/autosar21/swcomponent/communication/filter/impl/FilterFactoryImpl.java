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
package autosar21.swcomponent.communication.filter.impl;

import autosar21.swcomponent.communication.filter.Always;
import autosar21.swcomponent.communication.filter.FilterFactory;
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
import autosar21.swcomponent.communication.filter.impl.AlwaysImpl;
import autosar21.swcomponent.communication.filter.impl.MaskedNewDiffersMaskedOldImpl;
import autosar21.swcomponent.communication.filter.impl.MaskedNewDiffersXImpl;
import autosar21.swcomponent.communication.filter.impl.MaskedNewEqualsMaskedOldImpl;
import autosar21.swcomponent.communication.filter.impl.MaskedNewEqualsXImpl;
import autosar21.swcomponent.communication.filter.impl.NeverImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsDifferentImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsEqualImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsGreaterImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsGreaterOrEqualImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsLessImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsLessOrEqualImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsOutsideImpl;
import autosar21.swcomponent.communication.filter.impl.NewIsWithinImpl;
import autosar21.swcomponent.communication.filter.impl.OneEveryNImpl;
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
            FilterFactory theFilterFactory = (FilterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/communication/f");
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
            case 1: {
                return this.createMaskedNewDiffersMaskedOld();
            }
            case 2: {
                return this.createMaskedNewDiffersX();
            }
            case 3: {
                return this.createMaskedNewEqualsMaskedOld();
            }
            case 4: {
                return this.createMaskedNewEqualsX();
            }
            case 5: {
                return this.createNever();
            }
            case 6: {
                return this.createNewIsDifferent();
            }
            case 7: {
                return this.createNewIsEqual();
            }
            case 8: {
                return this.createNewIsGreater();
            }
            case 9: {
                return this.createNewIsGreaterOrEqual();
            }
            case 10: {
                return this.createNewIsLess();
            }
            case 11: {
                return this.createNewIsLessOrEqual();
            }
            case 12: {
                return this.createNewIsOutside();
            }
            case 13: {
                return this.createNewIsWithin();
            }
            case 14: {
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

    public MaskedNewEqualsMaskedOld createMaskedNewEqualsMaskedOld() {
        MaskedNewEqualsMaskedOldImpl maskedNewEqualsMaskedOld = new MaskedNewEqualsMaskedOldImpl();
        return maskedNewEqualsMaskedOld;
    }

    public MaskedNewEqualsX createMaskedNewEqualsX() {
        MaskedNewEqualsXImpl maskedNewEqualsX = new MaskedNewEqualsXImpl();
        return maskedNewEqualsX;
    }

    public Never createNever() {
        NeverImpl never = new NeverImpl();
        return never;
    }

    public NewIsDifferent createNewIsDifferent() {
        NewIsDifferentImpl newIsDifferent = new NewIsDifferentImpl();
        return newIsDifferent;
    }

    public NewIsEqual createNewIsEqual() {
        NewIsEqualImpl newIsEqual = new NewIsEqualImpl();
        return newIsEqual;
    }

    public NewIsGreater createNewIsGreater() {
        NewIsGreaterImpl newIsGreater = new NewIsGreaterImpl();
        return newIsGreater;
    }

    public NewIsGreaterOrEqual createNewIsGreaterOrEqual() {
        NewIsGreaterOrEqualImpl newIsGreaterOrEqual = new NewIsGreaterOrEqualImpl();
        return newIsGreaterOrEqual;
    }

    public NewIsLess createNewIsLess() {
        NewIsLessImpl newIsLess = new NewIsLessImpl();
        return newIsLess;
    }

    public NewIsLessOrEqual createNewIsLessOrEqual() {
        NewIsLessOrEqualImpl newIsLessOrEqual = new NewIsLessOrEqualImpl();
        return newIsLessOrEqual;
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

