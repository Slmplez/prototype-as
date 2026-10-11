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
package autosar40.genericstructure.generaltemplateclasses.identifiable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class DescribableImpl
extends ARObjectImpl
implements Describable {
    protected MultiLanguageOverviewParagraph desc;
    protected DocumentationBlock introduction;

    protected DescribableImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.DESCRIBABLE;
    }

    public MultiLanguageOverviewParagraph getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MultiLanguageOverviewParagraph newDesc, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDesc(MultiLanguageOverviewParagraph newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDesc, (Object)newDesc));
        }
    }

    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDesc(null, msgs);
            }
            case 5: {
                return this.basicSetIntroduction(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDesc();
            }
            case 5: {
                return this.getIntroduction();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 5: {
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDesc(null);
                return;
            }
            case 5: {
                this.setIntroduction(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.desc != null;
            }
            case 5: {
                return this.introduction != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

