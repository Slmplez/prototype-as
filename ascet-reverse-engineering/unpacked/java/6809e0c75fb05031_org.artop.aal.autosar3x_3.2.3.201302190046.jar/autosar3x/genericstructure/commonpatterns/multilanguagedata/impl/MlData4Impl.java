/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel4Impl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import org.eclipse.emf.ecore.EClass;

public class MlData4Impl
extends MlDataModel4Impl
implements MlData4 {
    protected MlData4Impl() {
    }

    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA4;
    }
}

