/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstContentImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuConstTextContentImpl
extends CompuConstContentImpl
implements CompuConstTextContent {
    protected static final String GVT_EDEFAULT = null;
    protected static final String VT_EDEFAULT = "";
    protected String vt = "";
    protected boolean vtESet;

    protected CompuConstTextContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONST_TEXT_CONTENT;
    }

    public String gGetVt() {
        String tgtFeatureValue = this.getVt();
        return tgtFeatureValue;
    }

    public void gSetVt(String newGVt) {
        this.setVt(newGVt);
    }

    public void gUnsetVt() {
        this.unsetVt();
    }

    public boolean gIsSetVt() {
        return this.isSetVt();
    }

    @Override
    public String getVt() {
        return this.vt;
    }

    @Override
    public void setVt(String newVt) {
        String oldVt = this.vt;
        this.vt = newVt;
        boolean oldVtESet = this.vtESet;
        this.vtESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVt, (Object)this.vt, !oldVtESet));
        }
    }

    @Override
    public void unsetVt() {
        String oldVt = this.vt;
        boolean oldVtESet = this.vtESet;
        this.vt = VT_EDEFAULT;
        this.vtESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldVt, (Object)VT_EDEFAULT, oldVtESet));
        }
    }

    @Override
    public boolean isSetVt() {
        return this.vtESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetVt();
            }
            case 6: {
                return this.getVt();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetVt((String)newValue);
                return;
            }
            case 6: {
                this.setVt((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetVt();
                return;
            }
            case 6: {
                this.unsetVt();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetVt();
            }
            case 6: {
                return this.isSetVt();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuConstTextContent.class) {
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
        if (baseClass == GCompuConstTextContent.class) {
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
        result.append(" (vt: ");
        if (this.vtESet) {
            result.append(this.vt);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

