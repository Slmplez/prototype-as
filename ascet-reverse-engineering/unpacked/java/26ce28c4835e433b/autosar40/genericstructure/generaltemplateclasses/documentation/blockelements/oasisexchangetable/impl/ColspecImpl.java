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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ColspecImpl
extends ARObjectImpl
implements Colspec {
    protected static final AlignEnum ALIGN_EDEFAULT = AlignEnum.CENTER;
    protected AlignEnum align = ALIGN_EDEFAULT;
    protected boolean alignESet;
    protected static final String COLNAME_EDEFAULT = "";
    protected String colname = "";
    protected boolean colnameESet;
    protected static final String COLNUM_EDEFAULT = "";
    protected String colnum = "";
    protected boolean colnumESet;
    protected static final String COLSEP_EDEFAULT = "";
    protected String colsep = "";
    protected boolean colsepESet;
    protected static final String COLWIDTH_EDEFAULT = "";
    protected String colwidth = "";
    protected boolean colwidthESet;
    protected static final String ROWSEP_EDEFAULT = "";
    protected String rowsep = "";
    protected boolean rowsepESet;

    protected ColspecImpl() {
    }

    protected EClass eStaticClass() {
        return OasisexchangetablePackage.Literals.COLSPEC;
    }

    public Tgroup getTgroup() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Tgroup)this.eContainer();
    }

    public NotificationChain basicSetTgroup(Tgroup newTgroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTgroup, 4, msgs);
        return msgs;
    }

    public void setTgroup(Tgroup newTgroup) {
        if (newTgroup != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTgroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTgroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTgroup != null) {
                msgs = ((InternalEObject)newTgroup).eInverseAdd((InternalEObject)this, 9, Tgroup.class, msgs);
            }
            if ((msgs = this.basicSetTgroup(newTgroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTgroup, (Object)newTgroup));
        }
    }

    public AlignEnum getAlign() {
        return this.align;
    }

    public void setAlign(AlignEnum newAlign) {
        AlignEnum oldAlign = this.align;
        this.align = newAlign == null ? ALIGN_EDEFAULT : newAlign;
        boolean oldAlignESet = this.alignESet;
        this.alignESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAlign, (Object)this.align, !oldAlignESet));
        }
    }

    public void unsetAlign() {
        AlignEnum oldAlign = this.align;
        boolean oldAlignESet = this.alignESet;
        this.align = ALIGN_EDEFAULT;
        this.alignESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAlign, (Object)ALIGN_EDEFAULT, oldAlignESet));
        }
    }

    public boolean isSetAlign() {
        return this.alignESet;
    }

    public String getColname() {
        return this.colname;
    }

    public void setColname(String newColname) {
        String oldColname = this.colname;
        this.colname = newColname;
        boolean oldColnameESet = this.colnameESet;
        this.colnameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldColname, (Object)this.colname, !oldColnameESet));
        }
    }

    public void unsetColname() {
        String oldColname = this.colname;
        boolean oldColnameESet = this.colnameESet;
        this.colname = "";
        this.colnameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldColname, (Object)"", oldColnameESet));
        }
    }

    public boolean isSetColname() {
        return this.colnameESet;
    }

    public String getColnum() {
        return this.colnum;
    }

    public void setColnum(String newColnum) {
        String oldColnum = this.colnum;
        this.colnum = newColnum;
        boolean oldColnumESet = this.colnumESet;
        this.colnumESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldColnum, (Object)this.colnum, !oldColnumESet));
        }
    }

    public void unsetColnum() {
        String oldColnum = this.colnum;
        boolean oldColnumESet = this.colnumESet;
        this.colnum = "";
        this.colnumESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldColnum, (Object)"", oldColnumESet));
        }
    }

    public boolean isSetColnum() {
        return this.colnumESet;
    }

    public String getColsep() {
        return this.colsep;
    }

    public void setColsep(String newColsep) {
        String oldColsep = this.colsep;
        this.colsep = newColsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldColsep, (Object)this.colsep, !oldColsepESet));
        }
    }

    public void unsetColsep() {
        String oldColsep = this.colsep;
        boolean oldColsepESet = this.colsepESet;
        this.colsep = "";
        this.colsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldColsep, (Object)"", oldColsepESet));
        }
    }

    public boolean isSetColsep() {
        return this.colsepESet;
    }

    public String getColwidth() {
        return this.colwidth;
    }

    public void setColwidth(String newColwidth) {
        String oldColwidth = this.colwidth;
        this.colwidth = newColwidth;
        boolean oldColwidthESet = this.colwidthESet;
        this.colwidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldColwidth, (Object)this.colwidth, !oldColwidthESet));
        }
    }

    public void unsetColwidth() {
        String oldColwidth = this.colwidth;
        boolean oldColwidthESet = this.colwidthESet;
        this.colwidth = "";
        this.colwidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldColwidth, (Object)"", oldColwidthESet));
        }
    }

    public boolean isSetColwidth() {
        return this.colwidthESet;
    }

    public String getRowsep() {
        return this.rowsep;
    }

    public void setRowsep(String newRowsep) {
        String oldRowsep = this.rowsep;
        this.rowsep = newRowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsepESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldRowsep, (Object)this.rowsep, !oldRowsepESet));
        }
    }

    public void unsetRowsep() {
        String oldRowsep = this.rowsep;
        boolean oldRowsepESet = this.rowsepESet;
        this.rowsep = "";
        this.rowsepESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldRowsep, (Object)"", oldRowsepESet));
        }
    }

    public boolean isSetRowsep() {
        return this.rowsepESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTgroup((Tgroup)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTgroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, Tgroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTgroup();
            }
            case 5: {
                return this.getAlign();
            }
            case 6: {
                return this.getColname();
            }
            case 7: {
                return this.getColnum();
            }
            case 8: {
                return this.getColsep();
            }
            case 9: {
                return this.getColwidth();
            }
            case 10: {
                return this.getRowsep();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTgroup((Tgroup)newValue);
                return;
            }
            case 5: {
                this.setAlign((AlignEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setColname((String)newValue);
                return;
            }
            case 7: {
                this.setColnum((String)newValue);
                return;
            }
            case 8: {
                this.setColsep((String)newValue);
                return;
            }
            case 9: {
                this.setColwidth((String)newValue);
                return;
            }
            case 10: {
                this.setRowsep((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTgroup(null);
                return;
            }
            case 5: {
                this.unsetAlign();
                return;
            }
            case 6: {
                this.unsetColname();
                return;
            }
            case 7: {
                this.unsetColnum();
                return;
            }
            case 8: {
                this.unsetColsep();
                return;
            }
            case 9: {
                this.unsetColwidth();
                return;
            }
            case 10: {
                this.unsetRowsep();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTgroup() != null;
            }
            case 5: {
                return this.isSetAlign();
            }
            case 6: {
                return this.isSetColname();
            }
            case 7: {
                return this.isSetColnum();
            }
            case 8: {
                return this.isSetColsep();
            }
            case 9: {
                return this.isSetColwidth();
            }
            case 10: {
                return this.isSetRowsep();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (align: ");
        if (this.alignESet) {
            result.append((Object)this.align);
        } else {
            result.append("<unset>");
        }
        result.append(", colname: ");
        if (this.colnameESet) {
            result.append(this.colname);
        } else {
            result.append("<unset>");
        }
        result.append(", colnum: ");
        if (this.colnumESet) {
            result.append(this.colnum);
        } else {
            result.append("<unset>");
        }
        result.append(", colsep: ");
        if (this.colsepESet) {
            result.append(this.colsep);
        } else {
            result.append("<unset>");
        }
        result.append(", colwidth: ");
        if (this.colwidthESet) {
            result.append(this.colwidth);
        } else {
            result.append("<unset>");
        }
        result.append(", rowsep: ");
        if (this.rowsepESet) {
            result.append(this.rowsep);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

