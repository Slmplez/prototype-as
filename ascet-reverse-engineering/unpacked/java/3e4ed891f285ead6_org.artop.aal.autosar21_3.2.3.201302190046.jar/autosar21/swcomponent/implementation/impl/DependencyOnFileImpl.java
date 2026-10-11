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
package autosar21.swcomponent.implementation.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.swcomponent.implementation.DependencyOnFile;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.implementation.impl.DependencyImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DependencyOnFileImpl
extends DependencyImpl
implements DependencyOnFile {
    protected Xfile xfile;

    protected DependencyOnFileImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.DEPENDENCY_ON_FILE;
    }

    public Xfile getXfile() {
        return this.xfile;
    }

    public NotificationChain basicSetXfile(Xfile newXfile, NotificationChain msgs) {
        Xfile oldXfile = this.xfile;
        this.xfile = newXfile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldXfile, (Object)newXfile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setXfile(Xfile newXfile) {
        if (newXfile != this.xfile) {
            NotificationChain msgs = null;
            if (this.xfile != null) {
                msgs = ((InternalEObject)this.xfile).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newXfile != null) {
                msgs = ((InternalEObject)newXfile).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetXfile(newXfile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newXfile, (Object)newXfile));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetXfile(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getXfile();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setXfile((Xfile)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setXfile(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.xfile != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

