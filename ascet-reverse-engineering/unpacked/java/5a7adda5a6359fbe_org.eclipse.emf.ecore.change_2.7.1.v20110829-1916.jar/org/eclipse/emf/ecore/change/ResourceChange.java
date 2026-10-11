/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.ecore.change;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResourceChange
extends EObject {
    public String getResourceURI();

    public void setResourceURI(String var1);

    public Resource getResource();

    public void setResource(Resource var1);

    public EList<?> getValue();

    public EList<ListChange> getListChanges();

    public void apply();

    public void applyAndReverse();

    public void reverse();
}

