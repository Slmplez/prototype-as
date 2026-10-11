/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.genericstructure.commonpatterns.admindata.impl;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.DocRevision;
import autosar21.genericstructure.commonpatterns.admindata.Modification;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DocRevisionImpl
extends ARObjectImpl
implements DocRevision {
    protected MlData10 revisionLabel;
    protected static final String REVISION_LABEL_P1_EDEFAULT = "";
    protected String revisionLabelP1 = "";
    protected boolean revisionLabelP1ESet;
    protected static final String REVISION_LABEL_P2_EDEFAULT = "";
    protected String revisionLabelP2 = "";
    protected boolean revisionLabelP2ESet;
    protected MlData10 state;
    protected MlData10 issuedBy;
    protected MlData10 date;
    protected EList<Modification> modifications;

    protected DocRevisionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AdmindataPackage.Literals.DOC_REVISION;
    }

    @Override
    public AdminData getAdminData() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AdminData)this.eContainer();
    }

    public NotificationChain basicSetAdminData(AdminData newAdminData, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAdminData, 4, msgs);
        return msgs;
    }

    @Override
    public void setAdminData(AdminData newAdminData) {
        if (newAdminData != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAdminData != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAdminData)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAdminData != null) {
                msgs = ((InternalEObject)newAdminData).eInverseAdd((InternalEObject)this, 6, AdminData.class, msgs);
            }
            if ((msgs = this.basicSetAdminData(newAdminData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAdminData, (Object)newAdminData));
        }
    }

    @Override
    public MlData10 getRevisionLabel() {
        return this.revisionLabel;
    }

    public NotificationChain basicSetRevisionLabel(MlData10 newRevisionLabel, NotificationChain msgs) {
        MlData10 oldRevisionLabel = this.revisionLabel;
        this.revisionLabel = newRevisionLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRevisionLabel, (Object)newRevisionLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRevisionLabel(MlData10 newRevisionLabel) {
        if (newRevisionLabel != this.revisionLabel) {
            NotificationChain msgs = null;
            if (this.revisionLabel != null) {
                msgs = ((InternalEObject)this.revisionLabel).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newRevisionLabel != null) {
                msgs = ((InternalEObject)newRevisionLabel).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetRevisionLabel(newRevisionLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newRevisionLabel, (Object)newRevisionLabel));
        }
    }

    @Override
    public String getRevisionLabelP1() {
        return this.revisionLabelP1;
    }

    @Override
    public void setRevisionLabelP1(String newRevisionLabelP1) {
        String oldRevisionLabelP1 = this.revisionLabelP1;
        this.revisionLabelP1 = newRevisionLabelP1;
        boolean oldRevisionLabelP1ESet = this.revisionLabelP1ESet;
        this.revisionLabelP1ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRevisionLabelP1, (Object)this.revisionLabelP1, !oldRevisionLabelP1ESet));
        }
    }

    @Override
    public void unsetRevisionLabelP1() {
        String oldRevisionLabelP1 = this.revisionLabelP1;
        boolean oldRevisionLabelP1ESet = this.revisionLabelP1ESet;
        this.revisionLabelP1 = "";
        this.revisionLabelP1ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldRevisionLabelP1, (Object)"", oldRevisionLabelP1ESet));
        }
    }

    @Override
    public boolean isSetRevisionLabelP1() {
        return this.revisionLabelP1ESet;
    }

    @Override
    public String getRevisionLabelP2() {
        return this.revisionLabelP2;
    }

    @Override
    public void setRevisionLabelP2(String newRevisionLabelP2) {
        String oldRevisionLabelP2 = this.revisionLabelP2;
        this.revisionLabelP2 = newRevisionLabelP2;
        boolean oldRevisionLabelP2ESet = this.revisionLabelP2ESet;
        this.revisionLabelP2ESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRevisionLabelP2, (Object)this.revisionLabelP2, !oldRevisionLabelP2ESet));
        }
    }

    @Override
    public void unsetRevisionLabelP2() {
        String oldRevisionLabelP2 = this.revisionLabelP2;
        boolean oldRevisionLabelP2ESet = this.revisionLabelP2ESet;
        this.revisionLabelP2 = "";
        this.revisionLabelP2ESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldRevisionLabelP2, (Object)"", oldRevisionLabelP2ESet));
        }
    }

    @Override
    public boolean isSetRevisionLabelP2() {
        return this.revisionLabelP2ESet;
    }

    @Override
    public MlData10 getState() {
        return this.state;
    }

    public NotificationChain basicSetState(MlData10 newState, NotificationChain msgs) {
        MlData10 oldState = this.state;
        this.state = newState;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldState, (Object)newState);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setState(MlData10 newState) {
        if (newState != this.state) {
            NotificationChain msgs = null;
            if (this.state != null) {
                msgs = ((InternalEObject)this.state).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newState != null) {
                msgs = ((InternalEObject)newState).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetState(newState, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newState, (Object)newState));
        }
    }

    @Override
    public MlData10 getIssuedBy() {
        return this.issuedBy;
    }

    public NotificationChain basicSetIssuedBy(MlData10 newIssuedBy, NotificationChain msgs) {
        MlData10 oldIssuedBy = this.issuedBy;
        this.issuedBy = newIssuedBy;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldIssuedBy, (Object)newIssuedBy);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIssuedBy(MlData10 newIssuedBy) {
        if (newIssuedBy != this.issuedBy) {
            NotificationChain msgs = null;
            if (this.issuedBy != null) {
                msgs = ((InternalEObject)this.issuedBy).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newIssuedBy != null) {
                msgs = ((InternalEObject)newIssuedBy).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetIssuedBy(newIssuedBy, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newIssuedBy, (Object)newIssuedBy));
        }
    }

    @Override
    public MlData10 getDate() {
        return this.date;
    }

    public NotificationChain basicSetDate(MlData10 newDate, NotificationChain msgs) {
        MlData10 oldDate = this.date;
        this.date = newDate;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDate, (Object)newDate);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDate(MlData10 newDate) {
        if (newDate != this.date) {
            NotificationChain msgs = null;
            if (this.date != null) {
                msgs = ((InternalEObject)this.date).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newDate != null) {
                msgs = ((InternalEObject)newDate).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetDate(newDate, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newDate, (Object)newDate));
        }
    }

    @Override
    public EList<Modification> getModifications() {
        if (this.modifications == null) {
            this.modifications = new EObjectContainmentWithInverseEList(Modification.class, (InternalEObject)this, 11, 4);
        }
        return this.modifications;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAdminData((AdminData)otherEnd, msgs);
            }
            case 11: {
                return ((InternalEList)this.getModifications()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAdminData(null, msgs);
            }
            case 5: {
                return this.basicSetRevisionLabel(null, msgs);
            }
            case 8: {
                return this.basicSetState(null, msgs);
            }
            case 9: {
                return this.basicSetIssuedBy(null, msgs);
            }
            case 10: {
                return this.basicSetDate(null, msgs);
            }
            case 11: {
                return ((InternalEList)this.getModifications()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, AdminData.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAdminData();
            }
            case 5: {
                return this.getRevisionLabel();
            }
            case 6: {
                return this.getRevisionLabelP1();
            }
            case 7: {
                return this.getRevisionLabelP2();
            }
            case 8: {
                return this.getState();
            }
            case 9: {
                return this.getIssuedBy();
            }
            case 10: {
                return this.getDate();
            }
            case 11: {
                return this.getModifications();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAdminData((AdminData)newValue);
                return;
            }
            case 5: {
                this.setRevisionLabel((MlData10)newValue);
                return;
            }
            case 6: {
                this.setRevisionLabelP1((String)newValue);
                return;
            }
            case 7: {
                this.setRevisionLabelP2((String)newValue);
                return;
            }
            case 8: {
                this.setState((MlData10)newValue);
                return;
            }
            case 9: {
                this.setIssuedBy((MlData10)newValue);
                return;
            }
            case 10: {
                this.setDate((MlData10)newValue);
                return;
            }
            case 11: {
                this.getModifications().clear();
                this.getModifications().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAdminData(null);
                return;
            }
            case 5: {
                this.setRevisionLabel(null);
                return;
            }
            case 6: {
                this.unsetRevisionLabelP1();
                return;
            }
            case 7: {
                this.unsetRevisionLabelP2();
                return;
            }
            case 8: {
                this.setState(null);
                return;
            }
            case 9: {
                this.setIssuedBy(null);
                return;
            }
            case 10: {
                this.setDate(null);
                return;
            }
            case 11: {
                this.getModifications().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAdminData() != null;
            }
            case 5: {
                return this.revisionLabel != null;
            }
            case 6: {
                return this.isSetRevisionLabelP1();
            }
            case 7: {
                return this.isSetRevisionLabelP2();
            }
            case 8: {
                return this.state != null;
            }
            case 9: {
                return this.issuedBy != null;
            }
            case 10: {
                return this.date != null;
            }
            case 11: {
                return this.modifications != null && !this.modifications.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (revisionLabelP1: ");
        if (this.revisionLabelP1ESet) {
            result.append(this.revisionLabelP1);
        } else {
            result.append("<unset>");
        }
        result.append(", revisionLabelP2: ");
        if (this.revisionLabelP2ESet) {
            result.append(this.revisionLabelP2);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

