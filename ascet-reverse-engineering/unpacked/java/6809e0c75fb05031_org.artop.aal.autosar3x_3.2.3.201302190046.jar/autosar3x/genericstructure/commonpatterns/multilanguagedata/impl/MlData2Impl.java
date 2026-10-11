/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel2Impl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MlData2Impl
extends MlDataModel2Impl
implements MlData2 {
    protected MlData2Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA2;
    }

    public EList<GLOverviewParagraph> gGetL2s() {
        EList<L2> untypedList = this.getL2s();
        return untypedList;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetL2s();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gGetL2s().clear();
                this.gGetL2s().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gGetL2s().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return !this.gGetL2s().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GMultiLanguageOverviewParagraph.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 0;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GMultiLanguageOverviewParagraph.class) {
            switch (baseFeatureID) {
                case 0: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

