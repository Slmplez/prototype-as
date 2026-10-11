/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel10Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import org.eclipse.emf.ecore.EClass;

public class MlData10Impl
extends MlDataModel10Impl
implements MlData10 {
    protected MlData10Impl() {
    }

    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA10;
    }
}

