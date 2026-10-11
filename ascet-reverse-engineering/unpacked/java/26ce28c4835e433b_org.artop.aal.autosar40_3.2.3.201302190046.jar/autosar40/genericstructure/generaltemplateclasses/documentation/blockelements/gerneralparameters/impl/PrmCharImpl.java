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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharContents;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PrmCharImpl
extends ARObjectImpl
implements PrmChar {
    protected DocumentationBlock cond;
    protected PrmCharContents prmCharContents;
    protected DocumentationBlock remark;

    protected PrmCharImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR;
    }

    public GeneralParameter getGeneralParameter() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (GeneralParameter)this.eContainer();
    }

    public NotificationChain basicSetGeneralParameter(GeneralParameter newGeneralParameter, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGeneralParameter, 4, msgs);
        return msgs;
    }

    public void setGeneralParameter(GeneralParameter newGeneralParameter) {
        if (newGeneralParameter != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newGeneralParameter != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGeneralParameter)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGeneralParameter != null) {
                msgs = ((InternalEObject)newGeneralParameter).eInverseAdd((InternalEObject)this, 19, GeneralParameter.class, msgs);
            }
            if ((msgs = this.basicSetGeneralParameter(newGeneralParameter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGeneralParameter, (Object)newGeneralParameter));
        }
    }

    public DocumentationBlock getCond() {
        return this.cond;
    }

    public NotificationChain basicSetCond(DocumentationBlock newCond, NotificationChain msgs) {
        DocumentationBlock oldCond = this.cond;
        this.cond = newCond;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCond, (Object)newCond);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCond(DocumentationBlock newCond) {
        if (newCond != this.cond) {
            NotificationChain msgs = null;
            if (this.cond != null) {
                msgs = ((InternalEObject)this.cond).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newCond != null) {
                msgs = ((InternalEObject)newCond).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetCond(newCond, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCond, (Object)newCond));
        }
    }

    public PrmCharContents getPrmCharContents() {
        return this.prmCharContents;
    }

    public NotificationChain basicSetPrmCharContents(PrmCharContents newPrmCharContents, NotificationChain msgs) {
        PrmCharContents oldPrmCharContents = this.prmCharContents;
        this.prmCharContents = newPrmCharContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPrmCharContents, (Object)newPrmCharContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPrmCharContents(PrmCharContents newPrmCharContents) {
        if (newPrmCharContents != this.prmCharContents) {
            NotificationChain msgs = null;
            if (this.prmCharContents != null) {
                msgs = ((InternalEObject)this.prmCharContents).eInverseRemove((InternalEObject)this, 4, PrmCharContents.class, msgs);
            }
            if (newPrmCharContents != null) {
                msgs = ((InternalEObject)newPrmCharContents).eInverseAdd((InternalEObject)this, 4, PrmCharContents.class, msgs);
            }
            if ((msgs = this.basicSetPrmCharContents(newPrmCharContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newPrmCharContents, (Object)newPrmCharContents));
        }
    }

    public DocumentationBlock getRemark() {
        return this.remark;
    }

    public NotificationChain basicSetRemark(DocumentationBlock newRemark, NotificationChain msgs) {
        DocumentationBlock oldRemark = this.remark;
        this.remark = newRemark;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRemark, (Object)newRemark);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRemark(DocumentationBlock newRemark) {
        if (newRemark != this.remark) {
            NotificationChain msgs = null;
            if (this.remark != null) {
                msgs = ((InternalEObject)this.remark).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newRemark != null) {
                msgs = ((InternalEObject)newRemark).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetRemark(newRemark, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newRemark, (Object)newRemark));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGeneralParameter((GeneralParameter)otherEnd, msgs);
            }
            case 6: {
                if (this.prmCharContents != null) {
                    msgs = ((InternalEObject)this.prmCharContents).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetPrmCharContents((PrmCharContents)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetGeneralParameter(null, msgs);
            }
            case 5: {
                return this.basicSetCond(null, msgs);
            }
            case 6: {
                return this.basicSetPrmCharContents(null, msgs);
            }
            case 7: {
                return this.basicSetRemark(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, GeneralParameter.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGeneralParameter();
            }
            case 5: {
                return this.getCond();
            }
            case 6: {
                return this.getPrmCharContents();
            }
            case 7: {
                return this.getRemark();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGeneralParameter((GeneralParameter)newValue);
                return;
            }
            case 5: {
                this.setCond((DocumentationBlock)newValue);
                return;
            }
            case 6: {
                this.setPrmCharContents((PrmCharContents)newValue);
                return;
            }
            case 7: {
                this.setRemark((DocumentationBlock)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setGeneralParameter(null);
                return;
            }
            case 5: {
                this.setCond(null);
                return;
            }
            case 6: {
                this.setPrmCharContents(null);
                return;
            }
            case 7: {
                this.setRemark(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getGeneralParameter() != null;
            }
            case 5: {
                return this.cond != null;
            }
            case 6: {
                return this.prmCharContents != null;
            }
            case 7: {
                return this.remark != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

