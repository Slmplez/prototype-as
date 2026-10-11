/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.admindata.impl;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.admindata.Modification;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ModificationImpl
extends ARObjectImpl
implements Modification {
    protected MultiLanguageOverviewParagraph change;
    protected MultiLanguageOverviewParagraph reason;

    protected ModificationImpl() {
    }

    protected EClass eStaticClass() {
        return AdmindataPackage.Literals.MODIFICATION;
    }

    public DocRevision getDocRevision() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DocRevision)this.eContainer();
    }

    public NotificationChain basicSetDocRevision(DocRevision newDocRevision, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocRevision, 4, msgs);
        return msgs;
    }

    public void setDocRevision(DocRevision newDocRevision) {
        if (newDocRevision != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDocRevision != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocRevision)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocRevision != null) {
                msgs = ((InternalEObject)newDocRevision).eInverseAdd((InternalEObject)this, 11, DocRevision.class, msgs);
            }
            if ((msgs = this.basicSetDocRevision(newDocRevision, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDocRevision, (Object)newDocRevision));
        }
    }

    public MultiLanguageOverviewParagraph getChange() {
        return this.change;
    }

    public NotificationChain basicSetChange(MultiLanguageOverviewParagraph newChange, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldChange = this.change;
        this.change = newChange;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldChange, (Object)newChange);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setChange(MultiLanguageOverviewParagraph newChange) {
        if (newChange != this.change) {
            NotificationChain msgs = null;
            if (this.change != null) {
                msgs = ((InternalEObject)this.change).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newChange != null) {
                msgs = ((InternalEObject)newChange).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetChange(newChange, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newChange, (Object)newChange));
        }
    }

    public MultiLanguageOverviewParagraph getReason() {
        return this.reason;
    }

    public NotificationChain basicSetReason(MultiLanguageOverviewParagraph newReason, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldReason = this.reason;
        this.reason = newReason;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldReason, (Object)newReason);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setReason(MultiLanguageOverviewParagraph newReason) {
        if (newReason != this.reason) {
            NotificationChain msgs = null;
            if (this.reason != null) {
                msgs = ((InternalEObject)this.reason).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newReason != null) {
                msgs = ((InternalEObject)newReason).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetReason(newReason, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newReason, (Object)newReason));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDocRevision((DocRevision)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDocRevision(null, msgs);
            }
            case 5: {
                return this.basicSetChange(null, msgs);
            }
            case 6: {
                return this.basicSetReason(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 11, DocRevision.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDocRevision();
            }
            case 5: {
                return this.getChange();
            }
            case 6: {
                return this.getReason();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDocRevision((DocRevision)newValue);
                return;
            }
            case 5: {
                this.setChange((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 6: {
                this.setReason((MultiLanguageOverviewParagraph)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDocRevision(null);
                return;
            }
            case 5: {
                this.setChange(null);
                return;
            }
            case 6: {
                this.setReason(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDocRevision() != null;
            }
            case 5: {
                return this.change != null;
            }
            case 6: {
                return this.reason != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

