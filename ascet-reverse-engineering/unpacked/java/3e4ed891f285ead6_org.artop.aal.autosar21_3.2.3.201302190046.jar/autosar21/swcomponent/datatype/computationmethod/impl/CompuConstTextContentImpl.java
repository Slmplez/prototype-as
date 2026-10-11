/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.impl.CompuConstContentImpl;
import autosar21.swcomponent.datatype.valuemodel.Vt;
import autosar21.util.Autosar21Factory;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
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
    protected Vt vt;

    protected CompuConstTextContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONST_TEXT_CONTENT;
    }

    public String gGetVt() {
        Vt vt = this.getVt();
        if (vt == null) {
            vt = Autosar21Factory.eINSTANCE.createVt();
        }
        String tgtFeatureValue = vt.getMixedText();
        return tgtFeatureValue;
    }

    public void gSetVt(String newGVt) {
        Vt vt = this.getVt();
        if (vt == null) {
            vt = Autosar21Factory.eINSTANCE.createVt();
            this.setVt(vt);
        }
        vt.setMixedText(newGVt);
    }

    public void gUnsetVt() {
        Vt vt = this.getVt();
        if (vt == null) {
            vt = Autosar21Factory.eINSTANCE.createVt();
        }
        vt.unsetMixed();
    }

    public boolean gIsSetVt() {
        Vt vt = this.getVt();
        if (vt == null) {
            vt = Autosar21Factory.eINSTANCE.createVt();
        }
        return vt.isSetMixed();
    }

    @Override
    public Vt getVt() {
        return this.vt;
    }

    public NotificationChain basicSetVt(Vt newVt, NotificationChain msgs) {
        Vt oldVt = this.vt;
        this.vt = newVt;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVt, (Object)newVt);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVt(Vt newVt) {
        if (newVt != this.vt) {
            NotificationChain msgs = null;
            if (this.vt != null) {
                msgs = ((InternalEObject)this.vt).eInverseRemove((InternalEObject)this, 5, Vt.class, msgs);
            }
            if (newVt != null) {
                msgs = ((InternalEObject)newVt).eInverseAdd((InternalEObject)this, 5, Vt.class, msgs);
            }
            if ((msgs = this.basicSetVt(newVt, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVt, (Object)newVt));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.vt != null) {
                    msgs = ((InternalEObject)this.vt).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetVt((Vt)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetVt(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
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
                this.setVt((Vt)newValue);
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
                this.setVt(null);
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
                return this.vt != null;
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
}

