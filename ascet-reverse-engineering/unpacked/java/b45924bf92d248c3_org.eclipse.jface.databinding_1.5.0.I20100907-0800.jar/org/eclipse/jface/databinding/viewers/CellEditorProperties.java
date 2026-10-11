/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.viewers.CellEditorControlProperty;

public class CellEditorProperties {
    public static IValueProperty control() {
        return new CellEditorControlProperty();
    }
}

