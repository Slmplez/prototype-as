/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.sphinx.platform.util.RadixConverter
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstContentImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;
import java.math.BigDecimal;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.sphinx.platform.util.RadixConverter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuConstNumericContentImpl
extends CompuConstContentImpl
implements CompuConstNumericContent {
    protected static final BigDecimal GV_EDEFAULT = null;
    protected static final String V_EDEFAULT = "";
    protected String v = "";
    protected boolean vESet;

    protected CompuConstNumericContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONST_NUMERIC_CONTENT;
    }

    public BigDecimal gGetV() {
        String tgtFeatureValue = this.getV();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetV(BigDecimal newGV) {
        this.setV(newGV.toPlainString());
    }

    public void gUnsetV() {
        this.unsetV();
    }

    public boolean gIsSetV() {
        return this.isSetV();
    }

    @Override
    public String getV() {
        return this.v;
    }

    @Override
    public void setV(String newV) {
        String oldV = this.v;
        this.v = newV;
        boolean oldVESet = this.vESet;
        this.vESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldV, (Object)this.v, !oldVESet));
        }
    }

    @Override
    public void unsetV() {
        String oldV = this.v;
        boolean oldVESet = this.vESet;
        this.v = V_EDEFAULT;
        this.vESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldV, (Object)V_EDEFAULT, oldVESet));
        }
    }

    @Override
    public boolean isSetV() {
        return this.vESet;
    }

    @Override
    public float getVAsFloat() {
        return RadixConverter.parseFloat((String)this.getV());
    }

    @Override
    public int getVAsInteger() {
        return RadixConverter.parseInt((String)this.getV());
    }

    @Override
    public int getRadixForV() {
        return RadixConverter.getRadix((String)this.getV());
    }

    @Override
    public void setV(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setV(convertedValue);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetV();
            }
            case 6: {
                return this.getV();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetV((BigDecimal)newValue);
                return;
            }
            case 6: {
                this.setV((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetV();
                return;
            }
            case 6: {
                this.unsetV();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetV();
            }
            case 6: {
                return this.isSetV();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuConstNumericContent.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuConstNumericContent.class) {
            switch (baseFeatureID) {
                case 2: {
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
        result.append(" (v: ");
        if (this.vESet) {
            result.append(this.v);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

