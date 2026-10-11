/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.EvaluatedVariantSet;
import autosar40.genericstructure.varianthandling.PredefinedVariant;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EvaluatedVariantSetImpl
extends ARElementImpl
implements EvaluatedVariantSet,
IReferringClass {
    protected static final String APPROVAL_STATUS_EDEFAULT = "";
    protected String approvalStatus = "";
    protected boolean approvalStatusESet;
    protected EList<CollectableElement> evaluatedElements;
    protected EList<PredefinedVariant> evaluatedVariants;

    protected EvaluatedVariantSetImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.EVALUATED_VARIANT_SET;
    }

    @Override
    public String getApprovalStatus() {
        return this.approvalStatus;
    }

    @Override
    public void setApprovalStatus(String newApprovalStatus) {
        String oldApprovalStatus = this.approvalStatus;
        this.approvalStatus = newApprovalStatus;
        boolean oldApprovalStatusESet = this.approvalStatusESet;
        this.approvalStatusESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldApprovalStatus, (Object)this.approvalStatus, !oldApprovalStatusESet));
        }
    }

    @Override
    public void unsetApprovalStatus() {
        String oldApprovalStatus = this.approvalStatus;
        boolean oldApprovalStatusESet = this.approvalStatusESet;
        this.approvalStatus = APPROVAL_STATUS_EDEFAULT;
        this.approvalStatusESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldApprovalStatus, (Object)APPROVAL_STATUS_EDEFAULT, oldApprovalStatusESet));
        }
    }

    @Override
    public boolean isSetApprovalStatus() {
        return this.approvalStatusESet;
    }

    @Override
    public EList<CollectableElement> getEvaluatedElements() {
        if (this.evaluatedElements == null) {
            this.evaluatedElements = new EObjectResolvingReferringEList(CollectableElement.class, (InternalEObject)this, 22);
        }
        return this.evaluatedElements;
    }

    @Override
    public EList<PredefinedVariant> getEvaluatedVariants() {
        if (this.evaluatedVariants == null) {
            this.evaluatedVariants = new EObjectResolvingReferringEList(PredefinedVariant.class, (InternalEObject)this, 23);
        }
        return this.evaluatedVariants;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getApprovalStatus();
            }
            case 22: {
                return this.getEvaluatedElements();
            }
            case 23: {
                return this.getEvaluatedVariants();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setApprovalStatus((String)newValue);
                return;
            }
            case 22: {
                this.getEvaluatedElements().clear();
                this.getEvaluatedElements().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getEvaluatedVariants().clear();
                this.getEvaluatedVariants().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetApprovalStatus();
                return;
            }
            case 22: {
                this.getEvaluatedElements().clear();
                return;
            }
            case 23: {
                this.getEvaluatedVariants().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetApprovalStatus();
            }
            case 22: {
                return this.evaluatedElements != null && !this.evaluatedElements.isEmpty();
            }
            case 23: {
                return this.evaluatedVariants != null && !this.evaluatedVariants.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (approvalStatus: ");
        if (this.approvalStatusESet) {
            result.append(this.approvalStatus);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

