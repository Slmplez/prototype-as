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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
public class RowImpl
extends ARObjectImpl
implements Row {
    protected static final String ROWSEP_EDEFAULT = "";
    protected String rowsep = "";
    protected boolean rowsepESet;
    protected static final ValignEnum VALIGN_EDEFAULT = ValignEnum.BOTTOM;
    protected ValignEnum valign = VALIGN_EDEFAULT;
    protected boolean valignESet;
    protected EList<Entry> entries;
    protected VariationPoint variationPoint;

    protected RowImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.ROW;
    }

    @Override
    public Tbody getTbody() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Tbody)this.eContainer();
    }

    public NotificationChain basicSetTbody(Tbody newTbody, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTbody, 4, msgs);
        return msgs;
    }

    @Override
    public void setTbody(Tbody newTbody) {
        if (newTbody != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTbody != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTbody)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTbody != null) {
                msgs = ((InternalEObject)newTbody).eInverseAdd((InternalEObject)this, 5, Tbody.class, msgs);
            }
            if ((msgs = this.basicSetTbody(newTbody, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTbody, (Object)newTbody));
        }
    }

    @Override
    public String getRowsep() {
        return this.rowsep;
    }

    @Override
    public void setRowsep(String newRowsep) {
        String oldRowsep = this.rowsep;
        this.rowsep = newRowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRowsep, (Object)this.rowsep, !oldRowsepESet));
        }
    }

    @Override
    public void unsetRowsep() {
        String oldRowsep = this.rowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsep = ROWSEP_EDEFAULT;
        this.rowsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldRowsep, (Object)ROWSEP_EDEFAULT, oldRowsepESet));
        }
    }

    @Override
    public boolean isSetRowsep() {
        return this.rowsepESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValign, (Object)this.valign, !oldValignESet));
        }
    }

    @Override
    public void unsetValign() {
        ValignEnum oldValign = this.valign;
        boolean oldValignESet = this.valignESet;
        this.valign = VALIGN_EDEFAULT;
        this.valignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldValign, (Object)VALIGN_EDEFAULT, oldValignESet));
        }
    }

    @Override
    public boolean isSetValign() {
        return this.valignESet;
    }

    @Override
    public EList<Entry> getEntries() {
        if (this.entries == null) {
            this.entries = new EObjectContainmentWithInverseEList(Entry.class, (InternalEObject)this, 7, 4);
        }
        return this.entries;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTbody((Tbody)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getEntries()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTbody(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, Tbody.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTbody();
            }
            case 5: {
                return this.getRowsep();
            }
            case 6: {
                return this.getValign();
            }
            case 7: {
                return this.getEntries();
            }
            case 8: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTbody((Tbody)newValue);
                return;
            }
            case 5: {
                this.setRowsep((String)newValue);
                return;
            }
            case 6: {
                this.setValign((ValignEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.getEntries().clear();
                this.getEntries().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTbody(null);
                return;
            }
            case 5: {
                this.unsetRowsep();
                return;
            }
            case 6: {
                this.unsetValign();
                return;
            }
            case 7: {
                this.getEntries().clear();
                return;
            }
            case 8: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTbody() != null;
            }
            case 5: {
                return this.isSetRowsep();
            }
            case 6: {
                return this.isSetValign();
            }
            case 7: {
                return this.entries != null && !this.entries.isEmpty();
            }
            case 8: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (rowsep: ");
        if (this.rowsepESet) {
            result.append(this.rowsep);
        } else {
            result.append("<unset>");
        }
        result.append(", valign: ");
        if (this.valignESet) {
            result.append((Object)this.valign);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

