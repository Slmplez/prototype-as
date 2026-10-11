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
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.DependencyOnFile;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.XfileSo;
import autosar3x.commonstructure.implementation.impl.DependencyImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DependencyOnFileImpl
extends DependencyImpl
implements DependencyOnFile {
    protected XfileSo xfile;

    protected DependencyOnFileImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.DEPENDENCY_ON_FILE;
    }

    public XfileSo getXfile() {
        return this.xfile;
    }

    public NotificationChain basicSetXfile(XfileSo newXfile, NotificationChain msgs) {
        XfileSo oldXfile = this.xfile;
        this.xfile = newXfile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldXfile, (Object)newXfile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setXfile(XfileSo newXfile) {
        if (newXfile != this.xfile) {
            NotificationChain msgs = null;
            if (this.xfile != null) {
                msgs = ((InternalEObject)this.xfile).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newXfile != null) {
                msgs = ((InternalEObject)newXfile).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetXfile(newXfile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newXfile, (Object)newXfile));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetXfile(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getXfile();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setXfile((XfileSo)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setXfile(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.xfile != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

