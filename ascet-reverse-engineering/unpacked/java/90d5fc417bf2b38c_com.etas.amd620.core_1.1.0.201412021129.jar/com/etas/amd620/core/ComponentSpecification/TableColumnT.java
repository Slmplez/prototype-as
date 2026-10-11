/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ColumnHeadingType;
import com.etas.amd620.core.ComponentSpecification.TableCellType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface TableColumnT
extends EObject {
    public ColumnHeadingType getColumnHeading();

    public void setColumnHeading(ColumnHeadingType var1);

    public EList<TableCellType> getTableCell();
}

