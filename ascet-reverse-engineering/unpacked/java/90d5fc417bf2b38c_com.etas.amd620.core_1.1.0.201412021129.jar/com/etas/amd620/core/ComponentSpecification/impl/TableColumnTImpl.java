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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ColumnHeadingType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.TableCellType;
import com.etas.amd620.core.ComponentSpecification.TableColumnT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class TableColumnTImpl
extends MinimalEObjectImpl.Container
implements TableColumnT {
    protected ColumnHeadingType columnHeading;
    protected EList<TableCellType> tableCell;

    protected TableColumnTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTableColumnT();
    }

    @Override
    public ColumnHeadingType getColumnHeading() {
        return this.columnHeading;
    }

    public NotificationChain basicSetColumnHeading(ColumnHeadingType newColumnHeading, NotificationChain msgs) {
        ColumnHeadingType oldColumnHeading = this.columnHeading;
        this.columnHeading = newColumnHeading;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldColumnHeading, (Object)newColumnHeading);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setColumnHeading(ColumnHeadingType newColumnHeading) {
        if (newColumnHeading != this.columnHeading) {
            NotificationChain msgs = null;
            if (this.columnHeading != null) {
                msgs = ((InternalEObject)this.columnHeading).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newColumnHeading != null) {
                msgs = ((InternalEObject)newColumnHeading).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetColumnHeading(newColumnHeading, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newColumnHeading, (Object)newColumnHeading));
        }
    }

    @Override
    public EList<TableCellType> getTableCell() {
        if (this.tableCell == null) {
            this.tableCell = new EObjectContainmentEList(TableCellType.class, (InternalEObject)this, 1);
        }
        return this.tableCell;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetColumnHeading(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getTableCell()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getColumnHeading();
            }
            case 1: {
                return this.getTableCell();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setColumnHeading((ColumnHeadingType)newValue);
                return;
            }
            case 1: {
                this.getTableCell().clear();
                this.getTableCell().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setColumnHeading(null);
                return;
            }
            case 1: {
                this.getTableCell().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.columnHeading != null;
            }
            case 1: {
                return this.tableCell != null && !this.tableCell.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

