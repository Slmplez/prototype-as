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
package autosar3x.swcomponent.datatype.computationmethod.impl;

import autosar3x.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.ProgCode;
import autosar3x.swcomponent.datatype.computationmethod.impl.CompuContentImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CompuProgCodeImpl
extends CompuContentImpl
implements CompuProgCode {
    protected ProgCode progCode;

    protected CompuProgCodeImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_PROG_CODE;
    }

    public ProgCode getProgCode() {
        return this.progCode;
    }

    public NotificationChain basicSetProgCode(ProgCode newProgCode, NotificationChain msgs) {
        ProgCode oldProgCode = this.progCode;
        this.progCode = newProgCode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldProgCode, (Object)newProgCode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setProgCode(ProgCode newProgCode) {
        if (newProgCode != this.progCode) {
            NotificationChain msgs = null;
            if (this.progCode != null) {
                msgs = ((InternalEObject)this.progCode).eInverseRemove((InternalEObject)this, 4, ProgCode.class, msgs);
            }
            if (newProgCode != null) {
                msgs = ((InternalEObject)newProgCode).eInverseAdd((InternalEObject)this, 4, ProgCode.class, msgs);
            }
            if ((msgs = this.basicSetProgCode(newProgCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newProgCode, (Object)newProgCode));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.progCode != null) {
                    msgs = ((InternalEObject)this.progCode).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetProgCode((ProgCode)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetProgCode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getProgCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setProgCode((ProgCode)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setProgCode(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.progCode != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

