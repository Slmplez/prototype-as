/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.DSAKeyValueType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class DSAKeyValueTypeImpl
extends MinimalEObjectImpl.Container
implements DSAKeyValueType {
    protected static final byte[] P_EDEFAULT = null;
    protected byte[] p = P_EDEFAULT;
    protected static final byte[] Q_EDEFAULT = null;
    protected byte[] q = Q_EDEFAULT;
    protected static final byte[] J_EDEFAULT = null;
    protected byte[] j = J_EDEFAULT;
    protected static final byte[] G_EDEFAULT = null;
    protected byte[] g = G_EDEFAULT;
    protected static final byte[] Y_EDEFAULT = null;
    protected byte[] y = Y_EDEFAULT;
    protected static final byte[] SEED_EDEFAULT = null;
    protected byte[] seed = SEED_EDEFAULT;
    protected static final byte[] PGEN_COUNTER_EDEFAULT = null;
    protected byte[] pgenCounter = PGEN_COUNTER_EDEFAULT;

    protected DSAKeyValueTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.DSA_KEY_VALUE_TYPE;
    }

    @Override
    public byte[] getP() {
        return this.p;
    }

    @Override
    public void setP(byte[] newP) {
        byte[] oldP = this.p;
        this.p = newP;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldP, (Object)this.p));
        }
    }

    @Override
    public byte[] getQ() {
        return this.q;
    }

    @Override
    public void setQ(byte[] newQ) {
        byte[] oldQ = this.q;
        this.q = newQ;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldQ, (Object)this.q));
        }
    }

    @Override
    public byte[] getJ() {
        return this.j;
    }

    @Override
    public void setJ(byte[] newJ) {
        byte[] oldJ = this.j;
        this.j = newJ;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldJ, (Object)this.j));
        }
    }

    @Override
    public byte[] getG() {
        return this.g;
    }

    @Override
    public void setG(byte[] newG) {
        byte[] oldG = this.g;
        this.g = newG;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldG, (Object)this.g));
        }
    }

    @Override
    public byte[] getY() {
        return this.y;
    }

    @Override
    public void setY(byte[] newY) {
        byte[] oldY = this.y;
        this.y = newY;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldY, (Object)this.y));
        }
    }

    @Override
    public byte[] getSeed() {
        return this.seed;
    }

    @Override
    public void setSeed(byte[] newSeed) {
        byte[] oldSeed = this.seed;
        this.seed = newSeed;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSeed, (Object)this.seed));
        }
    }

    @Override
    public byte[] getPgenCounter() {
        return this.pgenCounter;
    }

    @Override
    public void setPgenCounter(byte[] newPgenCounter) {
        byte[] oldPgenCounter = this.pgenCounter;
        this.pgenCounter = newPgenCounter;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPgenCounter, (Object)this.pgenCounter));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getP();
            }
            case 1: {
                return this.getQ();
            }
            case 2: {
                return this.getJ();
            }
            case 3: {
                return this.getG();
            }
            case 4: {
                return this.getY();
            }
            case 5: {
                return this.getSeed();
            }
            case 6: {
                return this.getPgenCounter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setP((byte[])newValue);
                return;
            }
            case 1: {
                this.setQ((byte[])newValue);
                return;
            }
            case 2: {
                this.setJ((byte[])newValue);
                return;
            }
            case 3: {
                this.setG((byte[])newValue);
                return;
            }
            case 4: {
                this.setY((byte[])newValue);
                return;
            }
            case 5: {
                this.setSeed((byte[])newValue);
                return;
            }
            case 6: {
                this.setPgenCounter((byte[])newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setP(P_EDEFAULT);
                return;
            }
            case 1: {
                this.setQ(Q_EDEFAULT);
                return;
            }
            case 2: {
                this.setJ(J_EDEFAULT);
                return;
            }
            case 3: {
                this.setG(G_EDEFAULT);
                return;
            }
            case 4: {
                this.setY(Y_EDEFAULT);
                return;
            }
            case 5: {
                this.setSeed(SEED_EDEFAULT);
                return;
            }
            case 6: {
                this.setPgenCounter(PGEN_COUNTER_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return P_EDEFAULT == null ? this.p != null : !P_EDEFAULT.equals(this.p);
            }
            case 1: {
                return Q_EDEFAULT == null ? this.q != null : !Q_EDEFAULT.equals(this.q);
            }
            case 2: {
                return J_EDEFAULT == null ? this.j != null : !J_EDEFAULT.equals(this.j);
            }
            case 3: {
                return G_EDEFAULT == null ? this.g != null : !G_EDEFAULT.equals(this.g);
            }
            case 4: {
                return Y_EDEFAULT == null ? this.y != null : !Y_EDEFAULT.equals(this.y);
            }
            case 5: {
                return SEED_EDEFAULT == null ? this.seed != null : !SEED_EDEFAULT.equals(this.seed);
            }
            case 6: {
                return PGEN_COUNTER_EDEFAULT == null ? this.pgenCounter != null : !PGEN_COUNTER_EDEFAULT.equals(this.pgenCounter);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (p: ");
        result.append(this.p);
        result.append(", q: ");
        result.append(this.q);
        result.append(", j: ");
        result.append(this.j);
        result.append(", g: ");
        result.append(this.g);
        result.append(", y: ");
        result.append(this.y);
        result.append(", seed: ");
        result.append(this.seed);
        result.append(", pgenCounter: ");
        result.append(this.pgenCounter);
        result.append(')');
        return result.toString();
    }
}

