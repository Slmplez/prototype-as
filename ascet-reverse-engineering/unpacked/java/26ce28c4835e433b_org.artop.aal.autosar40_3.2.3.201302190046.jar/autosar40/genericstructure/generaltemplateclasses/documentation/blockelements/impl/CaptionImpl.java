/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.MultilanguageReferrableImpl;
import org.eclipse.emf.ecore.EClass;

public class CaptionImpl
extends MultilanguageReferrableImpl
implements Caption {
    protected CaptionImpl() {
    }

    protected EClass eStaticClass() {
        return BlockelementsPackage.Literals.CAPTION;
    }
}

