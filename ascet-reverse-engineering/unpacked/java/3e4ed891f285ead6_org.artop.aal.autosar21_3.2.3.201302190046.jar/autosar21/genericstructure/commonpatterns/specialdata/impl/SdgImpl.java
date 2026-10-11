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
package autosar21.genericstructure.commonpatterns.specialdata.impl;

import autosar21.genericstructure.commonpatterns.specialdata.Caption;
import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SdgImpl
extends ARObjectImpl
implements Sdg {
    protected static final String GID_EDEFAULT = "";
    protected String gid = "";
    protected boolean gidESet;
    protected Caption sdgCaption;
    protected SdgContents sdgContentsType;

    protected SdgImpl() {
    }

    protected EClass eStaticClass() {
        return SpecialdataPackage.Literals.SDG;
    }

    public String getGid() {
        return this.gid;
    }

    public void setGid(String newGid) {
        String oldGid = this.gid;
        this.gid = newGid;
        boolean oldGidESet = this.gidESet;
        this.gidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldGid, (Object)this.gid, !oldGidESet));
        }
    }

    public void unsetGid() {
        String oldGid = this.gid;
        boolean oldGidESet = this.gidESet;
        this.gid = GID_EDEFAULT;
        this.gidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldGid, (Object)GID_EDEFAULT, oldGidESet));
        }
    }

    public boolean isSetGid() {
        return this.gidESet;
    }

    public Caption getSdgCaption() {
        return this.sdgCaption;
    }

    public NotificationChain basicSetSdgCaption(Caption newSdgCaption, NotificationChain msgs) {
        Caption oldSdgCaption = this.sdgCaption;
        this.sdgCaption = newSdgCaption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSdgCaption, (Object)newSdgCaption);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSdgCaption(Caption newSdgCaption) {
        if (newSdgCaption != this.sdgCaption) {
            NotificationChain msgs = null;
            if (this.sdgCaption != null) {
                msgs = ((InternalEObject)this.sdgCaption).eInverseRemove((InternalEObject)this, 16, Caption.class, msgs);
            }
            if (newSdgCaption != null) {
                msgs = ((InternalEObject)newSdgCaption).eInverseAdd((InternalEObject)this, 16, Caption.class, msgs);
            }
            if ((msgs = this.basicSetSdgCaption(newSdgCaption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSdgCaption, (Object)newSdgCaption));
        }
    }

    public SdgContents getSdgContentsType() {
        return this.sdgContentsType;
    }

    public NotificationChain basicSetSdgContentsType(SdgContents newSdgContentsType, NotificationChain msgs) {
        SdgContents oldSdgContentsType = this.sdgContentsType;
        this.sdgContentsType = newSdgContentsType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSdgContentsType, (Object)newSdgContentsType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSdgContentsType(SdgContents newSdgContentsType) {
        if (newSdgContentsType != this.sdgContentsType) {
            NotificationChain msgs = null;
            if (this.sdgContentsType != null) {
                msgs = ((InternalEObject)this.sdgContentsType).eInverseRemove((InternalEObject)this, 4, SdgContents.class, msgs);
            }
            if (newSdgContentsType != null) {
                msgs = ((InternalEObject)newSdgContentsType).eInverseAdd((InternalEObject)this, 4, SdgContents.class, msgs);
            }
            if ((msgs = this.basicSetSdgContentsType(newSdgContentsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSdgContentsType, (Object)newSdgContentsType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.sdgCaption != null) {
                    msgs = ((InternalEObject)this.sdgCaption).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetSdgCaption((Caption)otherEnd, msgs);
            }
            case 6: {
                if (this.sdgContentsType != null) {
                    msgs = ((InternalEObject)this.sdgContentsType).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetSdgContentsType((SdgContents)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetSdgCaption(null, msgs);
            }
            case 6: {
                return this.basicSetSdgContentsType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGid();
            }
            case 5: {
                return this.getSdgCaption();
            }
            case 6: {
                return this.getSdgContentsType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGid((String)newValue);
                return;
            }
            case 5: {
                this.setSdgCaption((Caption)newValue);
                return;
            }
            case 6: {
                this.setSdgContentsType((SdgContents)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetGid();
                return;
            }
            case 5: {
                this.setSdgCaption(null);
                return;
            }
            case 6: {
                this.setSdgContentsType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetGid();
            }
            case 5: {
                return this.sdgCaption != null;
            }
            case 6: {
                return this.sdgContentsType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (gid: ");
        if (this.gidESet) {
            result.append(this.gid);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

