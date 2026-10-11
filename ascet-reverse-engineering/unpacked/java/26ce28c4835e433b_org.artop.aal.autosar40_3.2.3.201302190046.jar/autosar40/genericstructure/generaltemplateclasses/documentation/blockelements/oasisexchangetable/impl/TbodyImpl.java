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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
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
public class TbodyImpl
extends ARObjectImpl
implements Tbody {
    protected static final ValignEnum VALIGN_EDEFAULT = ValignEnum.BOTTOM;
    protected ValignEnum valign = VALIGN_EDEFAULT;
    protected boolean valignESet;
    protected EList<Row> rows;

    protected TbodyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.TBODY;
    }

    @Override
    public ValignEnum getValign() {
        return this.valign;
    }

    @Override
    public void setValign(ValignEnum newValign) {
        ValignEnum oldValign = this.valign;
        this.valign = newValign == null ? VALIGN_EDEFAULT : newValign;
        boolean oldValignESet = this.valignESet;
        this.valignESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldValign, (Object)this.valign, !oldValignESet));
        }
    }

    @Override
    public void unsetValign() {
        ValignEnum oldValign = this.valign;
        boolean oldValignESet = this.valignESet;
        this.valign = VALIGN_EDEFAULT;
        this.valignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldValign, (Object)VALIGN_EDEFAULT, oldValignESet));
        }
    }

    @Override
    public boolean isSetValign() {
        return this.valignESet;
    }

    @Override
    public EList<Row> getRows() {
        if (this.rows == null) {
            this.rows = new EObjectContainmentWithInverseEList(Row.class, (InternalEObject)this, 5, 4);
        }
        return this.rows;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getRows()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getRows()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getValign();
            }
            case 5: {
                return this.getRows();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setValign((ValignEnum)((Object)newValue));
                return;
            }
            case 5: {
                this.getRows().clear();
                this.getRows().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetValign();
                return;
            }
            case 5: {
                this.getRows().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetValign();
            }
            case 5: {
                return this.rows != null && !this.rows.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (valign: ");
        if (this.valignESet) {
            result.append((Object)this.valign);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

