/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NamedHandleObject
 *  org.eclipse.core.commands.common.NotDefinedException
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.viewers.LabelProvider;

public final class NamedHandleObjectLabelProvider
extends LabelProvider {
    public final String getText(Object element) {
        if (element instanceof NamedHandleObject) {
            try {
                return ((NamedHandleObject)element).getName();
            }
            catch (NotDefinedException notDefinedException) {
                return null;
            }
        }
        return null;
    }
}

