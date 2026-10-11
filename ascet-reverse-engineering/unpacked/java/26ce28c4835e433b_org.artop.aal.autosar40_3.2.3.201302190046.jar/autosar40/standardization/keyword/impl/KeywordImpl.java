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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.standardization.keyword.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.standardization.keyword.Keyword;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.KeywordSet;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class KeywordImpl
extends IdentifiableImpl
implements Keyword {
    protected static final String ABBR_NAME_EDEFAULT = "";
    protected String abbrName = "";
    protected boolean abbrNameESet;
    protected EList<String> classifications;

    protected KeywordImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return KeywordPackage.Literals.KEYWORD;
    }

    @Override
    public KeywordSet getKeywordSet() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (KeywordSet)this.eContainer();
    }

    public NotificationChain basicSetKeywordSet(KeywordSet newKeywordSet, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newKeywordSet, 18, msgs);
        return msgs;
    }

    @Override
    public void setKeywordSet(KeywordSet newKeywordSet) {
        if (newKeywordSet != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newKeywordSet != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newKeywordSet)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newKeywordSet != null) {
                msgs = ((InternalEObject)newKeywordSet).eInverseAdd((InternalEObject)this, 21, KeywordSet.class, msgs);
            }
            if ((msgs = this.basicSetKeywordSet(newKeywordSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newKeywordSet, (Object)newKeywordSet));
        }
    }

    @Override
    public String getAbbrName() {
        return this.abbrName;
    }

    @Override
    public void setAbbrName(String newAbbrName) {
        String oldAbbrName = this.abbrName;
        this.abbrName = newAbbrName;
        boolean oldAbbrNameESet = this.abbrNameESet;
        this.abbrNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAbbrName, (Object)this.abbrName, !oldAbbrNameESet));
        }
    }

    @Override
    public void unsetAbbrName() {
        String oldAbbrName = this.abbrName;
        boolean oldAbbrNameESet = this.abbrNameESet;
        this.abbrName = ABBR_NAME_EDEFAULT;
        this.abbrNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldAbbrName, (Object)ABBR_NAME_EDEFAULT, oldAbbrNameESet));
        }
    }

    @Override
    public boolean isSetAbbrName() {
        return this.abbrNameESet;
    }

    @Override
    public EList<String> getClassifications() {
        if (this.classifications == null) {
            this.classifications = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 20);
        }
        return this.classifications;
    }

    @Override
    public void unsetClassifications() {
        if (this.classifications != null) {
            ((InternalEList.Unsettable)this.classifications).unset();
        }
    }

    @Override
    public boolean isSetClassifications() {
        return this.classifications != null && ((InternalEList.Unsettable)this.classifications).isSet();
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetKeywordSet((KeywordSet)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetKeywordSet(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, KeywordSet.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getKeywordSet();
            }
            case 19: {
                return this.getAbbrName();
            }
            case 20: {
                return this.getClassifications();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setKeywordSet((KeywordSet)newValue);
                return;
            }
            case 19: {
                this.setAbbrName((String)newValue);
                return;
            }
            case 20: {
                this.getClassifications().clear();
                this.getClassifications().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setKeywordSet(null);
                return;
            }
            case 19: {
                this.unsetAbbrName();
                return;
            }
            case 20: {
                this.unsetClassifications();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getKeywordSet() != null;
            }
            case 19: {
                return this.isSetAbbrName();
            }
            case 20: {
                return this.isSetClassifications();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (abbrName: ");
        if (this.abbrNameESet) {
            result.append(this.abbrName);
        } else {
            result.append("<unset>");
        }
        result.append(", classifications: ");
        result.append(this.classifications);
        result.append(')');
        return result.toString();
    }
}

