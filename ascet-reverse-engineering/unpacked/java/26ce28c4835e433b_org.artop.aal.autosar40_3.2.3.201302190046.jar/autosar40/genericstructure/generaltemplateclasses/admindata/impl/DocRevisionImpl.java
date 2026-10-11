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
package autosar40.genericstructure.generaltemplateclasses.admindata.impl;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.admindata.Modification;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import java.util.Collection;
import javax.xml.datatype.XMLGregorianCalendar;
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
    protected static final String REVISION_LABEL_EDEFAULT = "";
    protected String revisionLabel = "";
    protected boolean revisionLabelESet;
    protected static final String REVISION_LABEL_P1_EDEFAULT = "";
    protected String revisionLabelP1 = "";
    protected boolean revisionLabelP1ESet;
    protected static final String REVISION_LABEL_P2_EDEFAULT = "";
    protected String revisionLabelP2 = "";
    protected boolean revisionLabelP2ESet;
    protected static final String STATE_EDEFAULT = "";
    protected String state = "";
    protected boolean stateESet;
    protected static final String ISSUED_BY_EDEFAULT = "";
    protected String issuedBy = "";
    protected boolean issuedByESet;
    protected static final XMLGregorianCalendar DATE_EDEFAULT = (XMLGregorianCalendar)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getDateTime(), "0001-01-01T00:00:00");
    protected XMLGregorianCalendar date = DATE_EDEFAULT;
    protected boolean dateESet;
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
    public String getRevisionLabel() {
        return this.revisionLabel;
    }

    @Override
    public void setRevisionLabel(String newRevisionLabel) {
        String oldRevisionLabel = this.revisionLabel;
        this.revisionLabel = newRevisionLabel;
        boolean oldRevisionLabelESet = this.revisionLabelESet;
        this.revisionLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRevisionLabel, (Object)this.revisionLabel, !oldRevisionLabelESet));
        }
    }

    @Override
    public void unsetRevisionLabel() {
        String oldRevisionLabel = this.revisionLabel;
        boolean oldRevisionLabelESet = this.revisionLabelESet;
        this.revisionLabel = "";
        this.revisionLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldRevisionLabel, (Object)"", oldRevisionLabelESet));
        }
    }

    @Override
    public boolean isSetRevisionLabel() {
        return this.revisionLabelESet;
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
    public String getState() {
        return this.state;
    }

    @Override
    public void setState(String newState) {
        String oldState = this.state;
        this.state = newState;
        boolean oldStateESet = this.stateESet;
        this.stateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldState, (Object)this.state, !oldStateESet));
        }
    }

    @Override
    public void unsetState() {
        String oldState = this.state;
        boolean oldStateESet = this.stateESet;
        this.state = "";
        this.stateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldState, (Object)"", oldStateESet));
        }
    }

    @Override
    public boolean isSetState() {
        return this.stateESet;
    }

    @Override
    public String getIssuedBy() {
        return this.issuedBy;
    }

    @Override
    public void setIssuedBy(String newIssuedBy) {
        String oldIssuedBy = this.issuedBy;
        this.issuedBy = newIssuedBy;
        boolean oldIssuedByESet = this.issuedByESet;
        this.issuedByESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldIssuedBy, (Object)this.issuedBy, !oldIssuedByESet));
        }
    }

    @Override
    public void unsetIssuedBy() {
        String oldIssuedBy = this.issuedBy;
        boolean oldIssuedByESet = this.issuedByESet;
        this.issuedBy = "";
        this.issuedByESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldIssuedBy, (Object)"", oldIssuedByESet));
        }
    }

    @Override
    public boolean isSetIssuedBy() {
        return this.issuedByESet;
    }

    @Override
    public XMLGregorianCalendar getDate() {
        return this.date;
    }

    @Override
    public void setDate(XMLGregorianCalendar newDate) {
        XMLGregorianCalendar oldDate = this.date;
        this.date = newDate;
        boolean oldDateESet = this.dateESet;
        this.dateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDate, (Object)this.date, !oldDateESet));
        }
    }

    @Override
    public void unsetDate() {
        XMLGregorianCalendar oldDate = this.date;
        boolean oldDateESet = this.dateESet;
        this.date = DATE_EDEFAULT;
        this.dateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldDate, (Object)DATE_EDEFAULT, oldDateESet));
        }
    }

    @Override
    public boolean isSetDate() {
        return this.dateESet;
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
                this.setRevisionLabel((String)newValue);
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
                this.setState((String)newValue);
                return;
            }
            case 9: {
                this.setIssuedBy((String)newValue);
                return;
            }
            case 10: {
                this.setDate((XMLGregorianCalendar)newValue);
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
                this.unsetRevisionLabel();
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
                this.unsetState();
                return;
            }
            case 9: {
                this.unsetIssuedBy();
                return;
            }
            case 10: {
                this.unsetDate();
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
                return this.isSetRevisionLabel();
            }
            case 6: {
                return this.isSetRevisionLabelP1();
            }
            case 7: {
                return this.isSetRevisionLabelP2();
            }
            case 8: {
                return this.isSetState();
            }
            case 9: {
                return this.isSetIssuedBy();
            }
            case 10: {
                return this.isSetDate();
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
        result.append(" (revisionLabel: ");
        if (this.revisionLabelESet) {
            result.append(this.revisionLabel);
        } else {
            result.append("<unset>");
        }
        result.append(", revisionLabelP1: ");
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
        result.append(", state: ");
        if (this.stateESet) {
            result.append(this.state);
        } else {
            result.append("<unset>");
        }
        result.append(", issuedBy: ");
        if (this.issuedByESet) {
            result.append(this.issuedBy);
        } else {
            result.append("<unset>");
        }
        result.append(", date: ");
        if (this.dateESet) {
            result.append(this.date);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

