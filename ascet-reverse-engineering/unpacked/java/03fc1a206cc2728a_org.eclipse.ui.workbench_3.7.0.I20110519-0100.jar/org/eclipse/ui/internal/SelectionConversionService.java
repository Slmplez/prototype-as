/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.internal.ISelectionConversionService;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.util.Util;

public class SelectionConversionService
implements ISelectionConversionService {
    public IStructuredSelection convertToResources(IStructuredSelection originalSelection) {
        Class resourceClass = LegacyResourceSupport.getResourceClass();
        if (resourceClass == null) {
            return originalSelection;
        }
        ArrayList<Object> result = new ArrayList<Object>();
        Iterator elements = originalSelection.iterator();
        while (elements.hasNext()) {
            Object currentElement = elements.next();
            Object resource = Util.getAdapter(currentElement, resourceClass);
            if (resource == null) continue;
            result.add(resource);
        }
        if (result.isEmpty()) {
            return StructuredSelection.EMPTY;
        }
        return new StructuredSelection(result.toArray());
    }
}

