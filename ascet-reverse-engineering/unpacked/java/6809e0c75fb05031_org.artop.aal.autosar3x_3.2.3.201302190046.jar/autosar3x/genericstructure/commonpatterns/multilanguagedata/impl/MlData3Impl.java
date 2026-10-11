/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel3Impl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData3;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import org.eclipse.emf.ecore.EClass;

public class MlData3Impl
extends MlDataModel3Impl
implements MlData3 {
    protected MlData3Impl() {
    }

    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA3;
    }
}

