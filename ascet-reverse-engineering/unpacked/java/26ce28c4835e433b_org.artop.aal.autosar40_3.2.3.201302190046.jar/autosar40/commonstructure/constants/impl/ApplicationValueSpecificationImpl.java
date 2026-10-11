/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.constants.impl;

import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.impl.ValueSpecificationImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationValueSpecificationImpl
extends ValueSpecificationImpl
implements ApplicationValueSpecification {
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected EList<SwAxisCont> swAxisConts;
    protected SwValueCont swValueCont;

    protected ApplicationValueSpecificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.APPLICATION_VALUE_SPECIFICATION;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    @Override
    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = CATEGORY_EDEFAULT;
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCategory, (Object)CATEGORY_EDEFAULT, oldCategoryESet));
        }
    }

    @Override
    public boolean isSetCategory() {
        return this.categoryESet;
    }

    @Override
    public EList<SwAxisCont> getSwAxisConts() {
        if (this.swAxisConts == null) {
            this.swAxisConts = new EObjectContainmentWithInverseEList(SwAxisCont.class, (InternalEObject)this, 7, 4);
        }
        return this.swAxisConts;
    }

    @Override
    public SwValueCont getSwValueCont() {
        return this.swValueCont;
    }

    public NotificationChain basicSetSwValueCont(SwValueCont newSwValueCont, NotificationChain msgs) {
        SwValueCont oldSwValueCont = this.swValueCont;
        this.swValueCont = newSwValueCont;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwValueCont, (Object)newSwValueCont);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwValueCont(SwValueCont newSwValueCont) {
        if (newSwValueCont != this.swValueCont) {
            NotificationChain msgs = null;
            if (this.swValueCont != null) {
                msgs = ((InternalEObject)this.swValueCont).eInverseRemove((InternalEObject)this, 4, SwValueCont.class, msgs);
            }
            if (newSwValueCont != null) {
                msgs = ((InternalEObject)newSwValueCont).eInverseAdd((InternalEObject)this, 4, SwValueCont.class, msgs);
            }
            if ((msgs = this.basicSetSwValueCont(newSwValueCont, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSwValueCont, (Object)newSwValueCont));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getSwAxisConts()).basicAdd((Object)otherEnd, msgs);
            }
            case 8: {
                if (this.swValueCont != null) {
                    msgs = ((InternalEObject)this.swValueCont).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetSwValueCont((SwValueCont)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getSwAxisConts()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return this.basicSetSwValueCont(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getCategory();
            }
            case 7: {
                return this.getSwAxisConts();
            }
            case 8: {
                return this.getSwValueCont();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setCategory((String)newValue);
                return;
            }
            case 7: {
                this.getSwAxisConts().clear();
                this.getSwAxisConts().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setSwValueCont((SwValueCont)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetCategory();
                return;
            }
            case 7: {
                this.getSwAxisConts().clear();
                return;
            }
            case 8: {
                this.setSwValueCont(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetCategory();
            }
            case 7: {
                return this.swAxisConts != null && !this.swAxisConts.isEmpty();
            }
            case 8: {
                return this.swValueCont != null;
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
        result.append(" (category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

