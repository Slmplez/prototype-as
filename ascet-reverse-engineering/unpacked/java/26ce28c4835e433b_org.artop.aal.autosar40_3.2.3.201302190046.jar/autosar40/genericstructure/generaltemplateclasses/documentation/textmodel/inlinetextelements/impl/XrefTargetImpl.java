/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.SingleLanguageReferrableImpl;
import org.eclipse.emf.ecore.EClass;

public class XrefTargetImpl
extends SingleLanguageReferrableImpl
implements XrefTarget {
    protected XrefTargetImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.XREF_TARGET;
    }
}

