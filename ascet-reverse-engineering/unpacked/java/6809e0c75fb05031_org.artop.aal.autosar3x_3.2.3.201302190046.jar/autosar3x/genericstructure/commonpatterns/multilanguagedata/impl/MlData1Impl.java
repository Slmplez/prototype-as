/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel1Impl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MlData1Impl
extends MlDataModel1Impl
implements MlData1 {
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected static final String KEEP_WITH_PREVIOUS_EDEFAULT = "";
    protected String keepWithPrevious = "";
    protected boolean keepWithPreviousESet;

    protected MlData1Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA1;
    }

    public EList<GLParagraph> gGetL1s() {
        EList<L1> untypedList = this.getL1s();
        return untypedList;
    }

    @Override
    public String getHelpEntry() {
        return this.helpEntry;
    }

    @Override
    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public String getKeepWithPrevious() {
        return this.keepWithPrevious;
    }

    @Override
    public void setKeepWithPrevious(String newKeepWithPrevious) {
        String oldKeepWithPrevious = this.keepWithPrevious;
        this.keepWithPrevious = newKeepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPreviousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldKeepWithPrevious, (Object)this.keepWithPrevious, !oldKeepWithPreviousESet));
        }
    }

    @Override
    public void unsetKeepWithPrevious() {
        String oldKeepWithPrevious = this.keepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPrevious = "";
        this.keepWithPreviousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldKeepWithPrevious, (Object)"", oldKeepWithPreviousESet));
        }
    }

    @Override
    public boolean isSetKeepWithPrevious() {
        return this.keepWithPreviousESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetL1s();
            }
            case 6: {
                return this.getHelpEntry();
            }
            case 7: {
                return this.getKeepWithPrevious();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gGetL1s().clear();
                this.gGetL1s().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 7: {
                this.setKeepWithPrevious((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gGetL1s().clear();
                return;
            }
            case 6: {
                this.unsetHelpEntry();
                return;
            }
            case 7: {
                this.unsetKeepWithPrevious();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return !this.gGetL1s().isEmpty();
            }
            case 6: {
                return this.isSetHelpEntry();
            }
            case 7: {
                return this.isSetKeepWithPrevious();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GMultiLanguageParagraph.class) {
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
        if (baseClass == GMultiLanguageParagraph.class) {
            switch (baseFeatureID) {
                case 0: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(", keepWithPrevious: ");
        if (this.keepWithPreviousESet) {
            result.append(this.keepWithPrevious);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

