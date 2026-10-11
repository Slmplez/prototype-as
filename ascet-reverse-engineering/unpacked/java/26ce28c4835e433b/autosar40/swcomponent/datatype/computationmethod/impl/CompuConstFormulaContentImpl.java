/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuConstContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CompuConstFormulaContentImpl
extends CompuConstContentImpl
implements CompuConstFormulaContent {
    protected NumericalValueVariationPoint vf;

    protected CompuConstFormulaContentImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONST_FORMULA_CONTENT;
    }

    public NumericalValueVariationPoint getVf() {
        return this.vf;
    }

    public NotificationChain basicSetVf(NumericalValueVariationPoint newVf, NotificationChain msgs) {
        NumericalValueVariationPoint oldVf = this.vf;
        this.vf = newVf;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldVf, (Object)newVf);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVf(NumericalValueVariationPoint newVf) {
        if (newVf != this.vf) {
            NotificationChain msgs = null;
            if (this.vf != null) {
                msgs = ((InternalEObject)this.vf).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newVf != null) {
                msgs = ((InternalEObject)newVf).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetVf(newVf, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newVf, (Object)newVf));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetVf(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getVf();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setVf((NumericalValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setVf(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.vf != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

